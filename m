Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 471E963C
	for <ddprobe@lists.linux.dev>; Sat, 14 Dec 2024 19:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734205554; cv=none; b=tdF24tKiLQFYJRoMg/jhb/yjHvqry+M389nZF8bjHIC50IvgzlQQHuT0DaRKNLwMSXT9jIt+cPl+7dcyzr1iNwLjLImWb8lsMh9sHVJNlOr5Mzeh9EJxEz//vrTlsrJ6w0U5bOCziVVlXospOk21iN8SmWX5b/m2rDPWIWybZc0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734205554; c=relaxed/simple;
	bh=x/rRL2jpvu73LUOlM29+vm07l0qEepWJq67Yg4JSRfw=;
	h=To:Subject:From:Message-Id:Date; b=ACHnzmt6B3baKOfnrnJ7r0pQ6/jlSWEjlWa+Q6ados5/gTUQ7g40CWjJlSdo03jJD1e1gAD3bppZf6GsPZEw9wT/ydRW52Xh/SMceWYUoUVB94QdHRjhsS9RSlvNHUR5kvl9ETqeP4yp0nuuKQcMsIPo8r2PU78SXEfOYsirV4g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ewu6h1iK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ewu6h1iK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1ED5C4CED1
	for <ddprobe@lists.linux.dev>; Sat, 14 Dec 2024 19:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734205553;
	bh=x/rRL2jpvu73LUOlM29+vm07l0qEepWJq67Yg4JSRfw=;
	h=To:Subject:From:Date:From;
	b=Ewu6h1iK1FvDzoK4nZBVoWHeP3GFcK1MvHZs0MmM4ai1YJneZ2mR6ztyqLbDfhlHh
	 B4Wd3XmuDIhaejSInAu4ZRmLyOWRX9S0Xmen8oqEiibF0WodDVOxeHftIJMVkxEE/2
	 iYxKLLM43KQNWsFFsPo1TV0nFL8FcU02I2zSrw7h6Qn6ufIZ9N/mxpo8FZIn7aaOh5
	 yycM4OcB8vPkrarS4DTRam9r5AURhmpipk0yXHKVAgdYEGk92goKYmA5423V2w2F6n
	 YCCZO/BwVpDZ7iFYTwXIGgNfhJbF2wDtKkDaAhqmhJutU5WjsKpXylZAQl0RefKuRJ
	 GESbxr51a/KOg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A5EFCE7716A
	for <ddprobe@lists.linux.dev>; Sat, 14 Dec 2024 19:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173420555366.24338.4618092993139958685.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9297c83ff29ae5d5b2cb2d633f509ba78b35c515040dd5d085fbcf466e5ac1c7
Date: Sat, 14 Dec 2024 19:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734205553
