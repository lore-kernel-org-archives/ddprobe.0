Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A9A82D238F
	for <ddprobe@lists.linux.dev>; Wed,  3 Jun 2026 16:44:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780505074; cv=none; b=faUUCpkBDFUMOgGqDplyViYIddnZQlkvfSPim9TGppwxgyylRlwVyqItsoYnVJUIAcyxOxZ+nYR3Q5AChMISlyggB7mr8dl8vzG5yM1fdcXBphAF4eqgXVNFfLGadhBvqhQO3cXmBTC+Zc2dT5qT/m75tPLwJ0wXsEq677VJK40=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780505074; c=relaxed/simple;
	bh=wpBTsiyJSEAgOCizwZ36hwP8DSPe+7Y4Yw6bIxv7ZSM=;
	h=To:Subject:From:Message-Id:Date; b=IVUYY2u2mhxtXE/7f/gmmq3TsNyIV6u1ZF/pSibpNm6o/1IafO2qMZJapi9zGmWuH5D+XgqzxapSsJfWUmAmb/rQj0p4QhKeSkCb/jyHwcblB4g96fCki4W5tM+tF8uacba6PXOPWR3qOPvMM/J468aUbKHbBTRy2VtCsH2HODg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DfAdhLLt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DfAdhLLt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C9AACC2BCB0
	for <ddprobe@lists.linux.dev>; Wed,  3 Jun 2026 16:44:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780505073;
	bh=wpBTsiyJSEAgOCizwZ36hwP8DSPe+7Y4Yw6bIxv7ZSM=;
	h=To:Subject:From:Date:From;
	b=DfAdhLLtWiLTH8Mu4xQINd42cdAZn0UBwVKh2gFeGxsU7NvgYBu4p0bTCu/Z7cTLV
	 7K32EsnlLMbpe8p3JHvPWL1xn0LrtNsvG1xR9S/KnfhFE7EYjrxEt4TFEOuzoZtm/S
	 RDaSVjdOuYFk7UjM80iXLaosYIDvrU31UX8qcD1zQIqr7VCF+jqXdeicthKCbYTrap
	 sqXWcQLQ7ykbNHSeI1/JXWx6MIHcMiflh5R3o4EhI8KgLFv1cUl4W8eMxNYB1i/Spz
	 MAm6vPcVoEWCGsI8dRiQwZxCCPUKnj+Od7MutOVCk++sZAF985T8J301lBF4bPBURE
	 CtTHOgIbHjqUw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEC1FCD6E55
	for <ddprobe@lists.linux.dev>; Wed,  3 Jun 2026 16:44:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178050507370.16741.9556594191823095373.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dcafa3baa2da5c337b66334aa810738c0992fbf0422be21e8ed021d485b43af2
Date: Wed, 03 Jun 2026 16:44:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780505073
