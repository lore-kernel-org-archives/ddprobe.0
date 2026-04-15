Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33C472EDD62
	for <ddprobe@lists.linux.dev>; Wed, 15 Apr 2026 14:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776262654; cv=none; b=DAlSAqgjMSJIT3QQwn7+vtujIMKnKs32BtecT/3ySnLtrzOUSKHWSbKtc44yuw89TwTQN3G4XQa0pooIeqWxbaT25T4wbu9p7Z8U3JPRM4nrHWLId0qU9oBYzD85PYcNZml+HtBfpDZvXZXwdQaSNm9zuydEYogH1Rj7xtII9Ro=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776262654; c=relaxed/simple;
	bh=sxMtbkflHVlmZbYSwus9vMDKJp/ArSD/E24xPahb/yA=;
	h=To:Subject:From:Message-Id:Date; b=u23KlfSR5WKtuenjJIHiiwnYIluikLBrdrrjXi7lhqvQXvrTkFfo0lSB9JPunbfzT3OjmypWljXKSJ6s0M0dw2RRuIoc5laP2bTlA7JN9x7IZwyS0h7EFDOF3rdIeBTh/0Ui9HPXIMZJPw9HwwIpaGRFXnanMPMV+dP06A0Nm7s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oJwJT5pG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oJwJT5pG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C2719C19424
	for <ddprobe@lists.linux.dev>; Wed, 15 Apr 2026 14:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776262653;
	bh=sxMtbkflHVlmZbYSwus9vMDKJp/ArSD/E24xPahb/yA=;
	h=To:Subject:From:Date:From;
	b=oJwJT5pGxTkqh4JN8/n2lJWpAxFN4NPlg5ZXz3jT81fBLPhrDjrjTYOpqaRo3Vz/m
	 RLQTvsTETdX38onuRTBGuTOLmBxA3rhd76clSq+v0DSZYkqa2bnbsk02ek8nPsjwdv
	 2mR7/mzxXQVSdAiiilZIRDcI/KehAC4y8thc+MzDaW9bBcUgsVpGbq8APiUBMgVLV9
	 baVmjuLSLCkVcwQIeCkS5fORUdnSqgedjq+zsSW2i56P4TVAIiO9W0bRnvMyVOsASu
	 TJp5JF4K+g86/TF8mutHZUGLPERUSZAXbTXX7AymwaE/p3I2F6KMr2wtSyzdOyeOMV
	 X7Z8Dw39n3vaw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0D0BF43821
	for <ddprobe@lists.linux.dev>; Wed, 15 Apr 2026 14:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177626265368.19587.4407824154007186960.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aadcb3cd9b06706f881585ed4b101bc82688d471bb0bf2cfa0b67235d65e4226
Date: Wed, 15 Apr 2026 14:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776262653
