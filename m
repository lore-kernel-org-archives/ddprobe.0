Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F40AC2FB
	for <ddprobe@lists.linux.dev>; Mon,  1 Sep 2025 01:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756690795; cv=none; b=V2GhVgOJBuD9muHxQKJUz+VBGVXoF78Fsq/y/GVhFU/ga0q80Zz43r9MkYXKZ+l2A0LoTzc7U2Q6Dgwf6tlu5Pg4+4UAaPnFSeo/PYbFKlLtddhum8SJOIv/4tpVOYjrS7u74/F0KOV3vt82yLCqumAUcM8/C5/RZJit8LrJSzc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756690795; c=relaxed/simple;
	bh=Lbgrfjgg1Mvkenb9Z39bGCIimCs9xeae8YJmpi4V9jI=;
	h=To:Subject:From:Message-Id:Date; b=NXLPcfPhaoMurzYXBNuRtrYo0Ainacw7FQeQUJraaxm0YGpgJPgglR18yBJSgsWYbH2RMVN5KAxPmrqBjSuBl5rIeRTw8UgV1Ldz+7uz+YdPxzmadH+VCp2ma9xy5LFtuKD5W/2N6h3guAxF2V0X1t+UP5jLcLEtRgJu5pIsYFI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QOS7icTp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QOS7icTp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A16E6C4CEED
	for <ddprobe@lists.linux.dev>; Mon,  1 Sep 2025 01:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756690793;
	bh=Lbgrfjgg1Mvkenb9Z39bGCIimCs9xeae8YJmpi4V9jI=;
	h=To:Subject:From:Date:From;
	b=QOS7icTpuE/Tlf6JygKiMsul6365nwwPVzfABnBA1uXEEFNdBmZrxCpS1ha/fmrkb
	 aEmSjtQYUXQc7Cecrb0h1fXDY1nkheXbWsOYI6pfSthk1tf95dyNqcgaTG6C+QvJOs
	 zvElorJgpYDAl71N877HXlvruv9T8JrjxtEqVgabRRO4TyauHR3WIqQ/afdEJBud8/
	 CdPIlTNvH52jZF7aDmhB0AXpUdcvJlga88MuoeG0LGaCLSo34D67lOnm37G7od56mR
	 7xx2CYpJYHz88yEZ1A0gvD+Nv5oXEknwn7lGmvjZt3M8/odFb8As2Hv6VKI8he6iYq
	 wgMPgBsQ6ic3w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90A46CA0FE8
	for <ddprobe@lists.linux.dev>; Mon,  1 Sep 2025 01:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175669079357.12676.2395705595519794993.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b7923e56acdffea010a6e845589ddfd878b518de02fb4dd6cfcee37114bd7682
Date: Mon, 01 Sep 2025 01:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756690793
