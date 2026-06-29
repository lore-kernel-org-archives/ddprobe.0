Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 70A813EEAF9
	for <ddprobe@lists.linux.dev>; Mon, 29 Jun 2026 15:08:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782745714; cv=none; b=AuRNQsiIdqAQESRrEH5UNW3Kb1/jTZZ7hKD8Aa6c5/B2smOxOPwxSQyq6EjA19+C9NJZjIbn1SEy/Ppq48Pb+p98uKuokywwmANqDkDYwrTyu727RPQAvFwj9zGf7/RA/vs0xrkT2rfBDF3ZpHmdSapoYUiQ3arHJYuilINIE54=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782745714; c=relaxed/simple;
	bh=nRr9or0lDVL71YQFhh4c07DbELeymSXO1QTgENh1WSE=;
	h=To:Subject:From:Message-Id:Date; b=D0ve6b6JxvguN1MzznFQ7ZAiJ8qEn6b7JPt0yfeHnlOpRPAdjZMjQw742XzCJPGpdZ+2AEeRxH65+djbi9uDUDnwyUgqPsRRaOLBlLssnxRaukDDWTUnLscoaFbjkicXJ91k3MPhuI3M0sAPKBZEUt6S0ePK3DFenYa3AqL5CdI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qPCEpa+f; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qPCEpa+f"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5698C2BCB8
	for <ddprobe@lists.linux.dev>; Mon, 29 Jun 2026 15:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782745713;
	bh=nRr9or0lDVL71YQFhh4c07DbELeymSXO1QTgENh1WSE=;
	h=To:Subject:From:Date:From;
	b=qPCEpa+ftQna8MCJIsW/7K7kDAdkJhXnXKm0QeoIH6GonkOZT0Vs2ZiAM3qfSIGj6
	 XzWxftpmVtZrwAOD6Z3ic/Tu0a2cE791KI94Nn7aoNrUJBzGv0zUtWwRQgcXLatxOe
	 4+OZIudTsOvkb9V47JgzXp7pVPJlKGVBQZmKLYDE0Bim99KdEBSiEdaO+PJYqUmj3D
	 zdclTSpr2hxxqtpO3IHcXf2HNZkxhPXGuH1EO1PP6ihhQsf7wCZ4zNyxr/2KzJ6MMF
	 RFEou1x0HP+8nj264f2SI5ouI9eH8MQ18TG1ylt0rgCilY535PP17Nj6FpHNs26nrc
	 WzrrOLoeMpLAQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADCEAC43327
	for <ddprobe@lists.linux.dev>; Mon, 29 Jun 2026 15:08:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178274571370.8021.4010663842879282362.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a37a52cfb667e987ab78dacbe479b2c6f8499a9a1199dfa6a7625c9d1c6a345f
Date: Mon, 29 Jun 2026 15:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782745713
