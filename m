Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0895F1D555
	for <ddprobe@lists.linux.dev>; Sat,  3 Jan 2026 01:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767405234; cv=none; b=QR8pTa4kVdaPlEeclr0wtpXiFmEGfD2yN4e40ddNZZp50cqgTSAJpAuMr8y4OfMFDIfSIKebrH7sYaznbxlAKj52KvsElsTq+QsAa8k2biREZiX8gZ4czXhqd73AJ0ry9XsLyB84xSa4coD7autW409SX4lbFjhUZN4W8LpgFHA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767405234; c=relaxed/simple;
	bh=m5fAGYVzSOjxRY22ApIM+x5j3yoRz0BzzAUq87CUZ5o=;
	h=To:Subject:From:Message-Id:Date; b=tJErcQP+yERu+YSgcHG2NxWbbdJfd379TF2XBSFeQCCLR6p5npgZhNkM/3/Q5537ls1oesXDRixCDcBsutttKZw1CBq+QGrAyuotOwF31pOwUxanGM3fLkhirTssGZm4sAbv4KUC3In3ISZBzsgVfYL/mPbjN6t3UUvymANf0Z8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=N6VBkGFY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="N6VBkGFY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6088C116B1
	for <ddprobe@lists.linux.dev>; Sat,  3 Jan 2026 01:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767405233;
	bh=m5fAGYVzSOjxRY22ApIM+x5j3yoRz0BzzAUq87CUZ5o=;
	h=To:Subject:From:Date:From;
	b=N6VBkGFYLUCzfZXbFO82NwmJKLTHPzRl+4cnzJqdmspmyMKPfHfJJTkWRkcri1GwO
	 XZnBfHivgiOC/qksuv2FKf5Zpo72uYyMbsMkR9qollg6n56zOwhEIXqzm+Ex+FDHz1
	 X+qMcz3Bu/0lbR5GgFcjtx93KLFc199fP+Cek3GnHjCHHBFPrPgS7LNymsXyve3ygY
	 qiSahpLYMxOu0E72HbFcyDqwrlyfClV2twrc9Qo0v3I9RmzYKEEKz31NSMsClXW1Fo
	 IcvKmKePUssbJrQQvaw1hgwQmO3BqvucPKWANv7v/W1qtdx5HIBurABAUArzBg4Zoi
	 eghTCgQhEJehg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9390DFA3727
	for <ddprobe@lists.linux.dev>; Sat,  3 Jan 2026 01:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176740523358.7029.12854151814073409037.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: de56358ab1cea1f342c67d0b11280407ac297e30f595108cd4db77b833f6415e
Date: Sat, 03 Jan 2026 01:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767405233
