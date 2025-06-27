Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 397CD298987
	for <ddprobe@lists.linux.dev>; Fri, 27 Jun 2025 10:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751018994; cv=none; b=jsdZCjPhyFpojQ/2MfScWWQl78J5RksArmfP/Yq1hiKaDw+/o46RwG8Bp1PRD/qYuV0ZnIkU0Qr0r4yEJBXvg5DMDfz1+GzL/lrnB0idVjSZiT5HIgd6GAJwcTwVeS5eGcJqjUnnVNTwQx4zNiL1pVVnaZw9ozKqfXOK82N/mm8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751018994; c=relaxed/simple;
	bh=B7FdmDXuSvt1dogLNsVffzvjzI6DLHYVpQ0w5crIRI8=;
	h=To:Subject:From:Message-Id:Date; b=LH7gGQPdNR4PBKhS0mY0M5fDjF/xj6jESgF7DAnyD+7rRFe+Uxd7Vl1wdHdMpmYWBXIVIEIWrmijF33mISpt33huUUmH9CtS0CIQ4341Ft6cgS4wK1Bc+i9HQ7Mipd7f7UryrIlshkTvAr/7xUXv2Sh3yJ0aFVQlKONPe7q5xDI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OPUvbqsc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OPUvbqsc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7FFFC4CEEB
	for <ddprobe@lists.linux.dev>; Fri, 27 Jun 2025 10:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751018993;
	bh=B7FdmDXuSvt1dogLNsVffzvjzI6DLHYVpQ0w5crIRI8=;
	h=To:Subject:From:Date:From;
	b=OPUvbqscDAUt+TmpzAc8gO2ESWVswM/s6tVbKWAbJWhRP113HudheGDG206mR7d3O
	 SBcbx4gc0NR9xyskZgn++QTDl9ZI9dVOVVjpqWpvAQz31qoJWPCadhmY0EO2Dj9PnJ
	 JCJkbaSn5N2QGoiYlWUeK91MVQ3Dluz9Piivi/VmTpUK2fFOTvxyuqEK50ZDxTyWdM
	 8Bl1ffoKDWRT3/IWujYGVXAJPNkeGbg+/RNKUZ9BoagwtworZiSpagVvi3HvfYnG9M
	 5R9rxryuNL1Da6+pzczhQ+vQopopRL1SS8gwcwrPEaDYAWL05NJvv86BTL1oKR9mPZ
	 GUbcHE0YaTuCA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A1B1DC7EE31
	for <ddprobe@lists.linux.dev>; Fri, 27 Jun 2025 10:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175101899365.3648.3828343778539693873.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9e6f679d6fd029ac9ec3435e6650f1d61dfdce48891cc113c0b1c1798f471cee
Date: Fri, 27 Jun 2025 10:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751018993
