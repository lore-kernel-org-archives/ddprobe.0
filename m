Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 197BB1D5CE5
	for <ddprobe@lists.linux.dev>; Thu,  3 Jul 2025 19:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751569794; cv=none; b=mG4sRWI2bwxbneQGxX9VkQfVBgMs701ImH/xeQMqTo5Gvtc0PTLJMfSmA5hasi2rw2uN9O4TqyYL+fpq4vppTpBrqIun/lzO1CQg8E0XvmUROsfN+GhMH2EaMFwI5/uee5S/JD1qNVh0+UI/Vvb6XtVPRco/nOylFGjlSM0joIk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751569794; c=relaxed/simple;
	bh=lFW+tkRISStFDIuaIuWc5sbhPDe17uhem7N6IoXEVbQ=;
	h=To:Subject:From:Message-Id:Date; b=g/CAGVGbCz1D41MX7WuojScUqpKGAx2RJiMTaIGSgY5/nA+61JtxsRwPtdlYLbmFrF37/5XjMTEqCqNz0CR1jMf9X2t6+a6K7dAdDBEdxctb/7L42TLJgaQxNBhzRk+qRIIzXk61lBlX7yfHtyBTPlxww+0Lb/ijBHfRGlZWf1A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qqjhhle3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qqjhhle3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A292BC4CEE3
	for <ddprobe@lists.linux.dev>; Thu,  3 Jul 2025 19:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751569793;
	bh=lFW+tkRISStFDIuaIuWc5sbhPDe17uhem7N6IoXEVbQ=;
	h=To:Subject:From:Date:From;
	b=qqjhhle372iUwzyJmJhF4gEbWA8c6yIz6bgS1UVqMuf4e5YK5xVw+uNAEKz+Oqm3E
	 DZ4x95YCT9FFioHVR1OVH8i85jKFEwI8582fNafkXF6tYOQWizMIEFWmne3r3tj0Np
	 GCV6Q5YkEmvsEDBWlUdJGUm7eRt3Vc44nEoT28NJocBnNDU0p87iIISurB3JyndAN1
	 tb0kFAPFXfzNTOaqMb6+R3oqCxKKLsjAOD7rnssduZ4ttT40aRGazeqzHtmYVJXQsW
	 SbZ37SdZu0g3ZkS1bwTFpSOGFnhZSWMYv4xeEbBPBzwHw4s/iP3pdBmt2rurwt/pHB
	 91zv/ylq3xJxQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 942F5C83030
	for <ddprobe@lists.linux.dev>; Thu,  3 Jul 2025 19:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175156979357.27900.5154844409841501730.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 97b85fd946e137c18e6750cbcf9e812c1a2c8e91f16e389eede12cecc3ebfc13
Date: Thu, 03 Jul 2025 19:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751569793
