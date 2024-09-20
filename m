Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27BB617C22A
	for <ddprobe@lists.linux.dev>; Fri, 20 Sep 2024 15:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726844754; cv=none; b=Yxvo4roPuXCdN1EhISe+si+5dhh6Q8jhLp14gjS8YbXorL2j4BK57LETEc9YBF2Q6NCMfDPrcy08W8HmCGXIOCDEbEXeu7KMR6BB3v6E0lehLZQ+YyiLLyOhU0HentQXnk+mcHF8fzMCSMIGBXmhDdmzYpoTEmxJH6xoZpZH/OM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726844754; c=relaxed/simple;
	bh=Onqzm5kLN71S+e4RuQnzQdZSWbG22eWBb9iGWNk8dRc=;
	h=To:Subject:From:Message-Id:Date; b=njpNnlaXk3BK/n6wkFbfcDWuwMs54XQyEPHuV7xcoZlTF3ZD5pzOxxO/lPeyI6s5mfrfKqV+hXl24PHGauWKGSH6eGa2ZPoSI05wK4XF0TWLADeJYJj+fSAMXt9LUjVogat5+l+ZU/COkAUK6ISaZ2LpWJ0Csh9JT/SHP7u/Jwc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RZXfFPup; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RZXfFPup"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6067C4CEC3
	for <ddprobe@lists.linux.dev>; Fri, 20 Sep 2024 15:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726844753;
	bh=Onqzm5kLN71S+e4RuQnzQdZSWbG22eWBb9iGWNk8dRc=;
	h=To:Subject:From:Date:From;
	b=RZXfFPupRx/TYvLVm705RfmDGlR8ktSb5VAVMKPexmhy8GCvsEyTgsOuYUSyRxzdw
	 v16xMDoMVst3XrYYbZMv7ENd1HReNifYu5UP5kbaCz023ofYVNIi5i3GsQjsmvest1
	 HCeH2IZh3O8mqLiXb7rzpDGfvGJZSxAz8HgG1hMOOIZNq73spBlBEoht7LnpA88Mt7
	 GeIX66saCH3ZOvljZqzrM6e+VWSfHvh78N9tkcwBCTIEV3Urb8/63CdnglGFSgWfYT
	 U8TzUeWUXbr64jrv5iviByPQYOZYzrh1W2Cji3dOLXWHB2YkTIGL0Dexajr+iDGNb8
	 xEudxQNnEwKZA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96CD2C78858
	for <ddprobe@lists.linux.dev>; Fri, 20 Sep 2024 15:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172684475360.26051.828575923049503275.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d14b13062c339d43de0ad25affb4a0f0354cbf8f1eb3e2bd464edf74ef9a1a1b
Date: Fri, 20 Sep 2024 15:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726844753
