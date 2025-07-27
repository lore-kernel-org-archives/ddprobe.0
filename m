Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 045261FDE22
	for <ddprobe@lists.linux.dev>; Sun, 27 Jul 2025 10:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753613994; cv=none; b=YV1BDaAZqPa2MXXKOgTHi8G7LaA8KJcKMBLCF76YS97SmYN+v9FQCVTTJNqTmE/iiHkEbvkyyrMkSdc5CSuVIHABvguB8iBm0cDc2ftCHkIvkHFW71dTkwkGitv6AjAuM87UAf+4S6A8xZP3Am8YG2id02z3SqtbXlAujuJYB2Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753613994; c=relaxed/simple;
	bh=o9zkQQT+BP4L7V65fbusY1UtY55MpS4iSPksLZUNAQM=;
	h=To:Subject:From:Message-Id:Date; b=pbjIVSlDHYBRYij+WDRhj2c8oicyjYp09hP3+cBg4aPT99at6HWqxASMUlu90ib1IRYrLiOZ1uAPwNP3nhAuEKSNV1+fjZ9dO0J8EM2mjQ3AxA6klHebZv+PSECGxAPlZrUhYqxYe7JiVg0y7yi3lHtGoZZdfjfNjCIX1iCNEpg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OcUntMNS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OcUntMNS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9C435C4CEF4
	for <ddprobe@lists.linux.dev>; Sun, 27 Jul 2025 10:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753613993;
	bh=o9zkQQT+BP4L7V65fbusY1UtY55MpS4iSPksLZUNAQM=;
	h=To:Subject:From:Date:From;
	b=OcUntMNSuj3yp/G+TkHMzFlOcorLyngaKvHMI5Ji09h95zxayqDB4EjxTzt5G+xo8
	 E3Hz3RVYIX5oRpSUXiNvgBRh/tLr73n8DsRwzjBGOcv1u22v5TebO8rWdIv+uH8n0w
	 P/UdPGVE+1TBBydBnQSaSxIILc/b/Pvrn2TYBaf1UDc6ZPx8nGkQBbiUTf1BhPX/iD
	 YwqdyrsK+bCbgd2KZG38FwfQCOCcrpoMDkbdFpTXS2ug6gYJl6hiDXWE7CLNooTYfr
	 sZn/5BCDz7EMc9w/tEkEURepa7PPLWHJjN3D+2F6VJ4UzX2cbBY7BZ70XRr+qG7CgZ
	 gddKVmQ/cfa7A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E625C87FCC
	for <ddprobe@lists.linux.dev>; Sun, 27 Jul 2025 10:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175361399357.799.10618810288345437538.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: be6c6cf981558b920af4b862814d87bc253263888e24c54a8cfe247d3cce6ec3
Date: Sun, 27 Jul 2025 10:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753613993
