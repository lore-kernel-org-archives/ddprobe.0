Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 10AD1324B2C
	for <ddprobe@lists.linux.dev>; Wed, 17 Jun 2026 22:16:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781734594; cv=none; b=gw/NVEG47NqV1QNQ03XJWjX63z5H8CKCarK2S5EtCxXlvwtbPP1BU1e2L/a9Fa7jZDXt5D2qm/xL7vLY9lGCrTl/xZy3n9wxWm3BG2d5WxjcbgCeMrkQLq1uTM6QgmUgE3uYHgMifpaFraY9wpnWl/rsm1/vR/D3yy2BC/V+8r8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781734594; c=relaxed/simple;
	bh=vw1i8iyzVtbzo9wuFV4Wbsa4dMGhruPzypvsc7ecvaU=;
	h=To:Subject:From:Message-Id:Date; b=mi9AbPc7JGDPAkqmr4+h/V+bwCSxop71fJOOIWN6phGqKYHtwVsdNlsDYf27MtXi/TNggFW9Tqqqygm1mvRq1KWnua3LVHhssdpbmETR9P7NAsaAagf+hbJTO3WsAcGuJbAlRaBgNPXHxNRyLuDm+ekeWrGjt+KI7ZBr07wLJpQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qofg/b6P; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qofg/b6P"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB669C2BCB0
	for <ddprobe@lists.linux.dev>; Wed, 17 Jun 2026 22:16:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781734593;
	bh=vw1i8iyzVtbzo9wuFV4Wbsa4dMGhruPzypvsc7ecvaU=;
	h=To:Subject:From:Date:From;
	b=qofg/b6PRBDnsgEWweCS6bUKuuQ0KaEY9RT4yc1okbm2YOrgQ+1NeVcgEEKIVX8kE
	 8fhE1iHRc52itP71eJEU9JbH2UBcD1rzoHVqgtAKc12VEWu5GJjwoRLvbUnCT8AOuk
	 cdERUC0RSDYK+KEJr0/dnZPWZMJ4RML/5Yb6/p8/M+py1TQUX91JTPceNLzOjyLV5J
	 P7t2/I4oCqlh1WnDrG4NvqelmnwJ955dsTsZyhRTDno8ErokYQWqxtT+a/4rANUOiR
	 V0D0pw/YGKYevvHAgJd1Faz/JUozDNy+0zD3S5iEUw7uQ+FpzHHELSW1tNZipcaq5e
	 3USMWF6aScuiQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB741CD98ED
	for <ddprobe@lists.linux.dev>; Wed, 17 Jun 2026 22:16:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178173459369.623.1424538478869268084.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 580a89b0e45e813feff7fa537bc04facc0e2202fdbe2fb3cbddae6b168cbb82c
Date: Wed, 17 Jun 2026 22:16:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781734593
