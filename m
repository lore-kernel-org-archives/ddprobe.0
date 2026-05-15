Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0AE1640312E
	for <ddprobe@lists.linux.dev>; Fri, 15 May 2026 17:30:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778866234; cv=none; b=Ap16PKY67u4ROK9rQDueHDEwX6CK8PZWFU2sB0nxTsjbsqGuXU4rOU85CBVot2wJ6KIzB4A3HE7chZsky5TI+qSwdRDHvKlmeMk0dpFMnbClQmS14oa2u52i5iCwVJkt8+FoW6VC/or06PpRIEWGuFP53nlB2U6uwu9f9KtAEzo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778866234; c=relaxed/simple;
	bh=GoHauIN6ElnEBexxUfBINhjmIFnFxyV3ZMWuFq1uEe4=;
	h=To:Subject:From:Message-Id:Date; b=ZsHuPSf/qe0h7YF1RuAMH6ZcdMPJD0ExXMwW8Nk97PA5X4Ws4XBl4Jyk5RZY4DU05nEuYTwBFVzQ905Sa/6/tvzU5I1rJ8aXALGiPn3L3HXsEF2aJvj85GqloG5kIua6XXMgDTaoYObsWsgKfliMFeVulV+4URzKkO6omIurY5M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=US3o7wso; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="US3o7wso"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C065DC2BCB0
	for <ddprobe@lists.linux.dev>; Fri, 15 May 2026 17:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778866233;
	bh=GoHauIN6ElnEBexxUfBINhjmIFnFxyV3ZMWuFq1uEe4=;
	h=To:Subject:From:Date:From;
	b=US3o7wsox/ku80otdVA2L0cx1vXPMlrFYmOUyvmeAY5U2wSqrDYVmDEiPAv3jrOPr
	 4FZgPJRQFxE8DlWbPK7u/1MPOWoIbHv1aWvnfaOaMpcCMUwcdeLyymvOx46Tmb94Iu
	 xL0XIjgE9+G3cGmpCyibQ59y0TwdvWJajFShsRl6hm6KsWrHurb/JuEn8VAWXef7SF
	 1+2k2RHQZsqOBfEdbjP/XC47mjRKBYjD999S6JHpqUhbJkdTXxepoyinWmEGbf9z47
	 VMu8g7tYUk+TaWzofYxqMyr+5ovwMlowjd1Fcs+c7EBJVXOcMtHEjgmwsu8wiET1yG
	 yJlu68L597QOg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADFB9CD4F25
	for <ddprobe@lists.linux.dev>; Fri, 15 May 2026 17:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177886623368.9395.10854766289409356601.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bd179ecf1ffe282171b4e5ed8c6315352687debb80774038f537e47dda4e3feb
Date: Fri, 15 May 2026 17:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778866233
