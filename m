Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42B581A2658
	for <ddprobe@lists.linux.dev>; Fri, 18 Apr 2025 08:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744966794; cv=none; b=R/yrZ+nJK1G62zjXPH3s1bvUzt5Z/oeYMOSoG/7I4wC1B0fm03lOgniqt3k02kTqmz9sE+kJbbaFwEZWEr5hKnISZsteTzn0y8z1SOfjjOvm93LAbRmoHwBUB5QkPOYyEx0hpRe6b1yTMcTJqfKOLX240flNsFYwJM3zPQnnQxk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744966794; c=relaxed/simple;
	bh=4EthjFmJDY2ilb2pFDYZhJG5hwU0WCzyHGtcwPPRF80=;
	h=To:Subject:From:Message-Id:Date; b=uihLSq7SPiE36DhNw83m9VCbISQAHOxOMsvzB94qPYg6KJ2vyNDT/SSua6Xhtl/t8+DuTMfHnqabJGM6y3tE6mcSTUcetJa8lZME8XKzwzAedQwknzBmR+EMABLLu1ycVHa9OQcDV+3JyynyGgsHP55r5gbTUjYBaMK4LSlUiRI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qAwDF37M; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qAwDF37M"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B6486C4CEE2
	for <ddprobe@lists.linux.dev>; Fri, 18 Apr 2025 08:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744966793;
	bh=4EthjFmJDY2ilb2pFDYZhJG5hwU0WCzyHGtcwPPRF80=;
	h=To:Subject:From:Date:From;
	b=qAwDF37MXMoccVdGOuLAHMYclnCtUbd0VEprFYUmNiKzayMgbN2Rxukph4h+rpfjo
	 jIXmCN49s01Nu2/sxduZVOFW3J0inW8AoDXZ8wmwsIgQ6YMoah4oVzFe2hR0jtvIs0
	 h7cyy1n9qLOWLFtvs7TyUh/48wqiyPCj5PiUOsB/Pbjszy8hxb4xNXB25pIGXld/eu
	 nOgfgChyRvMlSg6X78mIOw0LWnASTlx8NaMWdAxvERDtY8MjIO3B4CNwSQ+QezRdDE
	 rVpoQRNoRumSX7jY7Ai3JjM3rWg4i+wWcQLNao4hB9QEtb5Q1HUFBbRjdcN5R7OnDD
	 FFIlgft5pog1g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A6DDAC369AB
	for <ddprobe@lists.linux.dev>; Fri, 18 Apr 2025 08:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174496679367.22591.9347604023789517367.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9ea880b7da4de1b9fd68f4c968182d1f7bcaca96d6fd747a2f3922e6cc05fd50
Date: Fri, 18 Apr 2025 08:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744966793
