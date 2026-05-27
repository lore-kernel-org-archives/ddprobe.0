Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 02FEC12D1F1
	for <ddprobe@lists.linux.dev>; Wed, 27 May 2026 23:22:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779924154; cv=none; b=IYTplIXag4iFrbh4YLkuhPAGlWfx5sXXUSP/ElsMQb2vp3V2OWKIJoLF5VrR31F1id7Jbj5pBdwRLfsvDiF5zTdCV7ntfkXoZZeCL3xqLZVX8SkD390eXHFnRZt9/DbgtZWdpQw/MioQ8Yg7rDfuSEeHBx5embnwDY9H9UpC1m4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779924154; c=relaxed/simple;
	bh=QFc8aEaXkEbRtvPyeaydUdM0y3xtBUkxP4KLa9jYorA=;
	h=To:Subject:From:Message-Id:Date; b=Ckm5ONUtxZXT5ri+7u+0qqmkJlCmYL6kdoZBQmvMcNC0421ZeXWWP1hOKrVK2a5+J37CYNzsG31rxaBD4YIQbEzNFdh9kLVOiI+bDwqMdruBCHCx59lvLdpkG7/U3OYlHRAwHDBh8QcSBDTaiPlasGgwnxccoEzHlUtiG784+4s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=q9b80e3D; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="q9b80e3D"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0683C2BCB8
	for <ddprobe@lists.linux.dev>; Wed, 27 May 2026 23:22:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779924153;
	bh=QFc8aEaXkEbRtvPyeaydUdM0y3xtBUkxP4KLa9jYorA=;
	h=To:Subject:From:Date:From;
	b=q9b80e3D66sGClcQ2Mb+VfUjMylUVRGC5K1dddZVCnBW50WubzJ/Ra7I8V4pwhKL9
	 HBIu3qT42qF3Qn85SkKUyIh0+AO1dkfSznT0WQrRhbSxyKXV1tkNxJpzLj15Mt1HYd
	 mIpBXjgsgvpkqqFYm/caeRkOpCZsibsV0mF9jObTStCaCLwk4KfzzHVQj00N8Ef3V1
	 xl64ks3sUCTauSarDGDPwozRGhV3aVEP1epu7uLyz4v7G1Y4lf+KnYEJ1v1VJkMP8X
	 YTb1/x3wFx1vppXhiNh56S6oSbdStWuym0OCEnY/BnYYu/eT0NKwrJMCpf+FM67Jf/
	 xoC2bNzyHnymw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A909CCD5BD0
	for <ddprobe@lists.linux.dev>; Wed, 27 May 2026 23:22:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177992415368.13032.8005246182358138036.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 06e95eac3fb8af533d96ca91cbb7a79366cbcede015f3d204aeab098428da7bc
Date: Wed, 27 May 2026 23:22:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779924153
