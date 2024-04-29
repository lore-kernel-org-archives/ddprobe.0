Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4BEC04CE19
	for <ddprobe@lists.linux.dev>; Mon, 29 Apr 2024 11:52:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714391543; cv=none; b=U8ZpadMDdzPHMlKXDjXMAeT+xGsGH5iKn/LFunW5dJap4HNkucorIrqpyN+m1Dr2fTCxbecY8fVlGyY4Wi221/wzX6xPPP06Rq3A2Dwb3mIIC+mtRXtHnGFIPDkmkzEh4RWTP3dvLz2AEEZtPaIWDbt8IygQ/zNC7wspFdcTYDA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714391543; c=relaxed/simple;
	bh=WjlkOCBgAciNwowo3dccP4P7wNoD0C7YurXE/PRTvq8=;
	h=To:Subject:From:Message-Id:Date; b=OeXCNLLzpVq8sWFI2Jry+2LLUv51ZMYT5cdrgjYrOTG8XmESONRAFVwD3ch51M+Q3LRF02FE0V0qnbavXpMLwVkTAYIui5oj/jGaq7cOuDrQdGnzmlnG8+hibotNTvIMxWLwOHsY3YAuGfLSXXBMyup0c+paKs4eYUnze3Unvug=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BVTBfIUc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BVTBfIUc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0A25C113CD
	for <ddprobe@lists.linux.dev>; Mon, 29 Apr 2024 11:52:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714391542;
	bh=WjlkOCBgAciNwowo3dccP4P7wNoD0C7YurXE/PRTvq8=;
	h=To:Subject:From:Date:From;
	b=BVTBfIUcUPZzDcE66hNmEXTOXPZTfXtR4O8wqCyYReWaKNb48+FUKr2aOuS64DSDk
	 2+NnJJWT7Op+2a51K7lIrDk4DT+o8puzG7dYYd39XWRZn6SePHyEmt+/Uqyfhm4Mrm
	 pIwMQx3JMH0DuU98bS6sAnxEGNwF25rYYSOqQvNjmIn7ptltmTCAGXrPhXK+rNEzj7
	 4fqy5VWSF4MLdLhJRFiUrG2JLTP7cnHr9gA2/FK84RoNbYIyRWXpnvfuFcDtJiss3o
	 tzqDd+vOM+pJaroKnn6U1yuoNonIradDuhqM4dINBS04KdZj1q4g/U72nagfDgNg8Z
	 SpiJK1E3BbnZQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BC562C4345F
	for <ddprobe@lists.linux.dev>; Mon, 29 Apr 2024 11:52:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171439154276.18458.11292946002614123622.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 87399e0c064767ee19e15527838ad12ca69346763ce4719b8b832bdc5df51bdd
Date: Mon, 29 Apr 2024 11:52:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714391542
