Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 310E727C86B
	for <ddprobe@lists.linux.dev>; Tue, 27 May 2025 15:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748361595; cv=none; b=I7eiG93DXvanoUc+uYiZ9AzYPoV8hTMMS5O8Yyo0gMxurRnj+OPvTRAoUQeyqkOwV1cjoD5x2BIfMJmd4+RcAWN79jugOuOqEURenDKJYsfjuIrmzabuT1gVQ+lN2ZW4KufrhfgoooVe3N09cUn19Lp8Xd7r17jXhqIaBOzyTPI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748361595; c=relaxed/simple;
	bh=Ci+SU8KJTymXn5B+/923b8Zyt5AVmAdJGftCusXgnVM=;
	h=To:Subject:From:Message-Id:Date; b=DcGGkxV0GBd9WSPdRRZNb9Fw6U12aU5PT+W6a2qi/Wj3Twx5QGDSGRa5mnlcXjIq7VFu6cmDLd7SmmrAChrSggr4KuG4t4L5jv14LJpU9MwDVHA0I7KKjMlmA8L8928j7QpbrLv/qk7f+DDJhQYasHQ56/+KbPKW7BHqVYdI8rA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tuQzspE3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tuQzspE3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3683C4CEE9
	for <ddprobe@lists.linux.dev>; Tue, 27 May 2025 15:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748361593;
	bh=Ci+SU8KJTymXn5B+/923b8Zyt5AVmAdJGftCusXgnVM=;
	h=To:Subject:From:Date:From;
	b=tuQzspE3MXEhLuaOO6A4jpyFCP4OTUNfNioNmDDBCuJRY9C2byMTr7TtZ+143kdTd
	 M82uLIKV7BQQKxrioXsVGHbTlj60dpX2ylS/PrAs7+sJ6XZtOVcil49y62UcHdeI9V
	 AWpoxfex1DCTUlPfNGKxF877pIlfkmnVRR/F9YfqHmj4v26nsbgDy9TILqfYoC0PU9
	 8h5uOJNiiGzr4w0hGSD7rptg9N24jws2cnhxaYSM5C1ksHeyuW+6QtIXxFAkuIuivn
	 AIhUsFO2MFcD8vS+nr/H4EoLZiTUZBrmSDCfSW0emL+3BftsXf9bdA+snUEiJHm8El
	 9nLN6iukbzIpw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F1EAC54F30
	for <ddprobe@lists.linux.dev>; Tue, 27 May 2025 15:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174836159357.11168.9514450130112994281.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 78356ff93c4f1b647c054275381fdce8fdf5928bb1137dfffef47d8c14e2ad2e
Date: Tue, 27 May 2025 15:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748361593
