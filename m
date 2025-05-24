Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C6E51DF977
	for <ddprobe@lists.linux.dev>; Sat, 24 May 2025 01:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748050194; cv=none; b=rlmlYJ2izQhVwvmI3BchBrdD8VGw+0RxngihzHw7qzKJ+ad/WjpEBqGXvFKWUUU5S9KJiDmXusAMldbA3ljO8UpRwis3kvH08trMVSVB0hIps4Fu9rK8rgTOgXM1mA9uCh9xadNk8bgq/68/fruW9khd5b14vL4jez+eZCRePyo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748050194; c=relaxed/simple;
	bh=+6mBrfvCpnEVW2o5IIFm6JWEh5YdAjRrkfCzWiNvzko=;
	h=To:Subject:From:Message-Id:Date; b=uv0kujfREyLmSCVUxds24RvmnV1fdBpZhT/BtoAQxycKh/Va3VoeQcamAc3lYO/tKB9D/1C1HvRl5VsCcX+wwLxbbb8L5z7WC3GsXyP2wJWYo7r+VpAv+7ls4K5E6I+2y9YktQhoUDRu1YeVQOGK7PzS/Hc5CSY5zDGnU6iLEZQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OstLnIdw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OstLnIdw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0FA2C4CEE9
	for <ddprobe@lists.linux.dev>; Sat, 24 May 2025 01:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748050193;
	bh=+6mBrfvCpnEVW2o5IIFm6JWEh5YdAjRrkfCzWiNvzko=;
	h=To:Subject:From:Date:From;
	b=OstLnIdwR4cbcqw5wrXqIgGML2lR+gZNmbl5e07C/+mzoZwk8c0YkAMwGDt3pCwDj
	 hpPe2OZaFaRZP9CNsmU/o3gJxsZ8Sg4PYs7eWTIwvN1pvT9AGaBUF3mR/zWGSwCxIJ
	 xkUGsZWFc3S3NcvlWLekOSGVrdFvHGQ6lZJIhOxE83EjAVVsC5QwuAU6XLYZSO1z3Q
	 byVGzKJSsO3vyawfwirmN0K50wEg1OFY5IBvVVAdzuvXDj9z475veyxBynXL92UxWu
	 mFnDdZT3XLONqO5uxA9vFE0ry3lmJQ8lTWq4U6wBOgo7s74jW90Lj1nMQF45qdGLcL
	 T+eprrXpYk7Rg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EF05C54ED1
	for <ddprobe@lists.linux.dev>; Sat, 24 May 2025 01:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174805019357.16638.12681121998013979167.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9ea70f01ae4c49f38557e1f6c407b962631035da7a76800100475dca8a934896
Date: Sat, 24 May 2025 01:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748050193
