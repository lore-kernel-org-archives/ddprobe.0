Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 282E9126BF1
	for <ddprobe@lists.linux.dev>; Fri, 22 May 2026 08:32:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779438754; cv=none; b=mAJ3pkr1oF+fxvITjgSIYs1fmg5qwLV53Iwkis48UwH13TD2fTipUVDcoGLpbKPtxy9Vo3TS6IpgJvERpaGygeVD2fXal1NObtm5lwl4ykRQVUr6Gjpfg0vDG6VuJhJ7uxBvuS6DB//CrgfwlE91vyy7o3Y0j3ygJ/JeKBiG/hI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779438754; c=relaxed/simple;
	bh=tQ0BPRHZCMWP+u4Lgs4OX9Nupem4LGELiF88IA4tX40=;
	h=To:Subject:From:Message-Id:Date; b=PTbqqoZh/QQXrNRI7afpadLfNTGnZPOpW0vgmyYdmxwXdxUzvcsv81S0cqbRd2tyaNn7BuZc2iIYoy2/s4012SdFEQO6F500K/JhIZ+aboMiv3H+fcuRF6q7uCzfV4zvqPDHiEgSEUU+4FBaWlHbHgLeedzFkrAW36MfJ1Cqbmk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SVHjG/iB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SVHjG/iB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C5033C2BCB8
	for <ddprobe@lists.linux.dev>; Fri, 22 May 2026 08:32:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779438753;
	bh=tQ0BPRHZCMWP+u4Lgs4OX9Nupem4LGELiF88IA4tX40=;
	h=To:Subject:From:Date:From;
	b=SVHjG/iBk26meSnvZSK62Eu6W+/C1ubsMWc4OuUSB85Yp/uvhhIK7W+9m31V/8kaU
	 PVrsCFBuYZvWe/z9gBDpMLSbL0Psj8MVbO6xkF7M36AjfBuv9+zAXaDMPU9uJTAR71
	 5zfBTAhfP2x8LiSYduS86N3Kz5tIganWXQ25DuRu3airf66rtOnPb/dHuPhEgIYRqE
	 uvpvC0GvE4Y7PKn6rebzR5YIH7r7bWLr8leVeruv/J8TzkS8OTQC/JLngazIRJuj9E
	 AKyMvLUjjvgqYkJWHZodlLensyJNL+68VjJ6XT15mqkZ6ZFuKj7ECS3BXlP7VgstNn
	 8TbMEnCtvvnKQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB7FECD4F3D
	for <ddprobe@lists.linux.dev>; Fri, 22 May 2026 08:32:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177943875369.3079.18202904455374264612.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4c3f1e4bf6a3c6778f8434bb77dc4b276fe5327778b611591eeeeff28dc8c00a
Date: Fri, 22 May 2026 08:32:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779438753
