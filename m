Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2049524C06A
	for <ddprobe@lists.linux.dev>; Tue, 30 Dec 2025 10:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767090834; cv=none; b=fCPODdOj+RHqRpyZ4TvXhCT4J2E00env1wxZ8F4miEufTZVDr4yjKcGwVZPmI1ipJF9taCV9qlG3FAKsS5wYNCWa/ARHQO5KAiTkjEGILp2VssPqeSRViAoVsEOOo/THwOHldsdEY6P4+mHGLtRTF+zzo2rZgOmR2KVMJFlKruc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767090834; c=relaxed/simple;
	bh=tWv/0HRTqyZ1gd3KZdxhm9R1jDJjKjZVKwO7kfXQ8jg=;
	h=To:Subject:From:Message-Id:Date; b=ohM/rywDI+AlPBjTd+QPETH44qbR4uAMV6llbzDmwojvRZDeG0NCKfvllcVhrih+zgXqu0Ck1gOTznL1nWjbyEda034fSh7fTF0yWpfRBDbXGVPc++L6SfDw0si0rHHU7+p3mWxVVx7b2c/irQRi/kDOjSr1dVvxF4eyxxtvnVc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kOLTXnvl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kOLTXnvl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E1E4C4CEFB
	for <ddprobe@lists.linux.dev>; Tue, 30 Dec 2025 10:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767090833;
	bh=tWv/0HRTqyZ1gd3KZdxhm9R1jDJjKjZVKwO7kfXQ8jg=;
	h=To:Subject:From:Date:From;
	b=kOLTXnvla8RcRd4FA3b3/5G0FLEzDT5T/WTX0un/XJDY8WzDcBJrlFmyjzZX0opxU
	 WQI/WV1ZK9+Hk/F0eDubOv8s7OEdfKw5DDZRNh/UwmAtOcB6p9s5uxbHQLVE3qkGAy
	 53S7u7cixB1nVzaQI8vuavM47CI+sb1rPuX1xuAh9sQU085M2wQoehWv9pOqQ3m3uc
	 7Ju75Tqm12zDTXo7J0Ng6Hg9Fu5GIQcfhzk7T20H176FdcwS9P5MU1yhIf6Lnif+Bl
	 dqNL2JLLuzi5oklSKJNvFkljxqNUcy8EhSlGsc8qTXAikX+QyKbINZo4rCUfrtsoVB
	 y6vSgyXq4279Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F999E95A6C
	for <ddprobe@lists.linux.dev>; Tue, 30 Dec 2025 10:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176709083357.15088.17663482648786648072.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0e99984aff2010569f3b23fdf09a6b24e869d7aa32c94e7f52c4c2bbf2c0ab98
Date: Tue, 30 Dec 2025 10:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767090833
