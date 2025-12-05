Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0440633DEDF
	for <ddprobe@lists.linux.dev>; Fri,  5 Dec 2025 13:02:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764939774; cv=none; b=ZcCXoM/rBnUTtx177cMKMUUy0KDJCoJYxRxLhkJHIBcAZq6BPjY9UGOnU6SmjKZAa/q39ldKXCm+hdXPuDDE7UJL/MPgRUMqXbP5URSdffwJ6RPP+JGZjUVi75/DphUI2kR2Io53wwK+2zHs39sslX0NhyZ6F1V4qzMYLSQAYRI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764939774; c=relaxed/simple;
	bh=IQ573pXihtF1QoZosGcnCSMwUlMhftOztKPihfDfu48=;
	h=To:Subject:From:Message-Id:Date; b=JuX7TEj3udLaWYrF7eQubcqxbpDG2mpRHrDfLS1eKbGievVlc79rFErua2x/I8Z0KYyyzT0+JHsTqvfbtW3YHu9gl36ZPvnCtXdIyt/Tg7tWwd7Z//IEq/gRHksQiTn9DKdxZdTAICe0eyleQR0hvHRIoqraJ8MbT4xJKCZcBGs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ipME0Q3C; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ipME0Q3C"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B31FBC4CEF1
	for <ddprobe@lists.linux.dev>; Fri,  5 Dec 2025 13:02:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764939773;
	bh=IQ573pXihtF1QoZosGcnCSMwUlMhftOztKPihfDfu48=;
	h=To:Subject:From:Date:From;
	b=ipME0Q3CS4y3UY4tLgclpIRw5Ac7jBAv6BprsYc1BYJcokKmwNTQ0Qe9fB5EVqeyG
	 IkCrlqy8QDqDYpJR2DwpeWcP95OonBQYaOgXb6r7TDHBE6YHo2wk2bdkxaFqSVxHqw
	 /YOQAUfIALB1A9Zesb1C4RUD96Nf9rEqRKluATYfsxxZPjYQovWA82bOerbgkw4BC3
	 zV6C2Gr07FpFy8vxHPsia/OZnm4r9+4X+L4qVqTMmmp8hukhpJ4is0AVKMWghsN4sr
	 jF0J2YhGilzBbEPUIecJ03SXo6bg+e/E40n31e5q8kI88ZFVXhFGKrgbXKa8RHKU5a
	 R049SNqCY/eRw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96C17D2F7EE
	for <ddprobe@lists.linux.dev>; Fri,  5 Dec 2025 13:02:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176493977360.18527.8064692226709453887.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f0fe5aa405b16c1c809098b25ef32c08732b536c561bf9e8dfc8d2511647ff6f
Date: Fri, 05 Dec 2025 13:02:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764939773
