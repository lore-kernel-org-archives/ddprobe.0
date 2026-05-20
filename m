Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 48A473ACF01
	for <ddprobe@lists.linux.dev>; Wed, 20 May 2026 12:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779279034; cv=none; b=S3XbHXfXR3UmNDospQXSOz3fm4Bbi1vHuFiq+BumCLuLU8l8asqTESholV/bLrxevaMsmAQ6H0z3UTXWQVWqeI+OQ4rDI7wtC3dYIApI4pt/1M98jo/uiObH3S5RuKnA0nhxxyLeDffQXkQQsz08G2ZkDsU5hqQ2cnl6+jPzjgU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779279034; c=relaxed/simple;
	bh=GGsOL/KKEABIT899x2LLiiZpy3f8E1xICY/pv4ReBos=;
	h=To:Subject:From:Message-Id:Date; b=iYeoHZFvs7vw9HPJ1FZ30UF5dNiJV4/G/ZD1Mzbxo1p3wsxJylVsUJPrTDfvXx7eM++jfy2O0d77Itj4XlknR3s/t37CBJqx3321ap5QQp0y1ItFiftVua5xN1D01YE1loqDML1rcylXlun9XIp4mWakRC9HZpNv3ikXJa4cVVs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gqZNyXzP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gqZNyXzP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D45A8C2BCB8
	for <ddprobe@lists.linux.dev>; Wed, 20 May 2026 12:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779279033;
	bh=GGsOL/KKEABIT899x2LLiiZpy3f8E1xICY/pv4ReBos=;
	h=To:Subject:From:Date:From;
	b=gqZNyXzPZIhkIA7DY7LDJMB3h7AdF4Ig3hEP1vQPOAZnc8CDsVJD0vjcPVmbb7bnO
	 JeSWxciV565XovYo9gov9P7BPgY65d0iU5yPMt0HkU7Y/2UrK8TW7AwONfhbPdzlZm
	 rjjwFhxHF0b1doeidmcDC/eH0Qyf6MWQEiS70v4sbBVNGrh3NOBrWj851W0+hm2hY+
	 /G1z016ezvgKUaGfomGmX282Z/HWJ+kW8L+KtR2JTnV5HibSS4rkm88viyTqaLxpeD
	 qbtsnbeQvCOmUeyLiBUMG3LxrY3GwloleTloAPc6wEi4KF0B9nKhrbuKIJzn92obdA
	 q9bhbvqpr+H1Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B8785CD4F54
	for <ddprobe@lists.linux.dev>; Wed, 20 May 2026 12:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177927903374.846.12886932467524531441.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 126523f3f59de3b0fe2b116d50e3a461b6d9eaf5f1be070eaf2bb7d2f88acc61
Date: Wed, 20 May 2026 12:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779279033
