Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F8C234F492
	for <ddprobe@lists.linux.dev>; Sun, 17 May 2026 09:10:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779009034; cv=none; b=ltjf3ICDqhjBu+0uqOyHRARcw74fsUZ4bR8k/AUiVzX38WD1lOVyGcnPkb6EGi7zgg6AwEHwXP5x44fdqbcQ9tI7juLTzGNLVxHojThvkMQ5Yc8nHXoxAPivsr2UJeMeFpGCEi8cz/h0JN/fdQDxyYzU95FMRzZ9M+IglbVTUPQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779009034; c=relaxed/simple;
	bh=VqIOcfcmkR2PhFDFEKinvh5QO0fWLK1c7enzL8dLY3E=;
	h=To:Subject:From:Message-Id:Date; b=YqazttI5kPWGZYRRAuh/5EgjaYzqEPysdU1IzvePSSiz5F3r6gcd2mC/ZREBozpWv0WAGkgvtYL+Jta1oCdWvRMT/FkIify3uPsLIkW3PHMi3PbL0BTOqMh37+g3b30PTMi6qod7lPA+HZ+mHWcIK33qe0jSXk/BelH7WawnEoE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=g1m2da0C; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="g1m2da0C"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C06F6C2BCB3
	for <ddprobe@lists.linux.dev>; Sun, 17 May 2026 09:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779009033;
	bh=VqIOcfcmkR2PhFDFEKinvh5QO0fWLK1c7enzL8dLY3E=;
	h=To:Subject:From:Date:From;
	b=g1m2da0C5Z/aHCj1j3suuxIpwIkq5gFPk6eRNezgoDzSayafzknf5xSJ+6hcAJmI1
	 XSB1Tpi7pkL5VDvrr6/IpxehxXR+9aUZXfgroFbE6hbDO2ueUmUnhPCOxyrIs+1Qw4
	 dzOvsQIRT3LGzFKerJLO+SbFeFg7QPySqGKEJuhE7deFFjDAl5GDJtvdjxcBEsswhU
	 cpx8rQkoJsoalMf53iZ3Vo4powtUmNH+VxsArTayoMsjX4308lHosEWE1g7fRfTLMq
	 RWhrRlYezts3FRXT+J64V5sutdovpp0P+kjJ+6PaR0ATKRRuGKudhignWLrMWH57xH
	 ouAYlhdKiOp+w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADB70CD37AC
	for <ddprobe@lists.linux.dev>; Sun, 17 May 2026 09:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177900903368.27197.1234050307495000162.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b77e58b55e1b75eb58accb73eaac8cc208c63f7b873a722933e5dec69ea37db8
Date: Sun, 17 May 2026 09:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779009033
