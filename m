Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31FB93D76
	for <ddprobe@lists.linux.dev>; Fri,  2 May 2025 11:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746186594; cv=none; b=GBIOpzRLx+V09ZOa2XejaWXh1tE8qIYkVVVM5sMU2/s0JEs3GO/JbqR1sKtH4UXCzLOlPdqjO8L5YBc1a/gsZEyaN1L4vTnIYihEFXoOBow2KqSRqdWvKUZqp7fAXFZ0HDFbZH53/up8NY4MOeR57NH+03lqaOFZIsULrYw3dZQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746186594; c=relaxed/simple;
	bh=su/asOO/Prlx/0BYY73mwSIROXcbWTCTd2jWoUe00wQ=;
	h=To:Subject:From:Message-Id:Date; b=ee8Scs6ZqVHGC8X+wBeC2yY/2QBfHkL2jh2t3ic8TZm0EBCSE3lHgZBuj6GJlZX5VbeB6wqSdhmMtpdTPmuAW3ZkxtKiHlab2jkVQeVRc91YMSuUlCrBlZmdNX3a0cjjQL2QB2Uj/LN2kQcA1CjEBgMhAXgU7GCwuj0S3c0ZLhw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hdLeBe2B; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hdLeBe2B"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FFEBC4CEEB
	for <ddprobe@lists.linux.dev>; Fri,  2 May 2025 11:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746186593;
	bh=su/asOO/Prlx/0BYY73mwSIROXcbWTCTd2jWoUe00wQ=;
	h=To:Subject:From:Date:From;
	b=hdLeBe2B6lJFEmX6NxP/jSFLi6Bxwr8/cIsD268o4aozFRFvq/ryrpu54OWwopgEW
	 73EYLsxSprOFIfo12Abjn59h5cm5woVuMhnulWV0NyJ0zSsaiZWUDDKCtDQQVm0mSR
	 N0npwvMvQt+Uc2CUPYyiR2eMf/NPgQTIAS+zDni+1k8RUbfUOO/AXc/SMMM6d/4nPK
	 cGu7GrTiw+AZVBzfDfGEEZ9YjNnAYYFxIv7hHHeu1w5rF/GedCSg0cK3iI/rj/CBPc
	 KHCdO/IV0112g8oDdqx63FBnMnJgORi6Gf0xa8IzUHQ/0LgmETNUmx9B2JpYzosYml
	 lVKfk0/py3A4w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93417C3ABAA
	for <ddprobe@lists.linux.dev>; Fri,  2 May 2025 11:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174618659357.11414.17970356488379841137.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2019ae42ff0d15dc47e3b7c2d50ff0b2b77e014b78f9087437dbc42d4edc686b
Date: Fri, 02 May 2025 11:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746186593
