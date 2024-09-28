Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28F632FB6
	for <ddprobe@lists.linux.dev>; Sat, 28 Sep 2024 02:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727489754; cv=none; b=W80nCoziM1mL7ih39EsvaME0MVhbHTVSTydNuVbHvXGXSU3Z8HJ2WWbpY7jejM4jYFhSuzqQWHsS8lHRLEMAe77HJBseXPe9irknGjTXyugcArGGY+mwA7tRI9eQHc11wUw4B5j3qNmsg9wDjcUh02g+v+5R+8Suow2CdAC1dps=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727489754; c=relaxed/simple;
	bh=5palHgS+/LDuL1tPw1MqHXKV7OrnmSKpLoVC5g1aq5w=;
	h=To:Subject:From:Message-Id:Date; b=HbaABauhNdSVcjnwzlyLtP/F1vQOwaqOMEw3vSjLKS+vES6eUdxQq2XWYg80ps2SBn0TTt8DDlW4PHEm7ZMOsCs6c33isdUyUJC0HwB+7RDK1DPEgJQetHMO2QsyPEb+EwaZpB/GNg1rSUGnBkBGshwBio+CN/1s9B1W81FyALs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aCv8XpMK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aCv8XpMK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2801C4CEC4
	for <ddprobe@lists.linux.dev>; Sat, 28 Sep 2024 02:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727489753;
	bh=5palHgS+/LDuL1tPw1MqHXKV7OrnmSKpLoVC5g1aq5w=;
	h=To:Subject:From:Date:From;
	b=aCv8XpMKz+J9+nZcgutGvxxV9sAWWidTWBnlFd/HqjSU+HWaiZXKlYaFvfSs9HOGP
	 /E4YZPRUpDkDRYItQVbAPcVwv/VHG0bF+dhVL7lFFR6P/Csx/kqTzX0UHzCbLjsN3H
	 GMolL480JI0HMsTarwaZqknKHkpQkoQTp08/yUxQztYAFieJR7UZrSqbojcN/JJMo/
	 4uv8dYE05mmGDjee8zjt99akPLOs+h7U1M120bumVvDnw8/6yay+qe2ARyctViISAg
	 X7MgDcIv8hLIwywPEwLzsrMEDn8hjUxupOJ+dBGF3iDikZ//Jl72/bW0KrGLMSPVWv
	 jhazVSRWUWm6Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D2EACF6493
	for <ddprobe@lists.linux.dev>; Sat, 28 Sep 2024 02:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172748975361.20945.6705204918587793802.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c9206399f477d426c2812696d2f9ed630a3052c9648143cb33ed3311f74ee8da
Date: Sat, 28 Sep 2024 02:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727489753
