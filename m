Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1886E219FC
	for <ddprobe@lists.linux.dev>; Fri, 26 Dec 2025 21:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766784834; cv=none; b=bNJGtuk0lamBA52szBMFWhVv7nczzT4xdWo8BwO1njxhX2ThT/Gvd6Osd6P0UAdQpD0hakvxxzn9DmgpowXPhvJAxZuglNbPwIKRKE2eOWclq3j13H9NZsiKLpDtkRfmrq1usIUGF68mV+WKJUMY7JbV2rnc2uAIzJbUjuyYeEM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766784834; c=relaxed/simple;
	bh=PG9wPLY7DABC4hzGJaUnyHI5J1TT5SAKdzRihpgvNXQ=;
	h=To:Subject:From:Message-Id:Date; b=Kxjsp9Tojd+OZIh1h6ftxgCEfy5dKoe2G4Iq8508cpzS8u4wS2SeJw+TtOBa94Va2FEYPutWy5GwAKIpPOcbLegt3rKaqNwcTfga4iFNnllsPgGc0AwbZFxBeb9GuNGHTLeeLHq46v836jyUZrpeXulYRGe5miv9D5hj5ya34fc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sfCBej5U; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sfCBej5U"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B33AEC4CEF7
	for <ddprobe@lists.linux.dev>; Fri, 26 Dec 2025 21:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766784833;
	bh=PG9wPLY7DABC4hzGJaUnyHI5J1TT5SAKdzRihpgvNXQ=;
	h=To:Subject:From:Date:From;
	b=sfCBej5UMUGlSdAXa7A9NEy5iBy3hxdGownx/4SD+7YIB6rMi74akG2ft8IIwn05C
	 M1makOgX9MoM9PYl5VIBuTTH91Ai0KM0Tfv7mpSa0RtfhxDr4c/SpD7SgfrrKTFoJJ
	 qtcoc8SEh5YVjBW9h10Ri/yI3TlssWZETdLYuJwYbXYmnilWx8ocStvt+TBuOudURC
	 3cyL/laY8hYRbHu8DPFm4ZJ3jevS16y+EQnQBYO+28hNtTvvC51Cqvu4DE7S4UBs8B
	 5QD0aY8Y4tWRHu/8Pw+uDCgmZHa9R565dA1r32Udx5E/ehCKqqVerQD0e16fl52hzD
	 LPyWEeVy84uFQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9AD9BE8FDAC
	for <ddprobe@lists.linux.dev>; Fri, 26 Dec 2025 21:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176678483360.18843.8246083313217365780.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5e23d63afb809a9733acab8278acf6a441486779363041aa9b5b686ef0b2f657
Date: Fri, 26 Dec 2025 21:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766784833
