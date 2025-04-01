Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E6571E5B88
	for <ddprobe@lists.linux.dev>; Tue,  1 Apr 2025 07:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743494394; cv=none; b=obZGXsKAujc5RT5/+pMzrxf54wi2gBJwlCeTTekaTETNJzVBFVOlx+sOYOf1e1OLH/nAAPnYB/04aHnxEo1bH9YgXYuP6D2n2I5XiSNvtt9c0ZA9sKE8pEeRoT6e/xTCRo6kmfaHah4Z26LTv3ABBMUOYNezH/BNCiWXwBNJAJQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743494394; c=relaxed/simple;
	bh=L1Ix98lELmMBAknWh8osNzzifnWDbML5Iitqsv5p1gU=;
	h=To:Subject:From:Message-Id:Date; b=QZMOPMQDmoljAzNUt61sk7sLCXsbM51syf48OSC1GToe5maJKSgPcNVo338SF3nuEroGDQC64X6KLBZM72CImSSqD43U78SlXlPe0spZRrz1jPg3H6OTs7dAZhb6zpjld5m+BCKEEycT4Yk7fXU8CDPaWE8nbpKTMOLP55kmkcA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QCUK3wCz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QCUK3wCz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8CC6C4CEE4
	for <ddprobe@lists.linux.dev>; Tue,  1 Apr 2025 07:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743494393;
	bh=L1Ix98lELmMBAknWh8osNzzifnWDbML5Iitqsv5p1gU=;
	h=To:Subject:From:Date:From;
	b=QCUK3wCzoKlh0fDc58pTOsVIJop7hbPxu7yBG6B8jwziDFWyVqBwHXboZV8A9cOdl
	 5On2u9Ea8m35rKTVye01FyCrBjF3NK2MLaWhEB9v3AFao1+zWvpNxMf0oAfBkJPseu
	 j9CejPHFekr3uIirUbcSuflpKJ0wPTUa2eHZlOy2lMUtPvL6BMRt2iQV3pqhdUFf1z
	 iTu0EXWen1cCtATjavAnk7z76cgz619p3u4QbkTKjy9s56z5yZPyJS1ZdrVJFiBlHj
	 QzJ3VXO7uiTJ1N8Hc/TzgAfmAvqFQvJoELF38dK/l42UkwRGZVoFb0C5+sEI6pdU7D
	 JY7vr1azq8tcg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95DA6C36014
	for <ddprobe@lists.linux.dev>; Tue,  1 Apr 2025 07:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174349439360.4898.13155289103758577619.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b0b09e56bdb9c2ee4c2c190c16b029a8d55283a4fa3b66cce1bd467a7b91291b
Date: Tue, 01 Apr 2025 07:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743494393
