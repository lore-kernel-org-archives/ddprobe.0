Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0EE9C54262
	for <ddprobe@lists.linux.dev>; Sun,  5 Oct 2025 07:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759651194; cv=none; b=KirMIYqrulbIJacLk+4rGa80/as3H/By7Kzg5ImfOE17kv1SFD4k6iYrsQP3fasnZhsiNtmMpbFkq/TrtP4aDvy02BVTubqLKYyDudTzyBbm65cobiE6Y99y7CkepC20yOdyVDAnX64kv2Gufv9lEHGEgGzDTybpY3HMH0tuxEg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759651194; c=relaxed/simple;
	bh=CzKsGpJYktOPbIcY8DY+SMxKYTG8f9TEJbIrSMd7hA4=;
	h=To:Subject:From:Message-Id:Date; b=kx1+ltNpvVL2hyQNI+gBGVS+I+vR/zUEzMUfz1K0fwDe5ThxCHJo0elac1lBu13Ts9LGpjrLl2IViUY6u4J4MSlHnnpAYdriv2vqP7Q5ktuCsIatDyO6ANPXr0KwYMsr/ct9640IQYDFmK4e/q9I7JN5lNA6ubd89njeQ6GKbGs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aZTKMwqU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aZTKMwqU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6F5CC4CEF4
	for <ddprobe@lists.linux.dev>; Sun,  5 Oct 2025 07:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759651193;
	bh=CzKsGpJYktOPbIcY8DY+SMxKYTG8f9TEJbIrSMd7hA4=;
	h=To:Subject:From:Date:From;
	b=aZTKMwqUgeRTjoGp+PghtxDP4Qd5n+3B6/4lBfhR18Q4ReR4CQSmz7xwNIqmvpege
	 qmG/OLB1i6Wxlm61r8rnDjZsWafW5tzP2PZrrL8NSOddHzecYb7Qi4C/13/wrnEI/Y
	 UjK/1hlDEaQ1e3cuL0i29eefcMJ0UHV5ADFAJuEKcd8gIRtggMCW/lx49+Kg1iiq+x
	 4JZr7K8Wg3DNxlxbcAaAhB6JG1KyAxXoCrEHcpqRunfo1Aswu13mfyRgC6Z0YSgnlt
	 7ZWKuDM4MX7zdvj2uY0n3ZhCsSbdn98aZLxLc7f9JnUK4mqSi9KRge4Xgz/Do/ucLB
	 fj17avCFoPrzw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94A14CAC5BB
	for <ddprobe@lists.linux.dev>; Sun,  5 Oct 2025 07:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175965119358.6942.14289869867967616234.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8a907812c1cc93606ed7b3bde0d5aa32562116fc05197dfc7dbe00264bb173df
Date: Sun, 05 Oct 2025 07:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759651193
