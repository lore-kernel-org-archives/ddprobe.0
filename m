Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 587622BFC7B
	for <ddprobe@lists.linux.dev>; Thu,  3 Sep 2026 23:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788476434; cv=none; b=qoJBLT/4oJ5FE+X7piM4gIb/qumDpowK4HPya4crSjoysatihgRKWfMKo+2BipxGnB1I5nU4o2X9fGXRZVzEp+yqV1+2Z2eXdB5S167pvz65J9Bho1InJ/g16A/aNEqbQEeWR5wx3rk2kSlJZrGlTLRevt3b4PX24k2aUmMZyVo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788476434; c=relaxed/simple;
	bh=/JTLZgwBHvDnPjAZDll1YO9aD6Q9UeJKwCmB/ORwy1U=;
	h=To:Subject:From:Message-Id:Date; b=t0xQ3/gH4D9m8tmcxSSoel2AB1BIICd76yuKvgD6y3VmL2XakVmVHMy/wHCU+p95Y/XgVg95uUt8sy9mdUuPHu5EjAafBfK7dH/jXZrydATlXruPPINEcipfWh47EWTOyDmaCHGVv99tOvUKXtieOQfGHgaBVNUlRxKKP7mLEI0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jkYUGEgj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jkYUGEgj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D718AC2BCB8
	for <ddprobe@lists.linux.dev>; Thu,  3 Sep 2026 23:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788476433;
	bh=/JTLZgwBHvDnPjAZDll1YO9aD6Q9UeJKwCmB/ORwy1U=;
	h=To:Subject:From:Date:From;
	b=jkYUGEgjEY24hD+cHCxeW928IijxdSAObEwk7M2HIdsofYiZ+OpA6hMaxfrD6UY7z
	 SziiO15Z9boNjyHZ6vDQzXqzB0BVti6NIZ38TV/tOnK0Qv7PLZ6Ec2rLUbr4bZlOUK
	 oj37y2VdUsdw+RUWt4CPuK/DWtaskjo5Q/o25IjLDucQHI8iG9OIqJJZGzBIsiMEWt
	 3Z5VESIX6SD0jvWWKbnDeF+G+N2vGPhS4V4yGh2I9ccb3QSl/uAmsv77+mavKzgJWa
	 hURz5LXNf8R87z0U1rlTcfc12gpNYEdJ6VlHD+P7SE9FSJKsZGmf2loATNWgokbyBQ
	 xbA4qq1Jyc72Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF66CC61DD3
	for <ddprobe@lists.linux.dev>; Thu,  3 Sep 2026 23:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178847643370.5102.9654343317506475479.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b8b6ba421eae0e31894df6d7e6e8754bdc61109b1ac7a48032383b5cfa49dd0c
Date: Thu, 03 Sep 2026 23:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788476433
