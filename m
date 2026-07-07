Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 721913B9D8B
	for <ddprobe@lists.linux.dev>; Tue,  7 Jul 2026 22:08:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783462114; cv=none; b=A2RWoddohLT/FZlSZxInSF4ye4llBCvapLWYTylPFquZsYdgFKM2i9UKSFpj2hyvMg4GyrX90LoiBM2W2yO6GzvvGZnNe0qwVGycEcv6KR0HXzWPrzP9oB2ibVCRubJOBrzDh7CL1T4k7WECO5PVpbWVlSZoISA2dkdJbq+laAU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783462114; c=relaxed/simple;
	bh=nnt2BHR5UG4dbNyjz+Ar9DpqLayCuYELo3e1zDvgJNY=;
	h=To:Subject:From:Message-Id:Date; b=srnvFSCi2X1QS408QojA59tTPgSnvc02jC+/2M1VONTJCXXQ0sOdB+GDb47piiH+kaz/JJP4a95G7o47GO74RW9CyGXARWT98qg7aR7r4hGOG23TgPQ4jy5M5I2ermeAjEM2zUZA3Z9rY13YVstn/xF8ZrmnZaAtqo1JBPdtY54=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=klVRVsJO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="klVRVsJO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CFA28C2BCB9
	for <ddprobe@lists.linux.dev>; Tue,  7 Jul 2026 22:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783462113;
	bh=nnt2BHR5UG4dbNyjz+Ar9DpqLayCuYELo3e1zDvgJNY=;
	h=To:Subject:From:Date:From;
	b=klVRVsJOEqfcOWx8jf/EEIHCoxGtSLDG+Wz7A1CWDybPNpeyc5DdWnWKJ1eqSgPrm
	 k7cMnWlRnUm9qjPLJjPxcvMY3q9qZ38xPprgHQK1UBFzepzge+J8lhdUWg1o7uxd1k
	 7sNMQTRnk6dJYWM5Nz3M0k+OyYgDsyILSih2i0vbEMVUtK920+70oYIWw+nGF9dwEB
	 L6KajD2Todv2ov8ZBtCLsBkD47PM86/ZSDoM78N/vVHQIT0uTGqcKKc3hoW4rvdTqC
	 LnC2kM9BM/rKyVCLEPKbBWd3haGaYH6GobVykPC+VOYjLcpn/HBNiWxDus/bqK/37D
	 dHbpx8M6kPNug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF18EC43458
	for <ddprobe@lists.linux.dev>; Tue,  7 Jul 2026 22:08:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178346211368.24848.1704101401602562247.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 44a19382f24bcbcf2463abf1d13edf4c48552a2576feb4e8dd1ed5a33b287686
Date: Tue, 07 Jul 2026 22:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783462113
