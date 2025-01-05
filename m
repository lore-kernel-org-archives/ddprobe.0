Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BA231B87FF
	for <ddprobe@lists.linux.dev>; Sun,  5 Jan 2025 16:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736094354; cv=none; b=Tb+T8Djs+JUPqv9vQTcuoNdDr6S4jgUC7Ub5ncWnx3mcydFUtDws0si1t/RbX9IgN90V6VNfwhhAwhgoNRlogVjQK1otZXQadteNdqDSVvNQu9t5+chxAStsdRL3yLlRM9OdNm7fcfBZzVnhBJg4dypsxduLvN3bUnDyyZmHjJg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736094354; c=relaxed/simple;
	bh=4vdNAyfH9nCtBfejShZcHLmNFotrsh43vsKeOAoBY4I=;
	h=To:Subject:From:Message-Id:Date; b=lbdvgAKfbWGqYMCfpbuPfY/9zEQ6U5+2l0j9NCIdIdjMqzTpUbgcMtijR3/1bcUg29EcHzs5bR3A1y4WEKNiy19J5F1apxm/NLLPzpaYyASBvH1xPUgnbq6KTcBXX5908zI8YODf/xSw83sOao59X8iA+sBic34+nn2Wb6dIl0I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pyPnv95t; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pyPnv95t"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1971C4CEDD
	for <ddprobe@lists.linux.dev>; Sun,  5 Jan 2025 16:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736094353;
	bh=4vdNAyfH9nCtBfejShZcHLmNFotrsh43vsKeOAoBY4I=;
	h=To:Subject:From:Date:From;
	b=pyPnv95tFXhOYZNonFq0bIiMObzylqR9rMT+X+2HASH69tp7v966lYqQqtYM7mwds
	 w6EFUMhESC+f0sf9eFosCBWUse8I5HI8Nqcm4B668dMIRt/A+3FZZ9tsBeF8UzX/Oq
	 GukIFlLk2TE9WTD/s/0lXJFMCjU0q3ne6OAOAaetSgEt3aIGfNxFvovRrGr+EoHITj
	 1OwiYw7G3AHpvc6/+7LuzmeiO4bcfnQ5fAYlJ8n9cNk3lhxOXVhEvlpz0VUcUb8U/6
	 cgpSqeT4l8VZNEjg6UlVFoqB15pJS1iiiW0dDAvLfiNB5PwV74dtkpjaSeLpuVfuHL
	 3x5Em4YKRBdzw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C607E77197
	for <ddprobe@lists.linux.dev>; Sun,  5 Jan 2025 16:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173609435362.7514.11693373634932954979.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0f7cbc54e822431e271e4fc3f66f442448a5779a12ac0e4a36dd5b599194156c
Date: Sun, 05 Jan 2025 16:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736094353
