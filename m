Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1DB6E3EBF22
	for <ddprobe@lists.linux.dev>; Sun, 22 Feb 2026 09:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771752294; cv=none; b=otyOdFT3vVoDc8n40OO8ilngcegNs6D27VcmdDzR0u4KHx/W3WQnJnjgmcweAZxKmsXLib6qYK5jQOoLqATy1d7LP3KeiqBNRfrPK+xXJ5rRVwFc/m2WoqHa658fefdGmzE8eveg+B1GdIRusdyhSU+553mXzZYzayLUw+I959Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771752294; c=relaxed/simple;
	bh=awCDEiAZjxdLuqPiG67IlQuQ/ts6BWPhVjSDvWADfCU=;
	h=To:Subject:From:Message-Id:Date; b=UWS05ii0+4/0gp4ChxUw1Oh9zDGfIDMMbnuwB6sKKreRL5PKBPKCxa1CqfUA43tLbSV1CsYCsBTCX58OgDcCOAWNZweKRct5c5POc7v+fBg1CfFy85wicF+65S+aCmwlwWFJNjJqWxxltBOzMEilsH77q6PZ6c0VtdYkjbkvyLk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CHLXIkLW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CHLXIkLW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2E23C116D0
	for <ddprobe@lists.linux.dev>; Sun, 22 Feb 2026 09:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771752293;
	bh=awCDEiAZjxdLuqPiG67IlQuQ/ts6BWPhVjSDvWADfCU=;
	h=To:Subject:From:Date:From;
	b=CHLXIkLWMkMM4ceCS2rKsx/JhdPWCiyRaQJKKBDW00aqq4eYDY9yVviqXfp+n1oGN
	 tB72FVz/9S+gXqJJt33AjFddEeRkVRavsQfIdcvkelkOpz6XEozfPaoBkki9I+RS33
	 mfEr+EszpUVnb5DkV4dqR5yjBX+s5YiKQ5xaLycyCntYBTkbQzPUEDtfRDjWay4uoR
	 Du9+iR0qp295DY4GMLYtmRxeJoPn9ATLbfz2qAlvuW3zb7adqzj+V86kpni3U4jIf7
	 1wrewjwEvmG2E30bDfFWqWjQjggYZoE6vaq8W5hG19RoypeUr67EdLjXdl8aX4/Q5W
	 8GS1VgYh3M2UQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FC37C624A6
	for <ddprobe@lists.linux.dev>; Sun, 22 Feb 2026 09:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177175229358.7609.13134101114328283733.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 77c7d01db97cf8e3e191fad9bc9ac1ba07a0670f7f73e53e62b67550d6482b9c
Date: Sun, 22 Feb 2026 09:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771752293
