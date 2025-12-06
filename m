Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36A651922F5
	for <ddprobe@lists.linux.dev>; Sat,  6 Dec 2025 16:42:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765039374; cv=none; b=N5T48NavsJwUVV7M0IEeYapuGbvs3eyXgHiKWRPJsCFxwuKy5X5Gii8wi81OyyssTgY1sfDTV93YXfg3q4kA0yHimZPA8qx9Vr0h+rrbEREJOB1R8ec1S9fKRr19zgsXI7/MUkhCqr6mVosd6Eqrl6XYB0GA6v1UEDnF/AraErk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765039374; c=relaxed/simple;
	bh=MYpwbvPH+Paefp7FkB/DF6rke7ni0a1q8BuWNDsAnG4=;
	h=To:Subject:From:Message-Id:Date; b=sCCBdqBODkvcPA346RDyliA0F65wRGzMW+RXRGRROOZNJwLozJ5POReooSNkMh7up3mjZUHbLJ6OyU8t1uix1ORawGqzHl32yG6KmMaMDaRyVnaoI0g5+DfX1ZInlejDtI8Tn+lk622yCRjEa4ybbpOv7R0lhKmVcCUrcrxGBU0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=k/Eznsc6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="k/Eznsc6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A437EC4CEF5
	for <ddprobe@lists.linux.dev>; Sat,  6 Dec 2025 16:42:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765039373;
	bh=MYpwbvPH+Paefp7FkB/DF6rke7ni0a1q8BuWNDsAnG4=;
	h=To:Subject:From:Date:From;
	b=k/Eznsc6XjEFBL2CAy56LappQD4JU49KgVZWi4ykA/Keh0CozKuYKxrbSvAiphT5t
	 B4/69rg0HoidT+LB67bWSqZ7o5vr9Fc10E54/DwyYVO0DgDg28LBc5snWu0QsdwCVg
	 q5w6SyFeqYuTc91XYljh3JhBBiyPnIWmhKRXpHT3YmnBWc16qUkuJoMoSjyPyhxhfI
	 pnZxbDUYzezaJt0GPBP7J9WUTJuaaMggZY4oF71+LWqyiLLeVsiYtXbrV5lOmm8vUZ
	 v80vgNFW8Fqo9kNk3CkRDoiTSt2UknL6YIvoL1fz9gylIN+GyvON3ZxIzq4sHBl7NA
	 AL9wAbtAZSEVg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91EA2D3B7D0
	for <ddprobe@lists.linux.dev>; Sat,  6 Dec 2025 16:42:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176503937358.23922.12140503603974078156.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: afabb168e7f7fb9afd49079970339e7f583230361e618613e96557992e75a0ee
Date: Sat, 06 Dec 2025 16:42:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765039373
