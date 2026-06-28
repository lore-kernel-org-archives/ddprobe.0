Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5946F1F872D
	for <ddprobe@lists.linux.dev>; Sun, 28 Jun 2026 02:38:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782614314; cv=none; b=Z+iH3STuRVJMMdMz9JxcHb82ntKyfUbYSzo9z9fotFmMz033/KR98Oo81FnpzUq1RKSUdeigOyu4LJtw7/YTCdc3dSIbuP1ypfy3jUxA8B+F6+bmuAim46C7HQnhruUEtxJjWP6FriWsGKMAoZsP9rp1MAZCy12WnoHvM/5I6zs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782614314; c=relaxed/simple;
	bh=R5EAf3fPvVmVPebdys6hzRvaJ7GHWUoHxloh2mr/pec=;
	h=To:Subject:From:Message-Id:Date; b=SBlqJOA/agn19sjv5dLbPVVq6lnmYYA3ndMWFLYaDDB4FW1fnmaW49tRe2QiFCtckMXbNR0lMPMe5MjQH+PPA4/MT40kP+Ro0I+aqGnQlpVtrkucQ8rpoos7RkfH4ClhkP7YHE/pBv1flK8oqkydKOPdRK/IbRi+mtTNDPO0UJw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PxYzX9a4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PxYzX9a4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DD8C6C2BCB3
	for <ddprobe@lists.linux.dev>; Sun, 28 Jun 2026 02:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782614313;
	bh=R5EAf3fPvVmVPebdys6hzRvaJ7GHWUoHxloh2mr/pec=;
	h=To:Subject:From:Date:From;
	b=PxYzX9a4dFtMm0eDmZ9jC2mt6pLDJF53V/VyTGoo733TrThh/7ahvC8IQlSR1YO/I
	 a+UIvLq9WaW832GC7SVm/+bGKAQ6aNFf5LVF5cCKm+En5OhPrby7bubfAya69GuQTW
	 KOrRB+3o4/GW9Z5aUdC1+tGoHNyKJjwuXVxmhEmy/LUhf6xozefn0eQtSsUb77Hlrb
	 LbriPnT7C5GdMvn2AQpPt3HnZ8ENSbxkwHq4uqE690yaNO42Au+3nEIs8GxQTkJWoz
	 anf7iuEsNSl2IHEC6+DmKD3Filtyz9UNjJNaptiGYAz7vVBeDKcdqB9qKjqUlnag0q
	 QilHw0X6dSwAA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B5916C43458
	for <ddprobe@lists.linux.dev>; Sun, 28 Jun 2026 02:38:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178261431370.6381.5548734571114529167.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3263619d362a1a4c6a193af8f89a528559772d0c6a8b337058308b7c7682e19a
Date: Sun, 28 Jun 2026 02:38:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782614313
