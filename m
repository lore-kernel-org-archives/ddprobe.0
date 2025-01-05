Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 49821146A68
	for <ddprobe@lists.linux.dev>; Sun,  5 Jan 2025 13:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736083554; cv=none; b=HjhLvp1WwoQRaUFxEghG6Py0qxuAF6l3vb70CHlXdVfYXxeZLAM1STMfxpXvbMSKyHGi0bjb5rAuT81ucyF8wCYLUTaNFVYiI8vwZvJht0JI4kkBq2dyONzlpSpw802AKYsgB/D93mmzIfnp/51QVs1QtVFlMoYUbKhnw1XXLwQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736083554; c=relaxed/simple;
	bh=Rsy8JRs4cyuuTDRvWdVEtSsvH+DQVY8bngEq64mwoaU=;
	h=To:Subject:From:Message-Id:Date; b=Gu2LuKa8tFSCFZp2slleUrKfxB4RH0b96suqyWT9g2gH5Qa6uWwm7QuvKbZXGeVj688ylkCjO0f0pyrIREaa43Q9c35d+Peyr08uBv0LUdZJaUIC7PCdkZlaSmt6e4CAFE/m1qH9zq2pFU7WERF4ABFKxCOsmtb4keSgFNrOIZM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cggX++9E; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cggX++9E"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7145C4CED0
	for <ddprobe@lists.linux.dev>; Sun,  5 Jan 2025 13:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736083553;
	bh=Rsy8JRs4cyuuTDRvWdVEtSsvH+DQVY8bngEq64mwoaU=;
	h=To:Subject:From:Date:From;
	b=cggX++9EIJfbsrAMfus4rik5sP06/2/1iXfrx+R9LgtfnBBvuLYUDGwerniIzAT+3
	 DbMgfugh6ppyAG5oW3d3MY6c25YT0GZitxFiS2qri6afLeMfd5b4ypJSC5w4L6H5pd
	 X8i7x/O7VzQHEpSj+DZcxlnAIKtwu6VoSauW6SMZf7mF5B97OJkuKIfXfrzEtuPicZ
	 amX0sZZS9paN2P254tXWl2YkL5PHwy2iLkn6aC9xoQg8LKCrs+Yqgady1x6lDEombF
	 ceBMH+ot/PGM6doHIH1Zb+dfpjzMyrPhJ7t47Jkp4+0wXGT+CSaW98pTLnSMUJ6WJy
	 G6KgBIFvS82qg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A1294E77197
	for <ddprobe@lists.linux.dev>; Sun,  5 Jan 2025 13:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173608355362.21678.13621380290686132931.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 689f34438196952738c80760b466e936c19c00d8114aaff76e8b2c32579767ab
Date: Sun, 05 Jan 2025 13:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736083553
