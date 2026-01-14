Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C2C483A0E9F
	for <ddprobe@lists.linux.dev>; Wed, 14 Jan 2026 16:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768408433; cv=none; b=iPgHWRHVG8xSHnC7vrcdEokqcbkqurwkhN0XrEhGJquyp6DaAQ8zku+6RgYoA8U7pyAzy4ja7GsnQknKhZugNVnDRzKWtFfv9pFlcLdDty+5/SwcxOiNZ1FT8XEj5Ls512mOybKLrr6ein4qyQie7iOfayuFQzJ2+Wno46lX8UA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768408433; c=relaxed/simple;
	bh=+yVR6GMP3iyw965wBsDgqL+3mgl6+nTZcYb9mwM5Ikw=;
	h=To:Subject:From:Message-Id:Date; b=QMxBIGqmzHjrOG9F/1hwUuvy1Msd06yhxELBwkBd8ydR6VwW2r3KGla0GzccO73Wt+3NUCJ30Sk9c9tM/DLSof/jpoeP1urr0bo230wz1eaSf139XHx1kbqza+uU2s3AR1lvxVJscmWsh6MPkJY+TvJIdVT8+1Dew57B7gjrSTk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Icwt/UF1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Icwt/UF1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DD20C4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 14 Jan 2026 16:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768408433;
	bh=+yVR6GMP3iyw965wBsDgqL+3mgl6+nTZcYb9mwM5Ikw=;
	h=To:Subject:From:Date:From;
	b=Icwt/UF1664cqNnvsGn18xOQXeHIgVwY7sO4sSt6l83Yat+ys0OTyTNM2l/5IzF5b
	 5K6bzg5taNCh3AJcVc0xK6V5VzbcAYW8JHQpE6cnqQyFxWjb/lZQaqrRxncsJIFDom
	 ZGv/xTiJem8WB4aR9RzN+APUoGG7Qv02dzZfj6siIusRNSDQT9a6VhGFsLEW1ACT2v
	 netveZhaauDBkWE2sg5oEXgKGu1IhROUDN5XOARXlVRSragrCc21GgiE6nSbaWdGDR
	 sF9eAMonzjToVKfXv8/y8u+8iepCRtpl/R1hA2TOvK6c5SkqMemVtkc4r7oS5BT1/J
	 yjBlI8UHK8KTQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F876D38FE9
	for <ddprobe@lists.linux.dev>; Wed, 14 Jan 2026 16:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176840843358.8303.1123785855418954234.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b5f37736804487a0853796e236b7021a2b3e9db9d2cde130affb7bc9a018aa3a
Date: Wed, 14 Jan 2026 16:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768408433
