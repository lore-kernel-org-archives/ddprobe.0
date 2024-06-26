Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A46F17A922
	for <ddprobe@lists.linux.dev>; Wed, 26 Jun 2024 10:43:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719398603; cv=none; b=pqqtQQHNsQ3MFF9NxjYN0ogJrB/AOeKi/MqEz4sPLzAo+WCWR4Dv52h6opcWHgYNzFSe8rQngFGqNlv/8uqIMNldPBw/X+fyjPDhm0sB+TZ8geb2T4Vsfrs2xy+DxCkvVwuR+r8NBDlctVb0F4HikOulEM9lzLqikqHWGfZ2wV8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719398603; c=relaxed/simple;
	bh=6/+nNqqd7MuejOcF9bkYawwen3/+qX6hfGLOdDnifKs=;
	h=To:Subject:From:Message-Id:Date; b=IWfrj76q1vKwbPhhpXkhPalH/7Vk/mR/nLNymvbBF2yNsCUHsefnknsDib9tWx3eQBo0nubMo2aYyEdgQmtg22BB5QLv2Sa617K8x1XkgDapch6sJgu/TYEGIRDOB3gi0va3VI2LJptk8bPxk9vyMj4j71bmNekTUvf3tWymbXo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LD8LI/k7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LD8LI/k7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D26B8C2BD10
	for <ddprobe@lists.linux.dev>; Wed, 26 Jun 2024 10:43:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719398602;
	bh=6/+nNqqd7MuejOcF9bkYawwen3/+qX6hfGLOdDnifKs=;
	h=To:Subject:From:Date:From;
	b=LD8LI/k7RUgtNukXee+xqJcBsDXlxkmojmd8ycnPFRd2BucJyQ759KjbqJDWkrwPC
	 rl3Etb4KPaCQMtuaVBHyxcmqVh/iaBlagjdP4Tcmk/ogx2Cx46RsxGDFlczZn6r6x+
	 BD9+71MpsGc1jt4mkE3gn3/uIUYlDRg6fPAelCI3nmG48q1QPcBoeLfhKUWO3NdNkH
	 Zri3ODtjpFJzOMAmbxDqaZIjr3STnW9E+3j8ODs1O9XUD2xKColjBfQ1Me26wQs5Y4
	 m5QxPF6XOY6JIeXQOtAn/X55/rlLKEfdDhzq+tDThobMaC+wgt1ox7vtPAbFDy81/y
	 P5i7ZPBewEx7w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BE9C4C27C4F
	for <ddprobe@lists.linux.dev>; Wed, 26 Jun 2024 10:43:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171939860277.32208.4550279455718508775.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 84cc996ca2623d8d8f8fb9b4caaccac263e553686c0d7e0c1dfd13f22f599006
Date: Wed, 26 Jun 2024 10:43:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719398602
