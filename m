Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47FD113BC02
	for <ddprobe@lists.linux.dev>; Sat, 10 May 2025 20:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746908994; cv=none; b=Oy0rUsyEkNIxI1deYbxRoVcmL1Si3DCgXMGb41Tr0buBH7BVQ5djGvGmk0TTpJxZjL0XkJt4VW+ar427rlZSzghiBi0NFvpJnPBvmEU/Z3yn6vBBp/zoXGo4htacZSH8UiMV+n3SkuDnlZHNzSqALLCW6iIECecolLLxe1wLpIo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746908994; c=relaxed/simple;
	bh=XaZPEZB8aIibsmUIlb2je8jq5H/oziwU3xxWhQCfmWw=;
	h=To:Subject:From:Message-Id:Date; b=mlV2QXe6+fe6QRJs9Bu+Z3oGJ1FvtP4L97qjVWsL9GX0OVEQhVFTofkI5uoqVzzfJRFkTOazYh2EPK9B47Ale1U54IayYUPn6eIi8LshKghV9y7Zy6vFdpIsObDK2B9LoeIrr9oJ1OuHhhRu19OZ9F9suhsdSIvmRkqhim8oG4Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RCsuXPc/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RCsuXPc/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE584C4CEE2
	for <ddprobe@lists.linux.dev>; Sat, 10 May 2025 20:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746908993;
	bh=XaZPEZB8aIibsmUIlb2je8jq5H/oziwU3xxWhQCfmWw=;
	h=To:Subject:From:Date:From;
	b=RCsuXPc/PrhRyjkrQO15eRTjM4G/kvKEukM+5uUKKmaT+VNtEnYIHr6K+SEtDgLjG
	 sSp+1s4NkYUnYW9Smr1xQsZ1beWiJpfB6dhKKcsZbvkT4ay7l/1B76RZrZT4z8iEn+
	 kT+YWYNozMoZVw87nY+wfCHMFb7vt/1GSq8vGugihVwIH8USiZkrh4Kxi0dlJJiWSq
	 zNCJc1vPoDLYQsAV/f/IB/soDq5xZHEY/KFw74++EBiIJaajQmeWyr1DXw/8lELhPy
	 9ip4t+p1PdtiUoMyVrJTsa+3L8E0xZZNK99/EwdZs1Bw+T7dYaBVZXR/2G39x+qZfq
	 L7C2T3PRorR8w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92F42C3ABC9
	for <ddprobe@lists.linux.dev>; Sat, 10 May 2025 20:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174690899358.9312.15228217753971008002.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 91f19ba4cc50a21ce83cd40ddefcaa398e06d9e2770b976c04f5737ca06948b2
Date: Sat, 10 May 2025 20:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746908993
