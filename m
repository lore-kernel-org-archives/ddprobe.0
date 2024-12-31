Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A5AE22338
	for <ddprobe@lists.linux.dev>; Tue, 31 Dec 2024 03:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735616154; cv=none; b=Ep8WfEb728sDHPVNY/0Z+lSSFXjYnWnQuN21zNLwjsV9ydJzEL5NMuZDN276zXImbn2i0iR3RaXAK28sOdcu9xVmnspCjXA//QngBdwgkSP2J5u0HPofzKAfq8zBiO6W/1YLE6e9GTPiML4TKn96+EdqFDs5M9cDm1esRALIZMQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735616154; c=relaxed/simple;
	bh=3Vd+5PS2UCAnf2SGUgnADU48AtXPm+XUECxX2wBdNsQ=;
	h=To:Subject:From:Message-Id:Date; b=IYp3ao6VBfgWTWzTex0vrVLAdAQGrrLc6xrDnx8OekkBLnnppSiKKVRagf9ind2Aeq5PpmrOYQyy/CbbA2dEj7HQQJIBDrC3NjluvAiyCTeRgnzEA6vbCrCxnQI1qwT1MMmJfFmZFkiToofcs77CHdTcLXdCz7IWoKC0SnAbrQI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rX9npm2S; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rX9npm2S"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B24B4C4CECD
	for <ddprobe@lists.linux.dev>; Tue, 31 Dec 2024 03:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735616153;
	bh=3Vd+5PS2UCAnf2SGUgnADU48AtXPm+XUECxX2wBdNsQ=;
	h=To:Subject:From:Date:From;
	b=rX9npm2Sl56/uqf1jceM+qdnxdTqT9Tbqxh+D8lHF3jkJrg9/MizBNVk9pwTuNfDV
	 NeAccAiTAshlTjqoXEFm/BxojG+BQ19p/SGUvCtiOYv3HOl2C4YFpkyvLjDjYHGAxe
	 TxwH4PSkpS+3wyoHlVK4w6lz/TLguQhHu/1xtMqC5oacm1AX24andf7xHIwpWLPBV1
	 yfA7wvbWuPwOp/NqTsO/E4dy0uWpQ5KEICtKmS7aSr8lMi6+S3BhJVHBP4LAeOGrOa
	 hULQlHU9Im3yjFpZy0mPyxxjgC693n6FagAS/XbxtGxXoR8jLuB6PcsruWK3Wee63P
	 hYf52qPePV1Uw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A548E77188
	for <ddprobe@lists.linux.dev>; Tue, 31 Dec 2024 03:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173561615359.32655.10206601420324749332.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e9717d43498492d3616c1a2acad99eea607527f6b1c2e39e632217e1a4c89c5f
Date: Tue, 31 Dec 2024 03:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735616153
