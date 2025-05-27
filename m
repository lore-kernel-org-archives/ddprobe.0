Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 336222DCBF0
	for <ddprobe@lists.linux.dev>; Tue, 27 May 2025 00:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748306394; cv=none; b=bOmQYcHK8bkz041fj/JzydWP5dETzj5+tqVVvzaNDDuq572nIJpHHr88TM85ckUbI6K8kJyZGf6AhlDYxdhEC6jt7TCMYjdcEE6X4/4M74Vmqo0SoEJ58xBJteirY/AJJ+Bwr1F9/98FIlZ0kyEeUpf0TOgFFkCwK6AQKmChnQc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748306394; c=relaxed/simple;
	bh=YcMX87XmyiMCD8R5OGk6nkuR5rNup1WlpgpBoVV6URQ=;
	h=To:Subject:From:Message-Id:Date; b=b89a6xz2RSNXg/dsTaANFHsYmoQK14dYfbYy3+YTq2ii4SKA/gVo3Rc26fJY5e4ny/7wtJdheQidLbcGPZQNwE+3nXQDZOJ1A1zhMajzUF+sunpBUcWs86msanbZxVcie0auTpwF65r86s9IUs+EYWPZwz690UZl2mO5qdJ0tNg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JRH62US3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JRH62US3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0F15C4CEE7
	for <ddprobe@lists.linux.dev>; Tue, 27 May 2025 00:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748306393;
	bh=YcMX87XmyiMCD8R5OGk6nkuR5rNup1WlpgpBoVV6URQ=;
	h=To:Subject:From:Date:From;
	b=JRH62US3A05TWWbWKIXAfNJyimlJT0QFlgmEs+C74t3VcNOTCiZJBn4slYhKGVg3M
	 gkKnDLvmfsrOfA0YQkN40Zz+wJ6jDcn8ScIXmKMOzXbvfeW56ltbnUvl5DQSoNiChG
	 CDTF/CHPRXi1fcT1z9GIdIjWrni10L6J4oLSFLLqdeuZCZdtlWz9TThjCEAxd936qj
	 2j72Ash0lw1GEp4iqCyKJzf2wISPtahllRVMc5toiQGaw37fr4BpLjXswuMx7BsVP4
	 hf5INlJNiO5hCUeUSZBQRoweNvf32JA8x3aSC5B5/Va7Ycy4uhfLM+BQ2nnyK4ALFj
	 evVf+gb7rQfaw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EE1AC54FB3
	for <ddprobe@lists.linux.dev>; Tue, 27 May 2025 00:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174830639357.27620.7150299839949737425.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8ff8bc2dc0b9d8dbccae0a42df9275399c28084164d086ffafd3f57596c41e0a
Date: Tue, 27 May 2025 00:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748306393
