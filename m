Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6602E51B172
	for <ddprobe@lists.linux.dev>; Wed, 23 Sep 2026 13:20:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790169635; cv=none; b=O+dcsIJPo7QFM7ePQd3COzyN79LwU7UjzxO7PEYts7hffclOAQFq7qZ61qa+/jj29ZudJlLdBN6StMvQ8JHZQVuKSeJMRPpz8N8vtMe50WtxADWhVgoiJNfnjgRgM712iLbu+1sidrBaot/nWxRbHrkjkLyPNvLQjkuyCr+5ml0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790169635; c=relaxed/simple;
	bh=36vNZppmjVQa2gtscCErrkLUyyhuF2wABf1wlelWbkg=;
	h=To:Subject:From:Message-Id:Date; b=muQyQ4jCmuVhiZziD7vZvyADM7+Q2yhnoh3B8wBE+R82kvYPGhpJgNzMDZ4cbv47c32JeW9j1pC5/V3iaCAwlTM0XY1cq8rloEGG/aRgxCUp2n5cwlaTojE6DJz6VgN5t/bJNc79HnENCjzIR6D4sm5W8/AfXICFlZmwJSvXLek=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Zl8JSFxz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Zl8JSFxz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2293C2BCB8
	for <ddprobe@lists.linux.dev>; Wed, 23 Sep 2026 13:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790169633;
	bh=36vNZppmjVQa2gtscCErrkLUyyhuF2wABf1wlelWbkg=;
	h=To:Subject:From:Date:From;
	b=Zl8JSFxzxJcLeP9Cyv70g9XL3AlAFnUB/48GcOJL45BzOMcSjOkHgG/8l6Wo9jd00
	 vY+Q0ka0CB2LQXq4zK61RJ+ONqdmCuiR/Me9A+IlhyTstmbGX8Q5cSB0TreZ7GP/i3
	 /4Oj7MLT14DGJhhAiXdySVbNZ1dyzYnVu8OEiPP/g2XOELjq9woxeyFMOLxz384FkW
	 D/9MOvXQ8uiJle66YgZJ15+FXc1IHv8Hc2by+TXsdpB1NP6Zzh8jJ97Cb2oL4tcKrA
	 q+79sAbMDe0/w6q3JryP4yoLwZ9voxoI33m+8s4mNUTQt0LGB+TKJSZOUmhsbrt1gs
	 xQLrOLy98mQGQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE4C6C9830B
	for <ddprobe@lists.linux.dev>; Wed, 23 Sep 2026 13:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179016963370.6599.17451968908557039288.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b771b89bafbdcd1a35fbd0110b7b70a21425d148cae2676493fd2c3d1e9ca69d
Date: Wed, 23 Sep 2026 13:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790169633
