Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 125DE23EAB9
	for <ddprobe@lists.linux.dev>; Wed, 24 Dec 2025 02:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766543634; cv=none; b=sbjNtir+srvsewpjGwCBIWxzIvugzLoG0dKXzPNVWd7R0/tv2LOc91TUYunY6YjaNwF6sBiKS8eEN0pY41Pl3lowaTcjOZfxZaOobBu0evButcsZYDhOeIEAQZ+qCJmuMQe3/noNYYc4pt/5MtwIIWAd3TWQsNrltO924n2rrAI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766543634; c=relaxed/simple;
	bh=/rsNY9ul/d2ZIQPlmvi9qJbWTBpSmCPhSXg9TIUxcSQ=;
	h=To:Subject:From:Message-Id:Date; b=ZoLkgKA6HuDyfgAhEs6Ad92DHfiWcoCPe/moNp1CAZ9605gklzeZcQ5iilzc1o8CBDyLGpteRGsbVG50Qb18h83QkaD6oRKk4DBhednm2JDKYvwGYKmAbJhJaKS3qs06CtqzdxAOnP4HZYR9GFa6lFRS6cVVpMkO4ziMz7PaXu8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aPiSh7V2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aPiSh7V2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2735C113D0
	for <ddprobe@lists.linux.dev>; Wed, 24 Dec 2025 02:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766543633;
	bh=/rsNY9ul/d2ZIQPlmvi9qJbWTBpSmCPhSXg9TIUxcSQ=;
	h=To:Subject:From:Date:From;
	b=aPiSh7V26/6EzPJw3GIVX+dJqTrYnTo9yEQvNMLySCbg3/Nbmh++SeicSnBGxevs2
	 jxJ52Lk3TwN/3VuJfbdJ18LFXw6OmSJPjV9iGpO0OGrJtyytoB2eLarYlmApVY+mw2
	 T1GHFZb+yij7DaR7A80RKMmkFTekBJagT/LnVJDmM0r6/M6oWoEY+/3quj8zwTGwjt
	 eEyh3+c7UVBUVQPooNP3Ib+kJE/Vd6bfvxTXbJoaoGeBqlvqPAPIs0NQbR1POv7HP2
	 Z+Pu4zjIfoAFbMC0sy/zmta6I3t5O+HwC7Sv86/ToQNySarww4NDEWfSXLZQWvUlMk
	 gHT1Aw9QXBL1g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92689E74904
	for <ddprobe@lists.linux.dev>; Wed, 24 Dec 2025 02:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176654363357.9350.7920277657555339291.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 252cc263b63bbbf96c998bb51662be1a040f62bff1ae64c9534363036d2cbd2c
Date: Wed, 24 Dec 2025 02:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766543633
