Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E80D269B0D
	for <ddprobe@lists.linux.dev>; Mon, 18 Aug 2025 04:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755493194; cv=none; b=fh8OeLKYEKOG/Xa7Qq+iUjSwq+9msJgDsSFAXAvG9mpZu9F8F5XDtABubIzasLLq07mlNrsXf6U/PgDViniDeWSH69H6rq1xoGi5QLO/m1xlPB4XWfteXtrG4t1dcyzHf8jYQN/tXgPm/arhvarS2SICZkFRXtN6i4jxrFTvJS4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755493194; c=relaxed/simple;
	bh=sSlC9bhs/z9ZqoZXUfTZVmDECQpjvJTtF/aHT36/fOc=;
	h=To:Subject:From:Message-Id:Date; b=leVkgn5rK0bloM18qmMACY/jfFu5OjoFx3KluEvNgESg3bQwk3fWGl7M6NFDufGHmPo63FjOm7sJ9Zt/IqLAyCibJ0JP68el086iRKHADoedzXSvTyF4WZ6EWqf3wCARDifG1V6u/8h4xDGY45iirQYdDLuE96kSq7KbJUYnnfE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=L1aSRI/x; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="L1aSRI/x"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A120BC4CEEB
	for <ddprobe@lists.linux.dev>; Mon, 18 Aug 2025 04:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755493193;
	bh=sSlC9bhs/z9ZqoZXUfTZVmDECQpjvJTtF/aHT36/fOc=;
	h=To:Subject:From:Date:From;
	b=L1aSRI/x84lU3lmqSq+jsCz+pzDsysdVrMi2GliE6IHnp4pQUMJXVctH8EuhRdyle
	 LG6XA1qzFuBQ0l3UNdlQ6b9aG6ZOGYDcNL8JW5dDJGTfOr8iuARCcWKxpKmlqabQqt
	 Lvtx0vAYX06ubO+HkMXfSA7/jCwd8PsmVk5eJf69vxDt6WnW3L0R6wHp4BPS23Kmrb
	 5Zr7vr0W2nzzskEv2JqYhk1dBgA0gfAYhDwJfrzVRbk1mGNVRe7l7MJ6OvmrWhnkW/
	 QDmcZLqcvAsjcRGasEWaWkmEHu1nvrF40FIdhFuu4djNA2qRw3qdZqE6BZxqdyyyrP
	 jqWa5M3BXSOJw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EEE3CA0ED1
	for <ddprobe@lists.linux.dev>; Mon, 18 Aug 2025 04:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175549319357.27379.3670038717121362852.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 976799d3088521f791c60767a9dde249b9ee7eee7fc73d5a0d8e4ceebfc8d4ed
Date: Mon, 18 Aug 2025 04:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755493193
