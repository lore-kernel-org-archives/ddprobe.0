Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 01E29222590
	for <ddprobe@lists.linux.dev>; Fri,  8 May 2026 01:37:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778204254; cv=none; b=QhW4Mp9Plw56LYNw+T082o+uyLtS/bulT6bxY96HJsEB3EPZZ5TwaWfKKAQpzciuklEaOKa9D3hCkyv/W+827yyN3KlQ1e1QOni7QzMWOB62dlO9+YD8DJJSnooyMgdicJRn3CDX+KxMXo25wdCNWa/BBFbggmghnFs47DzZIHY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778204254; c=relaxed/simple;
	bh=U4y58TlP61LUAug0B6ezrcYI4TAtR/z/kFa5pl39VGM=;
	h=To:Subject:From:Message-Id:Date; b=XEeAq+yelbRoFti2YwaH18JY4R9I2wylifgc+YX3bTWPcS1oF+1rK9N7LvAZh+EYTOkDXKuTvbuAYkfiEXnuJedT36wzHZG0lRx6EAbkhR1y60FF4lMMLouCez64Ub6gG1BpDm0F4JEA3riTUdxUO9iGDLi4ndsZlyQGVWUnTjI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vNn5MEyG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vNn5MEyG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C3770C2BCC7
	for <ddprobe@lists.linux.dev>; Fri,  8 May 2026 01:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778204253;
	bh=U4y58TlP61LUAug0B6ezrcYI4TAtR/z/kFa5pl39VGM=;
	h=To:Subject:From:Date:From;
	b=vNn5MEyGJkDvSpO4s4EY/JjGMCHkmScENX9wKqtC3VB4ZHp7MO7SFaG1VBAQt8Wma
	 1/GxW9OA/CQg6JVE07OUZOCwcWU1Fq2RB54PPmECvloM2tfvvnd7V7jhF/Z/nc1c6i
	 5uYzcsf3qCskIxxvwpg3KSYZcvYzE0bfAiaxDzkKajZJpBIVt0ETjOgUfjWiJ3FCbP
	 g/rSppk875L/Fb+6MmVGn4vjGeVCgVjYn2RNq/iHqUFO+jy8vH9n0HsfNs94OfH6N2
	 xM1By7kFVGGwU3C9iRJysZSnqhyoBRCirdoy0sbpUsYpYAhJobw8licW2xuZb4LcCK
	 CkrLdO3fpycVg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF8D0CD37A7
	for <ddprobe@lists.linux.dev>; Fri,  8 May 2026 01:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177820425370.26192.18403226039194549055.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 87dde5a432c138756f72c3e1962fd3c5bbb881c04ea4b4d0d4f57416dea85b41
Date: Fri, 08 May 2026 01:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778204253
