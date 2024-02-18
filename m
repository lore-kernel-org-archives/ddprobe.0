Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EB81517570
	for <ddprobe@lists.linux.dev>; Sun, 18 Feb 2024 09:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708248497; cv=none; b=kg1VSStxIErjgvPGmjnVjn2+196+MRzAVnPg4duY0ufwm1dUlnkmtseQ4RWSDQgI/KSAFWgYvvMwnwaRXdMgO1QXNXPsNLia8eks2ybU+3FNEex6DHRc1xpadxN6CUivCiPJh9ksD7SUSqQVCw+Yg32gifnn4wDTSBpCkk4wHjY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708248497; c=relaxed/simple;
	bh=sbYjJ/opgEH5DwLQ8p8z65ZoStavIt+8OFYywO3z8DE=;
	h=To:Subject:From:Message-Id:Date; b=gKIWakCxR/vJzzUiRvtumWZzmnmhekmMKtIlmcO5tZptyFaq1t9PIolCnpALSnusM6m/JtErBwdk2Ue8gcfFjCQdO1Rs+CzB8BlOMUPdCO5ZDjlCDC0p9WgXwb8wbaQV7otIwEKgL15vzDV+OdySQAfTHJLKBPpJw9vSYwmiYh8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Uls7pLTY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Uls7pLTY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 79A5CC433C7
	for <ddprobe@lists.linux.dev>; Sun, 18 Feb 2024 09:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1708248496;
	bh=sbYjJ/opgEH5DwLQ8p8z65ZoStavIt+8OFYywO3z8DE=;
	h=To:Subject:From:Date:From;
	b=Uls7pLTYILu6LLUpzJ94VOOY8dBfMM08dE/LSafcvlyTl7AtpjVBYivD/rnE9Ba9f
	 FHFNdOcy8SeF9o6T7CglTfqVhV6HAEjCy2zMkT+cOtfhm0G8OxVjk3grKEZJdmHWhl
	 UI8PCnH1mVDbB8Mv8kAIMSwEmI7MGCn+xW3AwSKCzonkQmNC1CuGpGVh3JaTK5vCVQ
	 od1D2Xs+t4IB1B3obymEAacAl5A58qXyoqSmOKydwgBZOK/7c5oeCSsspmMI2J9rTq
	 lDRMhIgV+96SSiICqMYczLJItnF6N0JU3EsLBWNSGmM0z6vAs+Ah1fUkIfGlnCPYLV
	 czMDOaZyeW5Sg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 618EAC48BF8
	for <ddprobe@lists.linux.dev>; Sun, 18 Feb 2024 09:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170824849639.31763.2210648851279200553.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 64d2bb0ef5a670659eb2131ee9c37560a2888a9690e4bdd707d71a21a1368428
Date: Sun, 18 Feb 2024 09:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1708248496
