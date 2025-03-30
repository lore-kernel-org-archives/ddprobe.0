Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46870288D2
	for <ddprobe@lists.linux.dev>; Sun, 30 Mar 2025 15:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743350394; cv=none; b=UpzwBcEY238H8zygYRiS4BGB7fIkAGHHlueX3F5Fax1CVoskBBPWWqqMcwfyXDK8gLxZJJUoMSQMHanwriTfhRinxDIb6nhcXLf14nljigYbjuIDuZDA8iD/DF6slC+H1RzpjrNq07GRESJjKKX4GpJzd2qDdQAAEr0XgCXNaAI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743350394; c=relaxed/simple;
	bh=J8Kgqg3dMkZuDDbSc9hsX0fI53LOqgjNHmAeY49YK/0=;
	h=To:Subject:From:Message-Id:Date; b=fOy22qmJGkRO3v55Q45oS3bSGKUQCMOC2TwRVDBuKuB4e24SXR2nyXR+FcxcnWf8YW9PX4oKZNdZZj1QzT+nz37qIOI3dxAxQedLvEeRzx3mvh7yX3yg3GZ8tiS8OLbrOlEyowvaMcbUt9oVJ8kBifTW08FUnV/l/HFU1fXDu1M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KyNGFrvz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KyNGFrvz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B4656C4CEDD
	for <ddprobe@lists.linux.dev>; Sun, 30 Mar 2025 15:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743350393;
	bh=J8Kgqg3dMkZuDDbSc9hsX0fI53LOqgjNHmAeY49YK/0=;
	h=To:Subject:From:Date:From;
	b=KyNGFrvze38Gs4lQfmTdEW95k+/gNf1Y9swiBZOLj7bF4WEl/Sre0A5j7lcsB7S3Y
	 MSr5Y7QbkzTmMCi+B9zpC1TLx9Drk3BwjCz5FE0UZ2FhgxrTo0RpumWYnyjnLVGgpV
	 SXPN8DMYQwLvIK6sXlRN0ER2KJeOy4dDGNtJkVQn6sgfCV2ysJmVwcs0wDo+XSAOI+
	 oQ6Lwm2Ea2Um00db+RPT+1dTyjLi6mqnKQdB+mQwWKTc5M8mmVA+N5J77rMrYSNKUf
	 /IJbzve+/rNq8YHZv/V5bdWjS7s4fsB4JGt7QLJAWzEC5AZodY+PUtwkeHQVJJyVvj
	 j0x5QCQTK17hg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9AF78C28B20
	for <ddprobe@lists.linux.dev>; Sun, 30 Mar 2025 15:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174335039362.9547.6744686219439295127.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 36290bdb4efb0b4e3dd73771d5e59fe557661be02cb4bbc12ca1c7de3bda4e8e
Date: Sun, 30 Mar 2025 15:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743350393
