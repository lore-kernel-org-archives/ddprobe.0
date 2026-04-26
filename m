Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 199B8BA34
	for <ddprobe@lists.linux.dev>; Sun, 26 Apr 2026 15:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777218454; cv=none; b=OYA5QQWY7Md0MZaJwCsGzywQyvvBqqGOfNze8q4tFFWTzp8FAhw6+IkzuCWcd/xGCcFXfASwdNsJ4V0e9MaYycZ3svka5cNOGfswP8p03DWHfFDB4aCOZDm8YyOb9S6eomw2vF4ejIPdAd7Zq8E80YI5LkLVRM+n3KLpoWVluSQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777218454; c=relaxed/simple;
	bh=kNKDtEPywzxz9l3g1y+vWrgR0HVwHB3tFOG4jdHguaU=;
	h=To:Subject:From:Message-Id:Date; b=ds27EOv22qCH5OYH4+cf4+xrM8aOrveMVWhGq5z7gOPeCiKvP24AXGJpRVtqm3DInwJrFuq0iVEt3aX5OgnbbuPWHry3vR4uIyfgjFq3Rp31wsATH28JHcqARBRNhMZaxvcPJG8ZIet33QfRR+io3KnmJyOz/LWuHOEeKk4Oypg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eA46MNPi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eA46MNPi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB012C2BCB3
	for <ddprobe@lists.linux.dev>; Sun, 26 Apr 2026 15:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777218453;
	bh=kNKDtEPywzxz9l3g1y+vWrgR0HVwHB3tFOG4jdHguaU=;
	h=To:Subject:From:Date:From;
	b=eA46MNPi6G3nfeNWHRtz7OQ/LXisVVsr5dVtes6lCBhXgfJJY0s3XZUobFDCuwbxQ
	 P+GtcoBHvkhxwuJoJzZGXn9U0ag8iGzsIYCcJmUCXK9zm/keTOisrQ+onlSGWSsFfC
	 xuAJjJWBCJ3g8Elbp0cYNKo9uxkZ5LVYljGONPBUkxeT4NSQFHZMHOXwnZiiREMgyH
	 knCPcJ0kZ3RAhJdOvipHcDOcCpIU++3QTwSVrd0bOLKHPWPAjRaFO/t1daYj9HsgCN
	 VPncgBkkXSQhB5tfn3zWk8B9MKK45f6dpiil0jKgv7xt6tSTWuwdXQ/BJoQQ7ZSSI8
	 odpndFWiWhORQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A98A2FF885E
	for <ddprobe@lists.linux.dev>; Sun, 26 Apr 2026 15:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177721845368.5589.1449130694088743795.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3488b68694aa7081a9fdbacc0b418c97a674b4962faebb0758cb422f66497a7b
Date: Sun, 26 Apr 2026 15:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777218453
