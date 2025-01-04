Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1883C1C687
	for <ddprobe@lists.linux.dev>; Sat,  4 Jan 2025 01:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735953354; cv=none; b=hULhMFgY5V6OpUWFj2XJec7m2lgeZP59JTP2X34ZhizeHNkceRqDAg3U7n8dKwAPsU8X/N6NRSSWcepIy7E0whbn3srqlexjtKpY40BFrc8z1qiC4CLlkGil+H0n8Dcs3gy/HoPqWiYsXOS+66zhsa3hOg+4mZ5sUYjii08x0mU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735953354; c=relaxed/simple;
	bh=MEfcGeZmA10Rx/z7dwLiK2oHg+5S7U5On1fgv0hIu54=;
	h=To:Subject:From:Message-Id:Date; b=RlQO61HA/Bbz2NtHsXBHOMRoZj66sVkmxa5u68OvfWTwcoD3iPIKGQm6N3ji1Y4U4xU3+vlYMOh5P0KUjnfxwEv9lzLjJh54vcZzGNk9Y9uc+0mn9uXyKoV4hYG+WxEUOX/T9lRUrs8+om35R6KI2CrICvQ8qWl7osmrZkmDdSE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oGhO3UrB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oGhO3UrB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2BFFC4CED6
	for <ddprobe@lists.linux.dev>; Sat,  4 Jan 2025 01:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735953353;
	bh=MEfcGeZmA10Rx/z7dwLiK2oHg+5S7U5On1fgv0hIu54=;
	h=To:Subject:From:Date:From;
	b=oGhO3UrBaCDhUyCyt38YCwt+UteNkR6O1oPlM78zqcJXT8dYgrVo+ByfOithLHkT3
	 enPNSppA4IOxfDOPMrXuTBVCko51ywYprbdNl5Q5AHfvKleR9dQMFLtr9d9pF/QViD
	 nsls2gqGumaY07MDeZW/sQk9cnEVGeoiO7Mn1OVpLyu+OIrooVdbRuPcgj3OUrvGFi
	 jCSCPZ/XeUdY5CLLH9/JRQ/XziAWCXUEiqikS3sf/AforIZpnqQKjn9DEC14M0niDe
	 aRP0hZI2SdydrrKNGOuSCw9gef0645lyMkAqMimNaIfFnWBNF+bokQ9PNAG+n0WMOy
	 Iie7famC5c50w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 931BCE77188
	for <ddprobe@lists.linux.dev>; Sat,  4 Jan 2025 01:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173595335358.22497.5801845589774499461.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9738bb93f7158fa72f61616bae86f773048c6806f0cc32ddec55b1749c22eed0
Date: Sat, 04 Jan 2025 01:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735953353
