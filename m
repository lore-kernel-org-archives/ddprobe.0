Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7EE2414F9CD
	for <ddprobe@lists.linux.dev>; Tue, 11 Jun 2024 10:48:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718102903; cv=none; b=mfrjmnHwPOxToX0WZ3la+QZ55GiYxRVLZpFGGPTFENRbQgb1T4HyvJm5WSLM9Qt3PzTMRMYPT832bbIML/wUUwOUqfK0iTJ2yoDKJPm+7eQhiXRjSm4jN/9bCZJznMh28yYKkxM/Sm/aUxkiHUUE/r7u2VkAQ9W67KI+EdIf7YI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718102903; c=relaxed/simple;
	bh=ZLVDvNiS+U4kN0dNTHCj01PVyVUFHR7poqGS7yl6TRw=;
	h=To:Subject:From:Message-Id:Date; b=jbQ7FE3TB05tvPNxiIC2xj+PtoXZacLlo6SAQ9u/bNWxj52sq8pFIhD65xvEeUrJnlDUmuIfMBbbQfpk2qQzyW4mcyQ6gyJRtLo8hclvrIkeugjv58OLVjo4EftG3UxfDdIdI6ZB5blvajkqxt/vDi/Ra/USf2lSLMbmhs9rbck=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Csoag3wh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Csoag3wh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id F2B27C2BD10
	for <ddprobe@lists.linux.dev>; Tue, 11 Jun 2024 10:48:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718102903;
	bh=ZLVDvNiS+U4kN0dNTHCj01PVyVUFHR7poqGS7yl6TRw=;
	h=To:Subject:From:Date:From;
	b=Csoag3whWUbmLdPSma3E05MTlcNaUpPEjaY0q8CVIjyLNL2ezHpcyGurFBBH3X8fk
	 +6/wtlaPuIWVGCJmSdjUxyCYn1oP7STSU2ShW3DKc/oP8H1xK161tW/YQvegROEJo3
	 8S5sgVP9JQOkNrzQFznocQ8E2jX2KM49RXGrjkG+8dawcvC388RPimtbY93mHcqzCl
	 0C32TcPkaTEi4+i9r890o/V+XF7AEu5vHphPo30o1HJN42UKRkyPKReMbcBCBI1HY2
	 fRA1bH2js5PlYvaYQbnyZXeUzw6phRh3WHi2FBt67399Zln5yvfEDZjEGHAXVRBbgO
	 PM9bi4qqa1qvA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DDCABC25B76
	for <ddprobe@lists.linux.dev>; Tue, 11 Jun 2024 10:48:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171810290283.9114.7091306119855259800.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 87db25a281b742a2896b06ee211f0662f21314e6a38b5d8864a27368b2578a41
Date: Tue, 11 Jun 2024 10:48:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718102902
