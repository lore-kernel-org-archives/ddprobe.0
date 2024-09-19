Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26ADA19EEC6
	for <ddprobe@lists.linux.dev>; Thu, 19 Sep 2024 13:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726754154; cv=none; b=u2/DkG3tShie9VDD074WSWDvKug+5uE0jPrsr0ZSSwitxbYugo32tyI/g99CJZ29A8Yfk9NItpLuyP0ze7DysRykg3+XR9laHHmX6oNrijkSbJUmmWkpvDvXQtdvxOYDOif1RU/0rCnJ3ufXq4xExdXzSlEVy6z5wYGpNMxbbzw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726754154; c=relaxed/simple;
	bh=EkBPXDwQKS4d3uGcRaybi1exN5xiwnn3CKyafb/rTlE=;
	h=To:Subject:From:Message-Id:Date; b=AxcOyCaumifRJWqQ1s5R7L7/m3EnkrzFul6AMc+scxa47bVYwIViimvfS7Wwt2Tdl0K9NdjDNBTH+liToFnwD04JvUJxkl1dIl6EB0Pw3K7eeqX3P2KrIF5YGSr015jFx5gcB6VZIrdobRLllGqF52XGYXpjm4IKVVaEa9061tY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AD+xzg5l; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AD+xzg5l"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACFC2C4CEC4
	for <ddprobe@lists.linux.dev>; Thu, 19 Sep 2024 13:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726754153;
	bh=EkBPXDwQKS4d3uGcRaybi1exN5xiwnn3CKyafb/rTlE=;
	h=To:Subject:From:Date:From;
	b=AD+xzg5lj6PFcg/b5ypjAahdu925l5is37wMTIwN5FXDkE7bbIey6JwVesO1tJMQJ
	 jtCOxGewAJV8iGl9ND2725OpRyo1E41O1eFZQH7BDspQUl+bqGAD7K1C6yGmIdobTF
	 EGxjT1IR3snXSuAJztfzia9n58XQlB19BmBKTILNFJhxOe02o4VOgOzAKKLvoeE2ue
	 spTB2AWNBguz1Jmeovvc5M7E/k6KDmdBgeUiUqXE/PhLGOMsnwvgzCUz/fef1BpqnU
	 AuPVJm4aFDd+vpMN5aoZOgSe3X2unKmNLJCkx3NIjR6DQ+T+IHfW/gjorObU0zZ4ek
	 TnT2Nrdfv6g0g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99E0DCF3942
	for <ddprobe@lists.linux.dev>; Thu, 19 Sep 2024 13:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172675415361.22908.17802526638605677263.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7b2a10e2b475b11b28956e9d724f4c85ac2c2fe092576c88aaf2b282da58a99d
Date: Thu, 19 Sep 2024 13:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726754153
