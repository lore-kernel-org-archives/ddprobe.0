Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4244635E92F
	for <ddprobe@lists.linux.dev>; Fri, 28 Aug 2026 20:50:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787950234; cv=none; b=aNhPuash9yuIVwb1rKD1TsbkVK6n5g6Gsb4QBRFPjepMHoqNBQV3l4+2xbTeByKeMSUI3kh2iO3aEPqU/8xOg1VZ2A8y+bYW+CSAGCfAFMed9Ho6OadzECkyy9ipaWhdDnMhBiUWdOLY2Wz2MuCZlmcV9oIkKPqgZN+ohDYTBBE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787950234; c=relaxed/simple;
	bh=cfGFOx10GY2Z58r6ddCoHD51GfcF3sqmv9oZ9JbelBQ=;
	h=To:Subject:From:Message-Id:Date; b=GXmywv+/3Uwc9HahqP019d3n1I4fa8JwPi+j/ioU8qi3HypN1HOiiZS0e2CJlIexMCO4L7Q4bHXlxxd+nVHLasd40yoGp3lSfGDEQKvncUFYQZR/ssG0jsN8PIPnFlwFK99+jDRYot+HW4rdKYFrdj2f7nPvgEzh/kmSJ5kQ/oc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=U4+30Mo+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="U4+30Mo+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BBB9EC19425
	for <ddprobe@lists.linux.dev>; Fri, 28 Aug 2026 20:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787950233;
	bh=cfGFOx10GY2Z58r6ddCoHD51GfcF3sqmv9oZ9JbelBQ=;
	h=To:Subject:From:Date:From;
	b=U4+30Mo+Hld+R99ClIBafT6FD4hoOwnyr5AJ5Y8aU/Ne9alRkUd/gI46Mb/F+6Nnk
	 jcD/1fEEtpOX8kECeDE5VGUoI06bBoTluoBpW820TjKnc1vbI31b7otd16SGCUJjk2
	 W+ewDr+UVVUVGry/ZmaFlxbVsrPUCKCWzLeOKfQuKhBkV49OM37XMe2qXIzUYegSx1
	 lXugKnW9XQzo4XXvZ9uKMQoJRyfCRb96HOn1qiM26ybvlLGPciUouHrC5KsTJO/37y
	 /Ta0w+ORGG4nQA82ZMVOdYxwuzPTgDhbeLpwEyiA6W82UmLbb067teVGXT3Fwpo9Xo
	 3uaY4q7Xhbt8w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABA77C61DD7
	for <ddprobe@lists.linux.dev>; Fri, 28 Aug 2026 20:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178795023369.5613.11129575345348523796.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7f811bb2e31c4b0478cb740210f236de68a3088077e2110b45869a92605f446e
Date: Fri, 28 Aug 2026 20:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787950233
