Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4019A4315A
	for <ddprobe@lists.linux.dev>; Sun, 20 Sep 2026 01:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789867834; cv=none; b=CYYoDRLmXiAiCvcmWeEpwri5qjLAzh0T/Qda8Mji5IAtQd8HX9innxGmsP0ii/nse0YI8F2LFQReeWaNr0uWC308bHpp++MBybWOBP/B+MoJPzr+d7lK00Wd13u8itHKWHGAMD4K8IWr7SozS4AIxvVRkjbaJEwYbYGqlMUecFI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789867834; c=relaxed/simple;
	bh=3fYWJNaMAxPhXI/JBDyCGLwzz1Mbeuah5vKm8B5UQ+A=;
	h=To:Subject:From:Message-Id:Date; b=qDq687vCgZnFWd4fm7hyV+MGKRdZB+W2Mg0SuOCL2y4K7O2sotEwbvXX4G0ep9911UKPc3HSLnv9hnQte50DhrTash1ds04hhbHZPWVVWjSNszeDRoXg2AjzrXlGJr9cOg0xDk3p7wZ4BZZSpineQ4xUkUUjplFheV2RKr2nO48=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iWD98E59; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iWD98E59"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC920C2BCB9
	for <ddprobe@lists.linux.dev>; Sun, 20 Sep 2026 01:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789867833;
	bh=3fYWJNaMAxPhXI/JBDyCGLwzz1Mbeuah5vKm8B5UQ+A=;
	h=To:Subject:From:Date:From;
	b=iWD98E59aODsFWCVW5Uh6EsvQgCjwiE2NvQnzVTQUn3rwcnGXm0US5VNDn/RDmjwc
	 O9BSDJpvloPDy4fD5CSlJGrMcMf8tgGZmsyk+SZibWJr15DGD9lWYXrk1s1yCFD5gf
	 pW74bBVog79kpOOWcNPHk+rzcfaRjA5f5i+nSKDfA8qxDA9GcZngmTuPmfTSMUH5Fu
	 3crvI9T4IkKzVox8l8Nca5/ABf6qUr3GAlZFSHXS7kbMKsc1lB/TNAjq+XqdvU39xb
	 yl0AtZAUh+Rw83JIOZKJ0PF1+39+3KI73IjBm2jCF3NWx497gQe0c/jlKXTmimbdMF
	 m4r8Cru/sCafw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9E69C982D7
	for <ddprobe@lists.linux.dev>; Sun, 20 Sep 2026 01:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178986783368.20119.4443052466735156930.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f485909fd931e2dd937bb8c06f3608c6633f42709af80a655ef6e4f4c694ca23
Date: Sun, 20 Sep 2026 01:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789867833
