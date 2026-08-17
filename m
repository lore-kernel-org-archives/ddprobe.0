Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3171644210B
	for <ddprobe@lists.linux.dev>; Mon, 17 Aug 2026 14:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786975234; cv=none; b=jkTJnpUbvLqCiqcJnEWHPxolaqlKJeh4Zc/BIYyEif/t6zp10Cb8CieCxUx/eS2CfHfIY8718SrFnDioHs0Fc2mMIt/aT9fHIKg7aY2YkBkgtu5VOjPOV+mzu8HEREijepJ0EcPQ1Y3kNsqhOgmkX4xmBvgNVbXeciJvvthcUHw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786975234; c=relaxed/simple;
	bh=UucNUCf3ZvXvSQXlEbZzNUfo0hT01/EUwrS6iStxuSQ=;
	h=To:Subject:From:Message-Id:Date; b=SJXU5qOyss3/V8s3uEYOk0MmJQi+y6duwZxZ6Na7b+3AZDNhAh0JxP0cXraAOuz8xyH92NoI23Q7VuhGx1OJjOs/stD0/CGQMZ6aXo/95Hq2KckKOhjyZkJrxWq1kttM6i/eawIUNIDcK+k7Kymr4XH/ux6+rBJaJspAAvDvznw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oh8o9/y6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oh8o9/y6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF1A9C2BCB3
	for <ddprobe@lists.linux.dev>; Mon, 17 Aug 2026 14:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786975233;
	bh=UucNUCf3ZvXvSQXlEbZzNUfo0hT01/EUwrS6iStxuSQ=;
	h=To:Subject:From:Date:From;
	b=oh8o9/y6MsK596HhgrlCT+hUXh0z1OOxdlJ3ow9WdagOmnvOJa++HWO+MpWdmrtN+
	 AS2C3gdbt8tqP+VaPYkJHiU/Sm3fq6dajveiLJW0GyJEVGrfWzRe4j8bAlsGBqMMEw
	 c9O2xXZOyVrp1I1YNXZb/88jY6a9G81oyCeF5oU8mp0z+g4P8IY6w2P+qt7LtPkJJl
	 i9gLOd6SUuCWpwWXTKZjpzlT08qykYOhd4hFq4aXpDNg2tOePWf/s2XKe34OyBw77K
	 08VwEn1th6oZ1xE8xA6BvjX2F9/twNSl+sDuG5x+qKUG5kjZhZsy9VWKwNfkT1QaEV
	 f3oCavzTy7eAA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB8BDC5DF74
	for <ddprobe@lists.linux.dev>; Mon, 17 Aug 2026 14:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178697523369.8939.8414173157076977092.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5913957bda24f99da18ce685655bd4a05e757687501aaebb10c16f7472685cfd
Date: Mon, 17 Aug 2026 14:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786975233
