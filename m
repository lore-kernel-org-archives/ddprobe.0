Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2621C189BBA
	for <ddprobe@lists.linux.dev>; Sun,  6 Oct 2024 18:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728239154; cv=none; b=QLyswSdaaL5szHK3TP9wJuFYjzcZ7BGaV+s77ubuT50vixmR1dvh3DYh0xmsS7vM4iByBHfTuvYrQldCv6U6JdncM7S9Ym/6quVZS2OMgGjFyvbkZrA1+s5tKCOvkGoZpQnYgdtu/7dX3Fr4AbRkEqa89VscpQB+2EZMKBuvNQ0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728239154; c=relaxed/simple;
	bh=tRr0pNpN8A76pQLYcBe9b4VFstke6tjY+WUbCambvVs=;
	h=To:Subject:From:Message-Id:Date; b=PMH5NXh0+4kjuY+UtJZYgMP+7OoJyFHFd1pE+lSye+ix/WYyHYskZTZSKqIBjlTHybcocG+cmKwJUGnak833zt3k4ylZHR8rFW/nDsfcruhqFWxjl9extfJbilOrfuhYhWNUuATR5ohtKC2VzpOdhGuluuZhk7WoTKwLU9c1I80=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hpzXEqeK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hpzXEqeK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A99EBC4CEC5
	for <ddprobe@lists.linux.dev>; Sun,  6 Oct 2024 18:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728239153;
	bh=tRr0pNpN8A76pQLYcBe9b4VFstke6tjY+WUbCambvVs=;
	h=To:Subject:From:Date:From;
	b=hpzXEqeKeQYQHhzDDp5a2GWFVQzACdAb3qmTru36OwjpKz0t2OQ1Hs3Jg+N3MtT60
	 KXY20euO+q8JcQFpLhshRe7bkaZuKucI606aPP4yszBqqf7uCkWA4q6aI5BCRvY6vG
	 2IpyB25MpY82VIML2CzPoT679mef70/Hb1+bg1m5XizvDe4gQ2lB5NMcWl8rRorts7
	 0aqz5mLGwOiEWjsD8nAlDnSG+CKIh11BDBLb19u7yiSlirzaZATEuK7NgepY6m+6JZ
	 ydfkZaWtHH791If32d+Y28RKLtfYjO91knum4Ax149k7H4wbNIMzr7vodwqmVonE+F
	 pkdh+3+UG568Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97DA6CFB424
	for <ddprobe@lists.linux.dev>; Sun,  6 Oct 2024 18:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172823915358.11485.4197148286561826694.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 042373a9f33a6d6ed8f8970f798b7782dd1bf879b8e64e1131e3d773adbc8339
Date: Sun, 06 Oct 2024 18:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728239153
