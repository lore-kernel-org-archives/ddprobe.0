Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CA3519DF47
	for <ddprobe@lists.linux.dev>; Thu, 27 Jun 2024 20:24:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719519863; cv=none; b=LTn9ckUqZWSARKbUjoXVWS/CMChNaJnZm5w//Vy5fwvjRpik529O7DoRPu618QHcgBO3wCRHLupS+X/+Z+J3DdIhnAhb6za8P/LvuTnUj3sxbpp2gSrrpruLaZnMIfKXicI07BBlPqqevdzehSuHerGMnWcViuGBokRZsTuzOJY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719519863; c=relaxed/simple;
	bh=jWw3NyPxQHLtP4bOtBz/9uaHBi2FCY/bAeHyCJS/q/c=;
	h=To:Subject:From:Message-Id:Date; b=qj4zLf+noKwRJ1h9pOnYKFJ7rAdRZ0Vg49eagnPwvUaHHenDW11tzEuf1BErjXO9/RUu29SLa1QmgFz1Z/Hdh7xl4yvfRHRbuXvQlmSDDU5SNcAdOkpWl9jb5q+UtMpRfePJVELaZsP9DhsbjbOl624viREgAM6S4cvVvFGmUUA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XU/oTWLm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XU/oTWLm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF349C2BBFC
	for <ddprobe@lists.linux.dev>; Thu, 27 Jun 2024 20:24:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719519862;
	bh=jWw3NyPxQHLtP4bOtBz/9uaHBi2FCY/bAeHyCJS/q/c=;
	h=To:Subject:From:Date:From;
	b=XU/oTWLmvWS4mqpStn7nnpekOcOj0qqA1YJXxuyt+KyTs+j4Jz1clNCqBE/7h8T3T
	 GP1SSBlIRrfe4WMvG42ijhBBTPrdl7Wk9BHzUMFMZvNK8wHI3dPSShzKd0Sjae0695
	 CrUUH164dphaNW3T+VffcRF/ipbhe557rvo9LjvqfCD/v2iFCUim97hzitEXqLKPra
	 LP5d1EVztp7m2rg76JSqPhl00rGJuMfntLMDuH85Blc86pBZB3tsJrZajAGxqiGlAe
	 +vCrgCn6M2ldRDIEu+WrvyWdUKim/uvMFHonZZ7IRESPYsbl6QW952InfhYc9FGbKT
	 VEtuVRb38PeCA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BD431C2BD09
	for <ddprobe@lists.linux.dev>; Thu, 27 Jun 2024 20:24:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171951986276.29194.10414566135366399526.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a3520b296c47995857a5199c26968a35af24da3d894f81d30bb40203ac80a3dc
Date: Thu, 27 Jun 2024 20:24:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719519862
