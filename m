Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CFC21B5801
	for <ddprobe@lists.linux.dev>; Thu, 29 Aug 2024 18:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724954754; cv=none; b=qwIqR7sz1qEv6LwTQLLu09sjCplHEznLQEgTRMX3C7iwEZiKz6Hg2euT9p/liFKen1LCkHSnlLN5wANCjqFVfEtSMHe1Pwm1vtJ+83LlITytbdhSeusDRlSXII0awRQos6duTwcIoQ0A5hTTiHY4xt1uslSBEBwTPgs4hTouB3s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724954754; c=relaxed/simple;
	bh=Q8HNgaYeihjDh8eWZ0bneAMIASCXlGraSpJhNrKfUnA=;
	h=To:Subject:From:Message-Id:Date; b=Jz1Uug6ahNYLwwPbri8V8SqcSK3qhDpIHCX7RCtUWH1jGSgs2NKYVhqyCURfAeolzpWVFtoxPYaTXUQrigOSy6l4IhIWtkfIVC0KZrTzAFuDq1lEnqnKjYjezOSU3ZAYd6UMH0RG+Uv4ItvxzgKI9giUn0yoHPTStiTS/JE1SYk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ast6kqfa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ast6kqfa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD5DAC4CEC1
	for <ddprobe@lists.linux.dev>; Thu, 29 Aug 2024 18:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724954753;
	bh=Q8HNgaYeihjDh8eWZ0bneAMIASCXlGraSpJhNrKfUnA=;
	h=To:Subject:From:Date:From;
	b=ast6kqfaHPXUhh7bqdGDVoWslz+UCCbudcME84UEz4bqMKJKnKtFotem35KNNyjpa
	 Gv4+II4e81yXd2ArEG1NZTq9HcbSu2STfGHxil1AU52pGe5PdMcE/a7MZcNFeBJUa9
	 eFfndBO/cPBZ0ieP/tH0erbE5UnDJUTRqi+NDSmw3HD6C/RTnQlve2t1FEpBrAYLcT
	 fQYBuU7dv1zyL2SyYA2H1fpDx84kN0Rdi0wxU9m2AuHWmJV24ubQPDBmx9exOgihPx
	 XyZWbAykkAYp0KPYAYZPQLo2UXKNNlnI1JLh2kIANVBDkV/k88cuub4BWHPcTwng+7
	 Vonm7Av4UX/2w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9ADCCC87FCD
	for <ddprobe@lists.linux.dev>; Thu, 29 Aug 2024 18:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172495475359.3040.4198556264939759811.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dd4b287137d4ccbb54f3a902b630b381f245cecddc2a379cadf6ba925d43e686
Date: Thu, 29 Aug 2024 18:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724954753
