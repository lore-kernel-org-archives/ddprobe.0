Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1651B2E427D
	for <ddprobe@lists.linux.dev>; Thu, 24 Jul 2025 14:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753367394; cv=none; b=qiUYtnWvzgxBTnIKPYtNXVArh21+OGboJ4sAFFxt7qTRvVNyTCx1a6UNsl6PCkhSfr3bLWIwj7RLQ5oYyYjbuEZi//yPXZDSgmGVUjPLa/n0MM9Tu+bxyx0r/3KJMQ7N35WZFDQSq0byqoQVPY88+NU6Y/lpQ6cu+IIUnmGrglU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753367394; c=relaxed/simple;
	bh=h1+hfTzQJ0f7KUw2cB0xMUqLrSgQTDkGnGmB4Uc6fec=;
	h=To:Subject:From:Message-Id:Date; b=UQDXSBdhjo08W0jqBks8STM7Lj+2bUus+FukfSaz2+J3EqmN2KKcg6oqSjjvJBIk3QhlQKEtxK1JRayHlNPSsJ/w+rlXBafOMvx59YdZ5HkVccY2g7skhZcUHEAt1VVFE7SO03Qv78R8BlfFkZkwyvqzjcz+xTnq2/xQr+uwVJM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OcKFd1L/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OcKFd1L/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D800C4CEEF
	for <ddprobe@lists.linux.dev>; Thu, 24 Jul 2025 14:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753367393;
	bh=h1+hfTzQJ0f7KUw2cB0xMUqLrSgQTDkGnGmB4Uc6fec=;
	h=To:Subject:From:Date:From;
	b=OcKFd1L/QyAVMah68sAX8IzCeUuR5rU5+xtQgL6voF18RDB/SOHm3BPPlRssLpJnc
	 mphpQk7kR7OZVx6oje9+1zeb+Yihfeyj7JMnWgTWjvHH9UquhwmoAz3uGjluZXh+8J
	 y/tlm8FhE0tljrEyzsv4my0tQWb4qvzcHvjCd+qNTpMf60KBlv1FvYga7NdhbUmmYz
	 fcbLq3a7kOhO4qkBjZ/xBjNaT01dtcFgFUh/Vl+SsLc+kbA2q77uZPkytQ7wyNB9mL
	 DZkxERmbBQCrol2nENP7U9UA3ppe/eh3XiSZCsof6CU0i0i2o/qsIgfgs9+2qcRcCj
	 h69eeGzK96gjw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F914C83F1A
	for <ddprobe@lists.linux.dev>; Thu, 24 Jul 2025 14:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175336739358.13287.10602798112989254662.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 45605faa4787e5ab371ef2831770b992c011634e7b77df13b02f04a11a67fdb2
Date: Thu, 24 Jul 2025 14:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753367393
