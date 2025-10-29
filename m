Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B9C328136C
	for <ddprobe@lists.linux.dev>; Wed, 29 Oct 2025 00:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761698394; cv=none; b=Mn8ibzdy5YE87RZDruZMwt5JUT1kqAhFwOO1lGsEIvW0TflnkWQ0+2Pc/2Ns+LFxu8pXJSAQde/D/v5hNvEbyQlZfsK1/BwR+pl6mZZxK65+7kSd+OaK/LEuABKMNMAk0DOsZ3K6HbCo+Sy/rsRsvLXPH2fDKPV7otM1B5xH0cE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761698394; c=relaxed/simple;
	bh=x5Q6RHCLPRq7WCxlzFeYkanFF6FtSgKUXdr+B+xfsuY=;
	h=To:Subject:From:Message-Id:Date; b=GruK9ttfwbMOKcoYb60nTwLGYjEmJtWI51HZE+lcO1q5LoPaZWmUuh83+kFuDg7KzBel1GzWNDNwsssNprOoB4fLdkdhPl0rvmLOZR/nBrLU38JAFZKiGWE6a+hCjvCh3DZvHu6hSiOgMa3MzpxLHee2Ss3KXHEuUo8Pb9ExnKQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dG3E2Ysd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dG3E2Ysd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B28A8C4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 29 Oct 2025 00:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761698393;
	bh=x5Q6RHCLPRq7WCxlzFeYkanFF6FtSgKUXdr+B+xfsuY=;
	h=To:Subject:From:Date:From;
	b=dG3E2YsdQCi1Qh3DMMGWne+ekRn9SPEGf64MWFNkPz/5XYZGeUr0zWAHO2vjAEb0v
	 kG85pDh7RgU/FRj/JKBTAFFehWxk3KzxoiFQ6XdXY00Dm+QQjijmxb7e0XC3MQawba
	 4EUWPSz86sI6bEHk8NuFj+T/HmKrK0DVUVKgyhPyOCVx4TZ3Srt2EDj6r1wvqbcZH2
	 3UMNyB44rlLsYBpU4Zf8QG7f+8lO5xYh0nPw+dwC1NhUgJ+CWFrVpDJMWQFwBySH12
	 LUPaRc28Fw6Psab5Hx4gtIYuAPuBsIZFkoVZJYJHWXilYD4lKNFP2yctSTddbuNFg4
	 tIs2U435HBR7Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 959C3CCF9EA
	for <ddprobe@lists.linux.dev>; Wed, 29 Oct 2025 00:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176169839358.13389.14058764336778411215.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 44f5a9592005f607d394e831d1f63a2d81f14f356d54d0806c24d10da38654b7
Date: Wed, 29 Oct 2025 00:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761698393
