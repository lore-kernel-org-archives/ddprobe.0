Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E2C93DA7F2
	for <ddprobe@lists.linux.dev>; Thu,  4 Jun 2026 10:14:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780568074; cv=none; b=tBnJ4Anp1HYaOvqyupOS5w4crVRx1Qqtci/cPeJdvZm/oM1jYlbI5vt6o0x3OXFpjqqZTeMvMj2fOwkimuMssqPxYi37satZp0joqnxgs4DFoLSjJi33u3Jw/2JjGFgEJKTqcCZqOyyfEJkEqVKQdJL1vLkIDepGX2du6AW1B7c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780568074; c=relaxed/simple;
	bh=ThuyqCPP9YtFZ0ClEBiyq+ip2fohFCIdsWH3DdbAHls=;
	h=To:Subject:From:Message-Id:Date; b=ceayZSrqWKuHaDozWZNbBDTEZRxZRzQKSkuvMFxbAfolqBjp6uyyC91rFe+HS7yaaXNVvQ3vIHFxaTDuU2uMAObLRMgr7LzIyKa/6OHxMmaYlyAQTLVRgcdSDOWgvIeZ5RErWeN3VrCEpxWBHZpfVhlxhnR3tMiJ8fdMIkr2rEM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ny6HeF/t; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ny6HeF/t"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1F4CC2BCB9
	for <ddprobe@lists.linux.dev>; Thu,  4 Jun 2026 10:14:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780568073;
	bh=ThuyqCPP9YtFZ0ClEBiyq+ip2fohFCIdsWH3DdbAHls=;
	h=To:Subject:From:Date:From;
	b=ny6HeF/tYV88MXhqnBc2hsLpgwQL80oIy/M/vxhiorHixVkX22gJqvKs54Q04kEln
	 zhpCN0+2JXWBczGBLZS/SdU2BW1SZQ22cZniGtvoA1NCkV/qyGsP6fh4liFmg9IO2Z
	 h15QYuyInt8Z56NFA1FPGDMqL5ruNc63jZOxhIckTVlf4USkOQl36UhXp24hyCxmLE
	 ze4tjMQBP4yYhrr1jFDv2dTh/NtypN7MJUVRw7s7d9Km6PDsAMm5jILvi1I+qEIJnz
	 4Mc3yjUjlsecJAE9ahQy4KpiEHpldwgNtiYL1KrcV4ATx01LeF5w+A8RIoCrBFE7qQ
	 LqY725c6mQLyQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A932ACD6E57
	for <ddprobe@lists.linux.dev>; Thu,  4 Jun 2026 10:14:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178056807368.30047.10995701804098529919.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6ab7d23780dc318007bca054d099be07ad4b210b523083d8d5a4526fb9fed481
Date: Thu, 04 Jun 2026 10:14:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780568073
