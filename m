Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21AAE7318A
	for <ddprobe@lists.linux.dev>; Sat, 27 Jul 2024 14:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722089754; cv=none; b=PH0yKCv+MfOe9jLWYcaIIbv/n/eUZHMRztAOl/k40kTtAJ27xZxZb5tt79TsvOawiXfEpxAbWo84KZzC3Aw4X4BelpGbZvbT57emkrNmlkODbs0cMTmioliBwzuJKquWjG3whuSU7dcAKaCCpwglXBRSURkh3QWjF5wfiD3rpRI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722089754; c=relaxed/simple;
	bh=RshYwlMsZsEdgHWyCz67nTnafRz25gj8s/mcuTswk4Y=;
	h=To:Subject:From:Message-Id:Date; b=cJLdaUk99rVx7TbCftdWdjQshGxrPAFyejhqp0U30F3RHY6tT29gUbt7oUhgAQAOTl7LuAh+RlcyXZN9TiAinBeRGwfYIvDe7l61FDilR77LaSZy/6trxp6Mx6bAhGmBurgGPm514fGBK92A+n/9klWMfs7KuZ1kFIoTVZGH/E4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=swBrUCYH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="swBrUCYH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5E25C4AF09
	for <ddprobe@lists.linux.dev>; Sat, 27 Jul 2024 14:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722089753;
	bh=RshYwlMsZsEdgHWyCz67nTnafRz25gj8s/mcuTswk4Y=;
	h=To:Subject:From:Date:From;
	b=swBrUCYHEFQVlFBLXqY+pNC42yT3b2Ya4JomGkUIMwKv6xc4nJSfmpAG4X9SI3H5m
	 jlL8EqJrSrFxA2PeELaO+/g//K4SSsM3/xzLn8Zni8RGS7+7uJSwtxfQwwaNd56CC9
	 YsYJFY/vx819haRJsglvqpXDgSl+berioxp6lgCL17fK0ZtA1+h/1gQ+De03Lo7NI2
	 ADLgF4PUgNAAkZjQpP0LxERwNozYLxd7JzcgWEQsL3AAIdAJyoS1VbJO4d5ItSKRKR
	 afp2MDZ8EYfj3NFtgTsc8lcQy6wYPOWDU8fyys8Az/cV1hQHA43duFbqmkA5J4xuAZ
	 syAQ6lfQoF54A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97226C3DA4A
	for <ddprobe@lists.linux.dev>; Sat, 27 Jul 2024 14:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172208975358.6469.879462200908769472.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fef858d647976918eca0022626317efe63425a9ac46fa7750348a928fc557fbb
Date: Sat, 27 Jul 2024 14:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722089753
