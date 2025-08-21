Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CA4C1F3FEC
	for <ddprobe@lists.linux.dev>; Thu, 21 Aug 2025 05:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755755994; cv=none; b=l4Rnz2onU7dXa4+1hRfNwu8GTTHLQoHo4ypjojc+ym5K1eaHlZ7owP+rRgmCHSQxzGJ7ribI36g5ttVhsSESQH84nKpUTNgtmHZKcknhjskVYAzVPim8XsXQhnD8xuvt1bnNUpjkDL62sKM6+xYI2anNrL2HMbbOvimSvjNRKPw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755755994; c=relaxed/simple;
	bh=QkrpZkUx6vinSEgwhYqYaCGy8Y/r38R+OxAn5mvYcEc=;
	h=To:Subject:From:Message-Id:Date; b=cLkQy3O/5Wlv4JZGHpnYEKYM1E0AYmfUtQ0HBJkRaQBuPPU0/hDcyhQX1fzkDqRvpRpePkQW6Aw5ZyTekUbr22aMMcgXrxpJKSAHYyuPQ51wrYR+Zd+RipGcoSlP583/daCTac/4k2bVL+5Lwi49IrAC/urbWifK4IZ/b1KT7pc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dF2ewaUP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dF2ewaUP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FFE7C4CEED
	for <ddprobe@lists.linux.dev>; Thu, 21 Aug 2025 05:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755755993;
	bh=QkrpZkUx6vinSEgwhYqYaCGy8Y/r38R+OxAn5mvYcEc=;
	h=To:Subject:From:Date:From;
	b=dF2ewaUPFkwBiJwPvQ/eaarg83mVUpJBZkjD9ABwz5ti8L+zNWPCN0WTEOsLdiUPH
	 OzOCUAl7cJub9Gj0lQIlzQCKLwoHQovB4EangDeGu3AmQXVGPRU//dE5vB1Bux8kml
	 A6rTfAQwhfmBdLgSlkY4hRwcRQJOrdf928BFAUvq7uNEgpCDhO38YrVouNI0uSLAgt
	 ky3LV73zIvghjy5Xs+8I4QtucZSQKJcdRvf70GnMF7rKLhi3m0opD84JC+AEHeX9mJ
	 MS8G/tpzzwtVnUKFexag6LIGqSms0MsGl1N8cJODU932v83G4r4gGmc7du2fhIE7S6
	 HBDKsW5Uq28aQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91C90CA0EEB
	for <ddprobe@lists.linux.dev>; Thu, 21 Aug 2025 05:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175575599357.1401.5533730496931412914.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ba664b1fa04088ab05514ceee1ee92030972791bcc237476fb811668d02a8d78
Date: Thu, 21 Aug 2025 05:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755755993
