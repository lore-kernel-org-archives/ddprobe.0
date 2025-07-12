Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4EFD02BAF4
	for <ddprobe@lists.linux.dev>; Sat, 12 Jul 2025 15:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752334794; cv=none; b=Z5wEcgabCsXCUzv+wecA4k0b5VkZrzhxGOb9QLHHL+8/2MaKs66hvPCxO91p6Z4u0xDpsP0rdPSvBLITdy7RQP55OLAtRim+7O+3oaSmBMG1+JeY4u601Pvde40VGLicDM+xRYcT4IAiWu2NpWGG0ayaRPumZiQgfqq2c8SG9us=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752334794; c=relaxed/simple;
	bh=hJi5ufkWHLJoatHoJogzutiQpfGJAQZ2XyheOvQV7yM=;
	h=To:Subject:From:Message-Id:Date; b=V32abiS6d8jsgX8VGOorC48RtMBpnRquOpVg8oydDeuCR5nEIYNxFiu4Am5YF/cyhd8QASJTL8vLMduIFbzsM/G62Hh/gAGqhs8D6AOADE0R/Cc86H/npGMVSZph0WSPth8J78L0vy73+POBNw+N6o4m9PqUqQOJqEhRVXEofE0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BMyYaF8z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BMyYaF8z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0C8BC4CEEF
	for <ddprobe@lists.linux.dev>; Sat, 12 Jul 2025 15:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752334793;
	bh=hJi5ufkWHLJoatHoJogzutiQpfGJAQZ2XyheOvQV7yM=;
	h=To:Subject:From:Date:From;
	b=BMyYaF8zD+ViciB86EnXFymaZ3Yh3kvx+iF/5QNhLJ5t4Jovvjc3zmXxXx4XJX4gs
	 XBr3b4aQlK4Y7w9rjWJQwZOjZvruLDhRt8/QGJFRifAEpW7Y02690kUTusmn4zxeML
	 xN7BQ5hxOpPjN3YB6RhS0C6XS5dU2cUauYxzpVHbj82CVBXjkZY9UkQTY+qS73n7dD
	 grWsiKdLMWuQW/l8n1Phn8njcN+YKgioSgkaf4hFrTUC8L8d+nLtyjiEweWaHgjgGu
	 cqDYU7eusqBDck9sEHlyrIBoohjYTs7yr55FaGDg8bV7P3VG4TA6weyH2tg2h8cC0T
	 yZt6OGYY5aoUw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEE6FC83F1D
	for <ddprobe@lists.linux.dev>; Sat, 12 Jul 2025 15:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175233479358.29294.16957603189005034134.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3b7ef761bdf7cdcc1dd6c7e758be69a69c21a142312f0a738567c049d7fd5bba
Date: Sat, 12 Jul 2025 15:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752334793
