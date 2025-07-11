Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F57F2C3255
	for <ddprobe@lists.linux.dev>; Fri, 11 Jul 2025 12:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752238194; cv=none; b=nlLko3mzwdmDoXoZJY3hG2s+oWvnMAYlCAt5l10+m9gOxGX2cB1O95bH0dDct+O5MsgbPAF0db51G99dGF63i/D0xvcNOBpm9T335k4W+/D8CPaZUVMoprMIpGeHi2HkomthdBWvSYcNyiQeDpVP48rQifLMuaMkuPSvbskoZf4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752238194; c=relaxed/simple;
	bh=Z/cmKBK2TRg4DVGNrXC/OaRBCIh7R6ddc4dBRb/zF7g=;
	h=To:Subject:From:Message-Id:Date; b=Ri2axKgKmAvgs7eHyBxma38N9GFPAK3J3hqtweczl1eH/TYWpJJxqUKlVfg1wVtLewtOl6huOSw0cO1zFTp9fYxZ6rNo3wH7Q+HfJrioziNE1Kl2G3s9yqY+Pbcc8824r4HyIVxG9lzSOMui3ZMkYIeZyK8tn9szbKejLo6q+Nw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uACgB/Rn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uACgB/Rn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 997BEC4CEED
	for <ddprobe@lists.linux.dev>; Fri, 11 Jul 2025 12:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752238193;
	bh=Z/cmKBK2TRg4DVGNrXC/OaRBCIh7R6ddc4dBRb/zF7g=;
	h=To:Subject:From:Date:From;
	b=uACgB/RnuAMagQyWReAkkwpe+4Oz286BaXU4kwVUh3TQOgPMiBDOsyFbPIntQ8CdZ
	 CjHxvOrOj4X9S71iH+w0KDjVtmwIkvsZ1ptrQtV1/4O1u8IDrp7nztFUjrzR2xB3aY
	 WWnQPj7z4DYL9t2mEZKJRM00HhNUWNkgpcBPEwlebaqthTkrK4h4LHroVOVKWxFvT6
	 0jflBSWlUM2WBXNUmatW+X38kWBpWl4b/xUTZ2bs13v8Ru0X0E3Zw7/YqCGrivl/LO
	 4xXzjvDuDqwADiG4q6DH5K8WAzfKVvzv57xERgVixU/fHs+rWSN9EYqbjFMcp4bISF
	 DlzTVC8lpGljA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FD37C83F1A
	for <ddprobe@lists.linux.dev>; Fri, 11 Jul 2025 12:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175223819357.1550.3683953314359088821.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a68abde6ffa2a4c54ac787fa17eda79b5e0e5190ccff5d535fc686766210cdd3
Date: Fri, 11 Jul 2025 12:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752238193
