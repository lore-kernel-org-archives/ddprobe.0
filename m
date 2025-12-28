Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 483E040855
	for <ddprobe@lists.linux.dev>; Sun, 28 Dec 2025 22:03:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766959434; cv=none; b=oLaR61dO7xJD96wvPyCQxA9dalj/klKgX3bajlDqOGMkURDPwNe0FR9cGrDHLVlI26/A5dJTStw+oEOlSAiyFsoKHEqFlBBkuebbAyUQubbyeOj3xUtrgvpoLTK5WVkDHmXfQrUlGwx3IDOWF260DSlAy3uVxQuRBFCUSGuakgk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766959434; c=relaxed/simple;
	bh=zrJYWcIDvhE8EAkQgXaDYxsxELG26+frS1SFBKvRpEU=;
	h=To:Subject:From:Message-Id:Date; b=gESrWEtH81TSqoFESOQON8f2eVE665aoWc9pLUFm9Oss3uB0K5MKmgD7EZgIDvIzQz2CdPbQDNOgkfWMGPbgEeBY9V7Qu8SjrZ2iGwidiyLSm1Mna5f6OGT9BiyiYyDakHv0gq+Dwhwp+VCVg4MZCZMXNMke3AU3ooYPTu6XN6g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ncdm/c2T; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ncdm/c2T"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC48AC4CEFB
	for <ddprobe@lists.linux.dev>; Sun, 28 Dec 2025 22:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766959433;
	bh=zrJYWcIDvhE8EAkQgXaDYxsxELG26+frS1SFBKvRpEU=;
	h=To:Subject:From:Date:From;
	b=Ncdm/c2T7lLNQl/dsn3y7qoG6gw2DH5bnNExsud02Lrek5StJOpDq+cdbWc/e1D1E
	 u5zIp1inD9LIg9JJ6yuZdIF8Fhgra1RPC4lPqz/A7aAXrRHWoB6jcf3UKCqqBGEuWI
	 S6YtZFu485Er70JEPnYqeuyrvL12ewhe0K/wD0vRUqnCeXRX50n/ZiReaEM7a2mopY
	 d/Wg85UBTWEnvdUUTBbtMlwJJ05ZjMjRKfC83VXW3cm7NxureG0H/KE7/vAdq115RX
	 jOvbvd7et2Jh7lHJjfju2mmkNtP2cFOXGySJMBMt9rs7XcGT/q9sCfDZSqDpab3J5A
	 zXViCdpmA+lzg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB1EFD3B7E5
	for <ddprobe@lists.linux.dev>; Sun, 28 Dec 2025 22:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176695943363.4903.10379385702288373339.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8cbfed77ba030f1241f01669e79cae1fa5e6633cd6760c1cb0fa9cbe07df5456
Date: Sun, 28 Dec 2025 22:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766959433
