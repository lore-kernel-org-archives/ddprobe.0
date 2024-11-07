Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24BD82141CB
	for <ddprobe@lists.linux.dev>; Thu,  7 Nov 2024 15:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730993754; cv=none; b=F9foNZlMFRJwquesYH/TXy4M25355BAIzYLdLR/pE8nxPQkBdCieHPtFIt6ngiKnNP8Yhutc9Z9wtY/yeUIHVagRVW5VhkXjVs+RL3z7lZmjtcW8TJCOwKWF1t9wga956PNeFPNOYVNuJzduNCkFIh13RJ0ReOeBt7mMjFhTUJs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730993754; c=relaxed/simple;
	bh=ScMo/iNr3KcMp2ITcc4+EEbPGK/8mhdDeuIdDdAExeg=;
	h=To:Subject:From:Message-Id:Date; b=uCDcQBVTTknYLtuudMdjjcAH7HLFPyBHyc5SIB5WNUv43BSbjp0HQxHytNDwumNOObUl5IuRmAINnxqJUo34d/QtoYWa5H6MDO/QB0HhEdyZoa8LZT2KS2JsWBTMlfhmvJM5h9h9Jm+WrLHwBQb4iwUm3FXpjjIL2Ai7+DQOZUQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HlF0Hcmj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HlF0Hcmj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C863BC4CECC
	for <ddprobe@lists.linux.dev>; Thu,  7 Nov 2024 15:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1730993753;
	bh=ScMo/iNr3KcMp2ITcc4+EEbPGK/8mhdDeuIdDdAExeg=;
	h=To:Subject:From:Date:From;
	b=HlF0HcmjHDtSbhGpJvBvX9dXiYSTf0DIsaZkz98nD/qdE+6BgPOhdo8dr9knZI093
	 bk0wX9nHAB93bvp7cGDDpLiaieSV0UoI6Yew256U12UQhrytqLMtg63vY1dXIF7trp
	 m+BBk0teqSV9vh60K3frCQJY92Z2QpZomfkkm1EYeAhaBsHeyFG/BW+kIlDvtYmKni
	 phXqzwO/zljGJNYUdfXMhZoRYL4zEZ0ylJESWF0dVR1XRqv8mwnfOMK8m+sAKqi6jA
	 Dcl7vLv7BICLiuaOXTwvKWhvqq6WGF7lSEr6pb9qROzdi0PnJa8pV16Py8XyTNoPYm
	 PPeU9IJOI92Ug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B4505D43370
	for <ddprobe@lists.linux.dev>; Thu,  7 Nov 2024 15:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173099375367.32715.14136691880473581064.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6b95feaa468617391cadbef20da52cee220a606a5bd688ef16f6afa6a88c8424
Date: Thu, 07 Nov 2024 15:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1730993753
