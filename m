Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 54F8F1F61C
	for <ddprobe@lists.linux.dev>; Sun,  6 Jul 2025 02:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751769594; cv=none; b=siLI+lnWGqARL3L2DB9MrmhjPpxH0ceLATYFojQ+ex3AnpJkV5yqfmglwOW1JSLkecr6sDHVcAcpZZYyL0j8ngx9lfFS9h5GOSGH4wPu2Wnn+uEdxzU3xjX2URKYGzPU6kWdOBIVu4332ZUMFofWI8SFy3zm2+lwlYwUHfDEpLo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751769594; c=relaxed/simple;
	bh=kPP9FbKrxDxxsReCuomBshdUr/oW241slcdgRM3ZLc0=;
	h=To:Subject:From:Message-Id:Date; b=fDODt2gjFUS3+lCGrFh6R4ftJqZ/2P4pV7c6zgzykOsSkoSY6tWOJq/0pcNTzc67IE3mK7zlrob+/dC+MqPRMMrlgRx7ONOuMrwqNgxCfSo6WT/bzfqu8HQLyhOpy9Wm4nuSinNokxZkyc14LI2yD23LlQEBAghQLNXP98frubY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XijdTjVa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XijdTjVa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4466C4CEE7
	for <ddprobe@lists.linux.dev>; Sun,  6 Jul 2025 02:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751769593;
	bh=kPP9FbKrxDxxsReCuomBshdUr/oW241slcdgRM3ZLc0=;
	h=To:Subject:From:Date:From;
	b=XijdTjVaesDn7EVSQDgxdFrA//lJ1fE0r84Geh7X9++mjW5wBHkkQdB2yUe+wKfHO
	 nrW3li2/DK3QkY+AlL5+0nv0z2aXAW+tlUPljyjNnNJOJAZjSxr/4QFNKrsusNt107
	 9cfT9/kHODRdX9xLs7Vi7Q2bsTGcDQmvi2mCrgWzDVKVskiEw50im0BO/F9s9EKr3O
	 8X2xK2ZgGM+46aJScq+4gBLENoZZzq6DQh64ClCFQ9rRpQt87UL+av8o9NysQ0eyj+
	 aFr29nN9gjP/1Kok4LLVIQ8YGiDhZcFH4LxSAD1VZv1DY+KAzCynV9aOjCFgQVlwmr
	 lUUnx4Wv7XRCA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 912B5C8303C
	for <ddprobe@lists.linux.dev>; Sun,  6 Jul 2025 02:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175176959357.23538.14867565203962340680.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7fd361b93024d6b4c85917f3c0395a78cd331214978507d1ffa47d808e2ba3e6
Date: Sun, 06 Jul 2025 02:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751769593
