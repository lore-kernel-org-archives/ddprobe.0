Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0653236164B
	for <ddprobe@lists.linux.dev>; Fri, 20 Mar 2026 09:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773999894; cv=none; b=EvyLxci2jjiKVt/XJ3BXufIXTKcoZonppn8CB82P/di+c/OGB61GS6NUmLHth7vBTjG2XvebwNj+XtYjN7a+O77oE/Fer/R4K0Ee+J87t2Df+VAPpMqpYo5NxsmHSVC0+yA3RW2VI5K6kPn71Gw8dtftHZQIq9kdS3GACnaP9WU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773999894; c=relaxed/simple;
	bh=v9ECt1KTsEq4cpXt186BxoiIMmPBDp79aaEsWUgRqn4=;
	h=To:Subject:From:Message-Id:Date; b=Q+a0mjm1NV29tnDijSe9c6WU4y0sDegp4ik4I+TVb4Ln+BzJfZYzTkzIgvFxWqTUoP7/uy73/prBJEo+K6nM0QgmsehCmC4qaHQcF4Ljp1PIbmwyMaM3aMhdGVeeC4tBoFCwsEe1kqxR4hx6zYUeQrkr3J8y9l/5mQ7Go+Aooks=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UfNMiNlf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UfNMiNlf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4577C2BCAF
	for <ddprobe@lists.linux.dev>; Fri, 20 Mar 2026 09:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773999893;
	bh=v9ECt1KTsEq4cpXt186BxoiIMmPBDp79aaEsWUgRqn4=;
	h=To:Subject:From:Date:From;
	b=UfNMiNlf2iXVwhVXAkuVeKDme0XPJMGNTTkCc253ZC2hV+7UDW2fK4k58r5q+8Xbc
	 sWP0neGb1ilh6f1OdvfAurhtFgAOvA2lOs9tZDMsmwSnGM/Qk7BjTTnG3JE5Q67xax
	 EILHCXoBIfZZlu9qWr4Y5Mtl/teYmT1UvDF16x/2i0WxAzjyiv5Br6m2IRKrlmEej2
	 XyddGRsO7uxdrbdfjFHQfT7tBjHRsRi3gvqbKJancZW0iHdXcBj6Nkae/oWWvFnoSi
	 8PdwSxGi5CGyOEwjMfWQ3CBX3GWAqOzYpbiBJ2iT0CVY7XmkKwCQMg/Tx1W5y9RWWn
	 v8E8A8y0peKKA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93C22108B8E3
	for <ddprobe@lists.linux.dev>; Fri, 20 Mar 2026 09:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177399989359.10598.1458735035385903604.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7ea597ee75281eca572001db76cad5e8c23f83f8c72b0bc75ba9f56e6f3964d1
Date: Fri, 20 Mar 2026 09:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773999893
