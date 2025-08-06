Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23A772046A9
	for <ddprobe@lists.linux.dev>; Wed,  6 Aug 2025 18:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754504394; cv=none; b=hC9wB0kIBzPo4FDs2++K9+nWUlm4E/dGp4psvHAWuUl3Z7kYATQ+Q3Ui3B403Eh1woJDdtKbPc+/wPhLSwcJ/FxBWyBhEPVnceR/oGjYhybNyqeN/d1qvgvKT040VQGhu+m3gq6luuBaNUno4T4Sd91TaQlOz+rE2RtZGLV/Kmw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754504394; c=relaxed/simple;
	bh=c2Xn2OZiogE4MYdT1CNUFzxjs3yZl10cg30XvYU2ueY=;
	h=To:Subject:From:Message-Id:Date; b=Sp2pgD9tVHvI1JpY4e0nZKpWacKR9g0hqRF+lb/xNT2s7oYlr9/5V69AJZmI8/1S/03S19GXSzNoJkRDTcvIBF7Zt96mgPFv1YpkNwFC1SrRPqRjdMtNSU84eTZ97VdrYwAVQ7kOihYqy9OiXk4L4mbiy/DMdO/NF6o7lgzAASI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jKNGKlut; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jKNGKlut"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E8A7C4CEE7
	for <ddprobe@lists.linux.dev>; Wed,  6 Aug 2025 18:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754504393;
	bh=c2Xn2OZiogE4MYdT1CNUFzxjs3yZl10cg30XvYU2ueY=;
	h=To:Subject:From:Date:From;
	b=jKNGKlutOE3dtzvB0H4uKMhUz3521EidwQaykiH5gcatSfcBexc6eIjs2NRrHZk86
	 XvK7pmEx/cPCOGoct6w2tKQNDJLzA1WONKVPZvLt6LBWlfeoChnKWSfsb4NIhin52O
	 PC/ZgaxULvk+E8/gtEJVuexHIqhqw06xA3wmc89Pc4MhBLqXjSA9lxKX6gUu9lD0Su
	 /PLj269iGpKl9zK1tADvfA3T38xJDZzmtuvUae1Xkpf3h7rYdo8OoQrwstDsaGeNQs
	 iEInl39f6qYCnfAFgLFgKMqgUt0XVq/LlnebZ4LaEpkzx8pqV/pnWDYX4BZZVJNvcd
	 qE/IrJdFZjK+Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F6CDC87FD3
	for <ddprobe@lists.linux.dev>; Wed,  6 Aug 2025 18:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175450439357.10577.8378175264745880979.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2e9ae14f6b8a95147a24a700df59a6fb37eaf99754e943243c0b8f0b2eccd5ec
Date: Wed, 06 Aug 2025 18:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754504393
