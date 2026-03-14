Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0204534EF0F
	for <ddprobe@lists.linux.dev>; Sat, 14 Mar 2026 10:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773483294; cv=none; b=JotVum9Oo1Svx6dRGgURVDi58q4ihVtnAXnZZATYTYHebhwDFyWDnpVS4WoF2s9kf54YqVuE9BsRSQrSZd52DeEXDMpYKq3qwYzt4IY7DWNPoR2XJj8aWGdcDlHfY3mswSkZQd/ZTkwpCbEfPSjREbav8Ek0QOTGZSPLp5s/BKs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773483294; c=relaxed/simple;
	bh=MkQXocBaRvApaXYzHfXa+Bp+2ABsPQjTgvFIIX9PFVA=;
	h=To:Subject:From:Message-Id:Date; b=NW0r7mV6586FoMaOcZzcQnga3LmOGDQSmiyie6jLnbCDE4u89KEmUsyE1CXqsDJTN6+NCD+2ToKNp87zrvklUfSTCSo6pbYSwyaXdu1V7xtT+1od8WokEhaOir9KOlQeGbDE7sZUf44muyhmqBznjYkjeNwKGQWzIvTaNis5VfY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tutdaRqH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tutdaRqH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AACDBC116C6
	for <ddprobe@lists.linux.dev>; Sat, 14 Mar 2026 10:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773483293;
	bh=MkQXocBaRvApaXYzHfXa+Bp+2ABsPQjTgvFIIX9PFVA=;
	h=To:Subject:From:Date:From;
	b=tutdaRqHgONLsTY58aRqT9TDgwAkUtZYsZjHUBL/hABhEliWhW3qtTURLJfAqWXVy
	 pNTLax9CQ5nLmjb8ivOkFWUptm4Duf3cD3WFZaKWczkSqWUhjmMBrgUZP/nXCZAsfq
	 JAOMtN3Quu4zCkf6OOZuZNnwDTduTmE8FdGzza/ViKMiNh+zrTLH5KZbJRaqIW2QkZ
	 75KzJY+uN/B/QjKcQo1NPRj19DjUifOustvzaQwti3nsUrYhFn9lMry9R7v2R+JDWU
	 01Wx+B9a8FAQ32ceiA5Ikjv38pXgiOg1dLgyLQcRFeVriKac4z86EKPWhKVpnmgpWJ
	 32SPebTMbtO9A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A70110706C7
	for <ddprobe@lists.linux.dev>; Sat, 14 Mar 2026 10:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177348329359.14593.5337891407933131822.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 23d03a5a90da42b497c417070df49c83a942d55cfe8067abc757845124e7b18b
Date: Sat, 14 Mar 2026 10:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773483293
