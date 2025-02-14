Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5418D1940A1
	for <ddprobe@lists.linux.dev>; Fri, 14 Feb 2025 21:08:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739567335; cv=none; b=Joykh/W5KjWc+fcZNoMdAR6/coeF9+mX3ObOJeW0QdKyRqKuGd07RwP2RImhEsr8oEk+As9gUj9z8VqbBox5v7Tc3M3RZVTkAusW+aR2IoXV3D6ypCl5/CwOa8vASwOsm9BZyKWCA2jWrdNUT7c0+oGNVhrzlpAI2w7XjTQZJ2w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739567335; c=relaxed/simple;
	bh=r3B5uL9II66rJ26AF1Pky1Q0P6sCyXyG3eOuuKb44T0=;
	h=To:Subject:From:Message-Id:Date; b=dag8wC6hVkJuOCICybHQPpvhG4iF+sU4N4VFaXzCvs99PcfZmus1AFDSpi2rQda8mr6id+KY++ZDfNCWxmjjd8FseVXLbxBCHm1x/oJjGURu98Sj0XtpPF2cdjKre9OngKgDP4AdEK0AVwgfHt0mVAVEL0B082cge3k96lzd/+Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Y1je5ZSz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Y1je5ZSz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B78C0C4CED1
	for <ddprobe@lists.linux.dev>; Fri, 14 Feb 2025 21:08:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739567333;
	bh=r3B5uL9II66rJ26AF1Pky1Q0P6sCyXyG3eOuuKb44T0=;
	h=To:Subject:From:Date:From;
	b=Y1je5ZSz05V1gmNpZ8G8ELfjRGuDam4g2VJA2gVp+XnL3ZBJebmT3TCJ+CobU/Kk0
	 2ZU+Va7u+muDqF69I0nWf4fP67kBOiC/D5CY/ehv8S/Hijtl+j+Z+vm5Xw3unWB9R+
	 /4z2PxFpVJ3I4csk99PgGf/5f8pXVXyeMWYmYw/OPBitoRi+NgIBsU4jBkBQnE8M0W
	 JdAjRWXTIliquQMsanBiGx5yRQKTdVo8Q+KLuZVqSqsgg3pegEi5kasgzL0lxJBgk+
	 pzS485EMKWO/7UkmLyR6ChKuh5HhQ3+ugfaoVgP566HozrhJSFvKosU3QfNkKIPguJ
	 inK3ridaB3vdQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A7C8FC02198
	for <ddprobe@lists.linux.dev>; Fri, 14 Feb 2025 21:08:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173956733359.16329.4383442697441543780.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7b70b054ee0da70d6f85ce9efad2ed9f434c0350deb2dca9a0d6e941d9c238c6
Date: Fri, 14 Feb 2025 21:08:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739567333
