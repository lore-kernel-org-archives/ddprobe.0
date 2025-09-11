Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0A2A32E62C5
	for <ddprobe@lists.linux.dev>; Thu, 11 Sep 2025 08:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757580594; cv=none; b=uiGSblg2bVGljQ8tHkeZK7aFP1S4WHsQeS/3xgdYvsPp0x+D6ZTrYPtaebF81RuKx3ce0JIdIhjuRn4Ut1hYR1pJ/CKVBIJHYLDE7owTAjYAbzgkvGTyUnGj8X9+hg8vi/nEVqYyd8Mza/dm1beXIDBf+JHCw/0omCoPPWwJczE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757580594; c=relaxed/simple;
	bh=aQ/j3qpTPdQ9Acdi6vsfqHjujMNPlotM4B8vEpNSzHE=;
	h=To:Subject:From:Message-Id:Date; b=JxuxZpJzNg0AmggVmaFEXMaBZPiUhMWywqlHFRb+u9diDVTG9GfTqo47zrRY54upGCtaY0RCkbXbsr1nX+/ETy34UXNJoqfXaBAMT6jPWym4k1MPr9PakQLn+20tsSb3wU2BDcAUOtFlbdTADj4fztbhKVBGJYRjon8KJM6qeek=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DkaIbjrW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DkaIbjrW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D7A9C4CEF0
	for <ddprobe@lists.linux.dev>; Thu, 11 Sep 2025 08:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757580593;
	bh=aQ/j3qpTPdQ9Acdi6vsfqHjujMNPlotM4B8vEpNSzHE=;
	h=To:Subject:From:Date:From;
	b=DkaIbjrW23ilL6Xss+vyerdqdP77Nix4EM/EjAwARMHuQju0KXGGdDENmMKROVsX3
	 bFzeoKA+VR5dxt8vwXCMOHrNvnprdlvK2VY5A4VIG+5eLMCVj0l4CLe4vtcMto6HaB
	 I0kKMHrkd+zEC4cShEQJz6HHk4AU1RlMeSU8zGxn6faQZqKuXNhyz0/m6SoKkOh5tT
	 a251dsscBgfJ7aclw/eZjjvbxUO1jUvk/Alsj1rfd6ThbRJHQKZGPMyBeDtW4NuhFF
	 K8tfW3XybazpidMgn9lvgvSXPABFkPkI6RmIbpKvOw3Ett3XzAStejqDPLdyYS6qel
	 MIsk94w2mDSfQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F8AECAC58D
	for <ddprobe@lists.linux.dev>; Thu, 11 Sep 2025 08:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175758059357.15464.17157196919494549318.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4bbbea0e12c373ed47f043aa50919d40670e6a5115e715534c7f218999fcc5a5
Date: Thu, 11 Sep 2025 08:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757580593
