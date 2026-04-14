Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 251112222D0
	for <ddprobe@lists.linux.dev>; Tue, 14 Apr 2026 19:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776194254; cv=none; b=m+mtXQr75ckR6rtmnOpfHyfqAuuhm54qma2+5F12a+xAdsQjWQADMiRQhbIJNOzTrzUAmMybIaqIrz37dOgKhKT9WXwv+U5DaJU1mDbBRM/K5rQSZ/Ef4M5PvL8K8uVSK3ib7hg/QFdWR3LtyYDKZmKQnRxTxVqyVCHBSi+y8no=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776194254; c=relaxed/simple;
	bh=hAuvDP5syZPyR8TEkkrgazNe9mMaOAuW2bqlFnWCXKo=;
	h=To:Subject:From:Message-Id:Date; b=pyTJvM7o/Q1uXp7KL7so0DepTe4yTITKbCoc2KWUYtlCwoMfmmscwa9Rji4R6s/zgaLm2XbrenOzgR4lyPsEeZQDbumldY83qfOEwdR345K9YRVdmxEu9cEEAd/APGdYMSmzBwrhUpf/ulttdVapulVYFNLm/TjUYHEp1aXc+jQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=t7G/h5uT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="t7G/h5uT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BDB8FC19425
	for <ddprobe@lists.linux.dev>; Tue, 14 Apr 2026 19:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776194253;
	bh=hAuvDP5syZPyR8TEkkrgazNe9mMaOAuW2bqlFnWCXKo=;
	h=To:Subject:From:Date:From;
	b=t7G/h5uTQY08WERdN9QIOgnGUeGxb8qwnxdoE9OyxfD9slkWgiFfZodAqYEIINN07
	 ikRYT4M/kbZTpOLFNPjbwunj6ruQGYXRSGI5yiHrPXxGclzAKnkN2vPrftCyN/MCGM
	 FKjjzvG6OGjrRXv1mnru8jeMPvtQnIlyE2Sbws6h21++AIjcgpyrF1yt6dheQlY3Hk
	 dwRqhHoBsa7xdaA9jd5oj3Ea5YtV8sDL3+UB3zE93Dq50JBfNKpJ9AaWUAngIQiueD
	 boNpERnTtp9YF6dssSycBtt3dcuDuX5Ig3nTsZZt3sjffdssmBTnhiROwgfKGZBjpb
	 IS7B/RAYHiAMA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A98C6F9D0F1
	for <ddprobe@lists.linux.dev>; Tue, 14 Apr 2026 19:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177619425368.12132.15501557717352558715.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0878d1a1ab017355e3fc3bd116609ecaa07cb022ad7a574e9802e0892d1f7ae9
Date: Tue, 14 Apr 2026 19:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776194253
