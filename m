Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8836617F360
	for <ddprobe@lists.linux.dev>; Wed, 12 Jun 2024 14:18:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718201903; cv=none; b=bRz7dkwQzOgChloSIEaG/npJblFeqljkLGBpI67TRcUY2Wf3/fk5ML34NyJZA0KnNa8Bc+8lOnNFKXZK2EPfHviIaR4Jy72hr+Vl/GApPmiFktwwaIZwteXZndgtRsp+iYVwjNamKah489YR7AqVcYSXPG98G0u/xSD7Nd24bQ8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718201903; c=relaxed/simple;
	bh=ujvPApFeWQoBShMraQl7ksd3hrQVJLtLgLp0Qr2HI3c=;
	h=To:Subject:From:Message-Id:Date; b=lmKC/C7ipcctyDmJYJTNQTavG7huCmSh8bAb81s9PFTbMHG2CN4RYUlcaRF2ykRWwncZamoH2XU6Z11dERNuD9j+aFk1RZ3nXWbVkaphiR10pULXZpf2MZCoYC7IrLhj/Y6qFKJTAHQqGMS2weFiazu8CJ8qG7nM5ahqO+tESFg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=o64hBQ0c; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="o64hBQ0c"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 0EB2BC4AF1A
	for <ddprobe@lists.linux.dev>; Wed, 12 Jun 2024 14:18:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718201903;
	bh=ujvPApFeWQoBShMraQl7ksd3hrQVJLtLgLp0Qr2HI3c=;
	h=To:Subject:From:Date:From;
	b=o64hBQ0cIIvtT27rmp8fCl1kX1SecHOVFXY2PXAxFEKOvgEso6/cTddiXJMMjs2SS
	 K6Y22zs+19ri2TgBSX4PLn4mfyLJNUDe9+Rl9Eiy56jTBDfBb8xRzwS1Csd+ANsP8w
	 nG0ppfXa1u4+vB7JUFo2/yKBeebljXqd0JaU0y5drawQQmkdXcNzS7RPYuTDyM8a7y
	 B+gcAMY+EBb16774socawAySdTn/zRXPeJry6UrTCqe7lHbv4CBIwkv7UyiGjMAFqV
	 jzu063g3qt55qN/SSAoDnJ72weIM4Rgq4X4QaiyKcPr/4qvtIaTznhhsPkt9EgBxGw
	 aLeYd/N9H5WHA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E6273C27C53
	for <ddprobe@lists.linux.dev>; Wed, 12 Jun 2024 14:18:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171820190292.21697.4174929978017061110.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7cf7fe27ed2404c4d18e79efbb34dfd89d6a45584eff1bc5c8c03eea3b695e19
Date: Wed, 12 Jun 2024 14:18:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718201902
