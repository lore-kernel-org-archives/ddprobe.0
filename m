Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 251D32222D8
	for <ddprobe@lists.linux.dev>; Wed, 17 Sep 2025 02:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758076194; cv=none; b=QJapy/tmGENpWz6B9utVkA74fdPZmzEQ+y5XHYDKdvfNMECmcyVjj3hoXTuN+j8pRoOhyHxvWzKMAoJQLkshpu6SLRthYveP+2pTEcbfsSGl9CfNmAoSuC7iASnoizg0LxSKq0x1/FCMiENI+U243QizWUkS05lB2Fq8JXB6tv0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758076194; c=relaxed/simple;
	bh=QA+uaqpkMT/KLCvz5RDlnsgZwzkJO8gik3KNiu+KZSo=;
	h=To:Subject:From:Message-Id:Date; b=THQsl1fMa+SPg4CME/cWoBomGRQCW/ykackg3fhqAS6fdSTsgQjev5o/rHZz2v5MM3DapkyBxnP+Wz+gk/BbvopviXP5X0fu9Pc56GThzic72t2Vf+YE3cKSK1mm+8yJPWMVuWQ76bcWFpCD6RHnYDX3lx1Eb8ilUSOKP+bKiXE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=S098b90Y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="S098b90Y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A13DCC4CEEB
	for <ddprobe@lists.linux.dev>; Wed, 17 Sep 2025 02:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758076193;
	bh=QA+uaqpkMT/KLCvz5RDlnsgZwzkJO8gik3KNiu+KZSo=;
	h=To:Subject:From:Date:From;
	b=S098b90Y5QQE11fspaDEolWn5hxUVWDfPnfsueZMAho5ez9UdD/YTyKioMNK3xPYr
	 X49nWZ/hWPR/JaegkvAutm4PmO+fTXcXH5i/inNF3al4fWw49Lwmt1bhUw2q0RxcU2
	 R18rD3JRYJ1r6HLZ/eVPZtk2cqkvlZOymvqo3OPT1LiEN8tc3CDoh4AMhI3RbWHXaG
	 jexxBGxHtl5zvm7WrCdjsqeKpL7R7LBYAblW7Gm36rp4wMO1cqrf4m8Sh9TU2ASpKu
	 63rJQzSr/SpYQbt5F2qHWd+SA8wjTDFcNQUuw+HG9rVqK6V0WAnK4uv5ZdXE7YxlnK
	 ExT9plf5S7I0g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F3C3CAC592
	for <ddprobe@lists.linux.dev>; Wed, 17 Sep 2025 02:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175807619357.28919.789616705135706954.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ea2cdc39de961ad6cbfb2a3f69909d3959bd606d26094dbd4a1c809b439cb95c
Date: Wed, 17 Sep 2025 02:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758076193
