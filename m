Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21EF922318
	for <ddprobe@lists.linux.dev>; Sun, 22 Jun 2025 06:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750575594; cv=none; b=IW1rVzmlKtGoBY2euZ/kKPiBU9WBR6PLRXu2v2dreauwfsMb+59szRNTqAxrkwm8VevewlVZEaErUAYs5OBEnVYoIdN2FOumouyK1XJVcqZ4SB/i16Y2MrF9KnJURD77GxRvhQtPugFENYwP5Tos21ZatxnB27uFkor7svb5b5o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750575594; c=relaxed/simple;
	bh=ZFVtsvnzLDm/qVfssMAUEJRdRMZQuxHQGUG55QxoLFU=;
	h=To:Subject:From:Message-Id:Date; b=q8Jbpbaeo8PPPfBUUobYSKgDIzQnAWhFbPhrEZcm7V5AfGH5UkHBkY9Ta3m+9psYqyx8sLR+YOX3RvJSriWTckplvOAgJMnyPshZbzWEDj7louO7JD3ynQX1B/Pb6GMkpwsy6kyZidxHaWfzrdKpmpCR6aPP0EXK+VNKQ5pg9M4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MX+wFGVN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MX+wFGVN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A56E1C4CEE3
	for <ddprobe@lists.linux.dev>; Sun, 22 Jun 2025 06:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750575593;
	bh=ZFVtsvnzLDm/qVfssMAUEJRdRMZQuxHQGUG55QxoLFU=;
	h=To:Subject:From:Date:From;
	b=MX+wFGVNkjL+7C65qFZLJcTKT8QVgpVov5cHoEcRIaWpocim76nq3QNfOIM2O+pLc
	 3MkBmnIbV4EsLM6Q8dMxNZ67seD2OIPrG/ZD4Swhpx6H21oZ8X2dOtWXxSq3vjNsTM
	 8MZzfBy8i0r39hQ4tf4GYPGmoF9CPGDmfPoSqRXCHwDioyXCxdjzISIIGdKtoGxT1+
	 CH3kI7Ql2TLMQTfazraoRZBPkdO3knyLCM97+2M/f3EcHREPgyVPNEDuVqdeiIWZeG
	 UIrn2/F76FiYuknlr789LQn3k+xHgj1fiBHGmRrUt8/CRxVRsMUPtAjVJMP+OcSqmb
	 EZxwz88qOkvaw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92B2BC7115C
	for <ddprobe@lists.linux.dev>; Sun, 22 Jun 2025 06:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175057559359.21001.8408386876667948021.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f737f73f6259dda7b078de7ee46b02bb989bcf17f10839b1e35bb4b4ca65274b
Date: Sun, 22 Jun 2025 06:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750575593
