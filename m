Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3EDFE1DB122
	for <ddprobe@lists.linux.dev>; Sat, 25 Jan 2025 07:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737788754; cv=none; b=gsNxrwuYE8Z9coVMUalEHPb64rFFfdFhl0xS2RSmpo70PrgkWO8BZMHoRpVlxCaBm/ep4UNZGms7x9f0muSUuA/ZG9o3k0c+vAWeLAf9Ugg/3/XpwKMwj/O4qnsGN6PhYE51Mf1tSz4USXeTGLxsOdUb1ARxBgIBjVw4Q/rI1G0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737788754; c=relaxed/simple;
	bh=NbGVUBOxFr9HuYsOpGufL4QdFDobEtCfvVrAm5sAoqY=;
	h=To:Subject:From:Message-Id:Date; b=idLZipLGTPX3fmQiQWyYWt1lPxgEVV6l0jAC34eHXkMX/CFj6q9Tl/1KNoYVEwnYPpRE/KyrT+2/EZn6yVyCoTszUtAzou0J1ok36cZWZl8F5NnpvaFI3QE4fboRvqdJwdMV+3Nx2gksY4TK7w65cGxvln1FATvYiuH2PF7BkuE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ujfk4Kl7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ujfk4Kl7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6260C4CED6
	for <ddprobe@lists.linux.dev>; Sat, 25 Jan 2025 07:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737788753;
	bh=NbGVUBOxFr9HuYsOpGufL4QdFDobEtCfvVrAm5sAoqY=;
	h=To:Subject:From:Date:From;
	b=Ujfk4Kl7eTjaq76cgdJ3XoAd2RIOSqKDioy1JnzE0HvZndGuWDD8ehXajrNMxXfll
	 F5NqJDfcqWqpxAEXCnBn1r6OQJAPRIscDNfAH1O38gPu05sL1/B1zf6Q4OcHv4sdRE
	 OCUfM6tV0cUkwp+4InDT1qq8JLAW9IPv2mL5KCdsZEGPUWeVs0yfU8d3tMAAXm/LLa
	 FsaDqVRfneoyPiRFgSVdNguKQeD/F/I21+xJ1mXPAIFHFChOZk1ym8i0K464cZGt1o
	 xjF6X4FX7lT4MeYWIml790LXDtFSSDrgiwFjTFraS9Mnvkgd1V3zXT2iTCLIXxr/o/
	 5zTyWT4eBmZvw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 966E5C02182
	for <ddprobe@lists.linux.dev>; Sat, 25 Jan 2025 07:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173778875358.2937.16772981040336723167.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 268c85d03f76512233f51c39cae2726f24af64a35f5bb3c8f113e7450692bf51
Date: Sat, 25 Jan 2025 07:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737788753
