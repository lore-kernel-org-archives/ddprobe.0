Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5194B1AA1D2
	for <ddprobe@lists.linux.dev>; Thu, 28 May 2026 21:32:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780003954; cv=none; b=hXOK1nEGuiAHEgA5p2e85rYiqc30wDP2eitxyvpls9DvVGknLlDho1fuxCWImRpY1KOCS8Nn39FZbjfBtfW5Q9/c1XeULbntHD2PdXSWO2fbx0qRP5cJij+qeuA4rgvys+xM18f4ZB0RMBaVs8unQgbD0N2nn1RmdxR5LKkaM14=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780003954; c=relaxed/simple;
	bh=H4uqA59TtmV98ZsRrVdlm4VALyUWaTyCpm1/d+yakL0=;
	h=To:Subject:From:Message-Id:Date; b=mGe9WH1r7Q9EdW4+MrmKsUlf1yqZD6c5ZBDuW6dqTRNBw2jjB4BrR6mJ5CzOToMCYegFCZGb/waSbxygv+YvNGg0T/C3vSUav6wL93aSh84kW24F9dP9zag9PLpEYtXqj62DE4SfMesRlYcIerf8Gr3PCFYi8ufhMH/TCr/6fRk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jaevJpcs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jaevJpcs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CAC90C2BCB4
	for <ddprobe@lists.linux.dev>; Thu, 28 May 2026 21:32:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780003953;
	bh=H4uqA59TtmV98ZsRrVdlm4VALyUWaTyCpm1/d+yakL0=;
	h=To:Subject:From:Date:From;
	b=jaevJpcskDJ0ypeyylLT7R0S8d7XT+mJ+OSQx8tbNyUxeO5ReCO1t+8A83J1MkgjG
	 xp+p5JdHEifMQTAlmLtVmfJmhZGb0Nf4BT3rWrKcar1nI3ECBWPumA3q0Ey4+lcNSI
	 Z+4rhQmryEtNxPu0PuKY5Q3c0fnOm70W125LsttPjzXNEvUAFWmpAiF+rN4wQkhQZL
	 Ex3DI2gJe5HpdN/IF4dSGH3nMTbomAx9DkwoiI7iCa+B+G//ld9q+qAdZ7tzTDyXXZ
	 12nGK1lJm/afMs21DQqqb2wlPQB2moc1ZoDNhDgh3Q8ecuePiMJAkHmQcId9g0xS1p
	 9SABPuu2uHAbg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF6DECD5BD5
	for <ddprobe@lists.linux.dev>; Thu, 28 May 2026 21:32:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178000395370.2341.16153871712586057200.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3297f5af82a5648865233268f1640740e8f8ffb3260c34e3d609a57173dd9005
Date: Thu, 28 May 2026 21:32:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780003953
