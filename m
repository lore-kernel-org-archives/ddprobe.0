Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 15D4819995B
	for <ddprobe@lists.linux.dev>; Thu,  9 Jan 2025 18:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736448954; cv=none; b=eQj8gGPoyz4PKA55/FZSiBgGbUUDNiCy40/4u2c4ur07qRxFwFX8c0O/v/VHFFcT1i/AsSs5TNQ+pD9zrn8ZZRaaubjYvStxCum3ccpsHpCVuFSIERiar9fV7ZW2WaKEsQTzA9pl1sswyF/u+Ef9ZdwWw4sU5tRepAhUJKBDK24=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736448954; c=relaxed/simple;
	bh=QlBeMWRacDC63KynrgMB3zx7HXd6/0ILh8rBEDcmQdA=;
	h=To:Subject:From:Message-Id:Date; b=U9rTJObGS8UjUKeAOTMGQTUI01xs6jkVAYxA22XgmN1QewZYE5cUErmmvV8flYsZ71+u3NMvQJ12CyA9dXSBxP7NEdmiDDLPsKeKTN9oy2kCuTnWyibHR2zYqeV0lUSzl76NxC3CUtgGYMKPh6ZfR6yMXoLwKcHt7+Gas225zFQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LG0pIr/v; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LG0pIr/v"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A641AC4CED2
	for <ddprobe@lists.linux.dev>; Thu,  9 Jan 2025 18:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736448953;
	bh=QlBeMWRacDC63KynrgMB3zx7HXd6/0ILh8rBEDcmQdA=;
	h=To:Subject:From:Date:From;
	b=LG0pIr/vp+6VHeq3NubpRPMd5IwRumlYRNVo4y4i3v3GTvQP9D2V/ZW21S0JgSWVS
	 2Fo1B/di4tF3bmxg+zvcAK2sGtp7GpbJb7PVWLvTAiEam2BAM2O2Ni/35Zk7EUGp15
	 Bt5D516Vylaw/BaxCxo3hD9eCCOYtOPjp2wUwpwUIOiwv/ddln7bziPhihDikEQZCs
	 O/yWgpRo6yTG/ofDYkgOdY0ZOCuSxYVryJTgTMXiVhHlQ31jsHR5m8JmChfArde17w
	 Tc3J0Psm9/EONdoprtsNq4+Tk26EXQTlFdD++Uc8WHgLY9O5hVelbc/5Y4xeD4Re01
	 nI56ESwij5g4A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92450E77199
	for <ddprobe@lists.linux.dev>; Thu,  9 Jan 2025 18:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173644895359.31339.11644890681222444139.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1462c1341bdfde5d48c6ceba33c198b90734dfd74189e5dbd215c8819497615e
Date: Thu, 09 Jan 2025 18:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736448953
