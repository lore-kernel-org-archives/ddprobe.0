Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0EF5D2BCF5D
	for <ddprobe@lists.linux.dev>; Wed, 26 Nov 2025 20:12:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764187974; cv=none; b=rYaFpsns82cuIDPI3A5Kmma/T9btBt1CRmwclXbuNqK5VnTvhU69eeZpMoKOJGHnnuMmQ8RUtqCgNimO3kdWoKb9w/3GbwYgUtsgXgQKM3JWxVn+R0EMIb+xSOq8QbTta0r6cmu2QmcLrnso7ORcw8fATXqAWp8vA+6YnKAgatA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764187974; c=relaxed/simple;
	bh=bKAVDS87h0y70tJGOAJd61CC2gzkBWSQcHp4hrc6Vf0=;
	h=To:Subject:From:Message-Id:Date; b=j5Tr2hrAnlxnpvgXJ41tneo7hckhUdVtz5aMQ0ffaPTHZQC2/JVK0dN0uDi4WHiUtHM9ACCwpTI9dK/c8Am+X+bwa9LttLvOT3SW+zseeb5sYrOSEQsDXZ8WCdecMrI3eb1wEUR0ts0Moh9nJ9Qh86N9ckgHSmdtL6iZbthGbfo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DdvMfzBE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DdvMfzBE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5EBBC4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 26 Nov 2025 20:12:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764187973;
	bh=bKAVDS87h0y70tJGOAJd61CC2gzkBWSQcHp4hrc6Vf0=;
	h=To:Subject:From:Date:From;
	b=DdvMfzBEg/yZh7yKBmfvQitzAJCKDI3kyXJORsE2pcw+odPripKRcDa8BB0bXRD7b
	 O+IhgnkMXrXstrt+wJYYrluWTtQS4F5hPS9uBbx5V8Zdq7z+IyK2CqTHzxwPE4p+nG
	 2spdi6CuR8rhmlx5PNKpStPnCxYVpw8Dc1Eji5fxPS28RX8FLSmv9hb1VlmGXxAoPZ
	 K51+NchINt0vA953xYZXxILUuffoyOE6innMak9JP2bM6ovgx9fvf6DvJwVCYmnzVz
	 T0/K5Sb+gsHMllg0vu49ZNwiyHVmmUhhmeuGFc54kW3G9JsDq0jqfDxNJQPiGTG+bX
	 H/EHrJGJg+Kig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91B9DD11196
	for <ddprobe@lists.linux.dev>; Wed, 26 Nov 2025 20:12:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176418797358.5534.423456778249158816.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6a3c51ef61654057565930327776a80c0f5b6a38db9e16e9be31366be0f01424
Date: Wed, 26 Nov 2025 20:12:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764187973
