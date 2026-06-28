Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3641F233933
	for <ddprobe@lists.linux.dev>; Sun, 28 Jun 2026 12:08:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782648514; cv=none; b=fFuWZr3dHxbCKxGU94z3424XRXr2lw+2Cmyqd5eTa3JUaCLcr0KPHOdz5vh43AI9V3f5oOqq/G+dQNfwlejBp4Fd4ll89B6AwbKcjxMnSbsnyoA+j6dFE+nmkHp8qDWas3YXxsLqly6hGiG3OukXsy/tARAnrbpj9z4JtiTd5HA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782648514; c=relaxed/simple;
	bh=v4/Pt0Rb8SGuuE7IfOEJDuvzGGRY+2ibwIcg5ifpneg=;
	h=To:Subject:From:Message-Id:Date; b=rCxsD1FUpT7yRel8HdeFM/a/9IhaJ9W3rB99d1f9moy3UBGAuZR/Vgomr0xMkDDvxgKJNO3aplyC5FxQ8ICi/Jh7uHm6rI/je58IfYQujSINOJ2YVhQU8ZKXdLnLMcmmojQuOg/buDuyP6UrdqYiI2zmnECqLyAlEXm6Ovi67LY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HhUa32eI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HhUa32eI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C097FC2BCB4
	for <ddprobe@lists.linux.dev>; Sun, 28 Jun 2026 12:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782648513;
	bh=v4/Pt0Rb8SGuuE7IfOEJDuvzGGRY+2ibwIcg5ifpneg=;
	h=To:Subject:From:Date:From;
	b=HhUa32eIiw2gQBPHssIDRK/ag68xzEuqSgRJNfNiqBdKpgIDg1W3HsCcK1DvXw1Ve
	 0y/Y5UxjHSoNbK2F+Dh5cSqqE7g17rskkUNjSwm1N7uQ91JHtkl1IQf4kKRGcum91E
	 EwX4XfxgH4CC7lTTVLvl60LdpFcfK291ZXI40RnhOu8DffP61S//LwMWEyYKFKXeNQ
	 30EJ3g+VQxbOWkRPCP9IPKcljsEZty8sfdLS9S80sJE/D1Z+MYjZ8+n8qwGFLJHcjX
	 tDLSd7m8FlNTFtkK3r8Ms6EDFGCmGTJOV6KT/wPc81lpJXQEcaCyCRFED0AzNpcIxM
	 bfm+hS/zd32Tw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1ADDC43458
	for <ddprobe@lists.linux.dev>; Sun, 28 Jun 2026 12:08:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178264851368.14293.6225336517651099036.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1634d79a691efa98e7aa58d7c77159d45017f8f4a38fcb3f8c9b6df7ddb3cd33
Date: Sun, 28 Jun 2026 12:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782648513
