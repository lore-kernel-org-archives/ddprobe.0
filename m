Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 116521C695
	for <ddprobe@lists.linux.dev>; Tue,  6 Jan 2026 04:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767674034; cv=none; b=ZZ9tNZqDXC1a+YPQD5b2iAyk6oZU7lRw3cN/Yuk9SjPuSPKNbdafq7U7kgY3gt6Am14h+wzuvWSAZurJwod71c88w4c3WSnAaFMizitmXkfKIdm9BMAJtIZHP+UbxkZtU9wSR+OfeRTxAScua/539nimc70pZUeU2QiXdvaMTQM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767674034; c=relaxed/simple;
	bh=/XHOvfA0Z4hD9xRliw5Kwp2yBchZQxTripQhXF9twnE=;
	h=To:Subject:From:Message-Id:Date; b=T7KFwsWirJedA+6XfnKuXW+tlJWuvgem6IZ93xcZCwWMkl5HNZSOCcYzfVqsNBxxLmYOyQ3reYFgYXcznd4vChuVDjK+Km/ivy5kR1O0chQTCymXt64hkVR3ngWDd31vtYpX+uuw3OaozjyusSsEFp5u63s3nSM2PapuKB/YCtg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qOYLg/0U; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qOYLg/0U"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E5B2C19424
	for <ddprobe@lists.linux.dev>; Tue,  6 Jan 2026 04:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767674033;
	bh=/XHOvfA0Z4hD9xRliw5Kwp2yBchZQxTripQhXF9twnE=;
	h=To:Subject:From:Date:From;
	b=qOYLg/0U688kQGgoxhlsiCGmY2ipwMRhMwiblEEjlXExSDLM6v2Ph1wGB48nDAPYZ
	 5VF44rrmrHKW6aZvNOXgL1WQVYV7Kd+OfDZKPcC4a1/3yeyK4oI/pk51Y4DK8X3cc6
	 BLykBrxPsOGRfIPNMhvUKQ3Tvwl7B8yqVe6vwwviuWHCa88vOgQ+28gxjdq4eRn55J
	 7hiPZHCZbmgb/CioDE0w9d+9n57lMqUb+Jbj4Idid34WOnf4QFBdvjMQWHA1uT/gZI
	 o4QGklu3NrJHUSKjSDKEYPvywl5Ck3KBxgUs/G1iTY5s1gCnF3mFICQCiwcA1VJ20T
	 YDprKC6/altUA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8ECF8CD0417
	for <ddprobe@lists.linux.dev>; Tue,  6 Jan 2026 04:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176767403357.32013.11181505592936216499.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5320809865bd00f3359087df4379008900c33720408c6d4a9e17fca893517ee0
Date: Tue, 06 Jan 2026 04:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767674033
