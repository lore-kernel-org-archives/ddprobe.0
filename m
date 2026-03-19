Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 09F7623ABBF
	for <ddprobe@lists.linux.dev>; Thu, 19 Mar 2026 20:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773951894; cv=none; b=lSKthi9q6MYU/EXZIPOCEaqTyjUqm4QSu3qg7b2BaSyl15+p4GaRAxBaosx75Mu0/+mJWAoGVWdGbj8yZLtcAmZAvoXpA7o2ivfz7rHHJfsJD7Vz0+oKlqOyda894yfk7wGChi1n4sJ1x3nf++ymme14pTKvcYVqukZ6hv7SVj4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773951894; c=relaxed/simple;
	bh=azf955YEWjYza8sjWaMPh98zA2omjUYNviEjOPh7xUI=;
	h=To:Subject:From:Message-Id:Date; b=dtRdg5IwUYfSgIwEbDscwnGefnZeDNn9BvQBK4rHxzabSEOnzsa79FXni4XYpI74bEOdZ0oZ223i51MdPrYyLVplMZIqf+/PIcUm5fOixVNCbIbh8MF9gwrOmIt42o2a1/UzY4ci7FhzaV2asWrPwmGgBHj4rAemE2RPjTV1SKA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Eiv5iFxK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Eiv5iFxK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0576C2BC87
	for <ddprobe@lists.linux.dev>; Thu, 19 Mar 2026 20:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773951893;
	bh=azf955YEWjYza8sjWaMPh98zA2omjUYNviEjOPh7xUI=;
	h=To:Subject:From:Date:From;
	b=Eiv5iFxKKITxVYhLIGysJ1bqlwV6VjxGfKUH4GBA44M6S9e/FSrxCmlSsLR1HZdop
	 1n+ezh9je2ennD/S0ga+Os3krfSo9kEDUho1eWUP/qEBFA5KM9MiCl6sYK21poDfcg
	 3h/s1/42hwqpojEMb8hh6hKtUZCuYirNR/zzmgVKhxyBU7YVEUaK5hfqbo8EisM2Uz
	 6nJybi6tx2xPSMULQk7SQicPVwhRzmPxoflxtL/SOh9WqMyGNFUrjjtad8jqVOt8iP
	 kuFV2ytRiWM1xeqdcliXSgLk8Ab2ijf4BaZsYVjhCy5O3fzEuXtXrk8wbedE8pjaBz
	 rfzaOGV/ozg9A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9094A1091916
	for <ddprobe@lists.linux.dev>; Thu, 19 Mar 2026 20:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177395189358.31863.7462651353404544278.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 32b9d85e30e6b6eab9cb1fabeed40c5d782fffac231e1137184702b4d9a26f7d
Date: Thu, 19 Mar 2026 20:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773951893
