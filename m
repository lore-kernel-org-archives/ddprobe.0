Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E3AF1E00A3
	for <ddprobe@lists.linux.dev>; Wed,  4 Sep 2024 19:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725479754; cv=none; b=eKjh1P/XQgDknTIHSekEkBHMEB4jYAkj+8h3/bCKwsFtGlt4mqJI2fso41FaQMs3VEytk0PDu+MyhlJqlDVeAIPoIUiOHdmFHGvH2eBmM8+6ePv3CZ+ycR/A1YiR+dGo4YhuYZ7kxko9H/+4gWo9wYy1fHtEdxzEc2mK+HwjtqY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725479754; c=relaxed/simple;
	bh=hjmAhTGXTIfXMYPrqjACxTNnVwMYn72xBj948StN45w=;
	h=To:Subject:From:Message-Id:Date; b=ncsy6QlBic4Sg8p5lb6Kga2P0XfYJx2SIyw6+h1eSFCF1ulTILnRHA26jkw9y0fZR7nzQbmfB+7PATJoRiJ2MbhFUm3GDCCL36sNmw0g3fd8Zr4L16xlksuOIb+I1acFY9B3rGnxk5paa+islwOwWIVzezOkFKiGcqn1u4T+CSA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iaEzCFzg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iaEzCFzg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B06BFC4CEC2
	for <ddprobe@lists.linux.dev>; Wed,  4 Sep 2024 19:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1725479753;
	bh=hjmAhTGXTIfXMYPrqjACxTNnVwMYn72xBj948StN45w=;
	h=To:Subject:From:Date:From;
	b=iaEzCFzgbsLO2P2UKYeZd3GA47pVf2CB219HeTe1HCUUgOYeWvQhTb00KKiOdIsxx
	 oJxVWVgAsNs5A86QxzKriS2oYV05OtueR8Kgj0QhzszCJV5C0tnpZ+lcpsFJiyI+X0
	 QgJd7GVUA54FZh0M5FRpdrahFn+fd2fftgQW/6dEEf0H09q4odkaeoY82moN/hjgwg
	 1YY65Fpittu5JCtKlAZvjvGkMnpHcXjK6gZE8nD/QqEpMrneDsLUjIokdwG6PFx35J
	 7jslVZzX8FT2Xi3pv3QheQXYL/ZhEsq6Zna77B7HvRJ9CLk5B6wMamhhjx22IRipgq
	 oTZRODi7SoV4A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98C0ACD4F23
	for <ddprobe@lists.linux.dev>; Wed,  4 Sep 2024 19:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172547975361.29465.5400933086234657821.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 761455c38d3f0300b665a745f2163fea66649541e9346fdb386fffab2c443261
Date: Wed, 04 Sep 2024 19:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1725479753
