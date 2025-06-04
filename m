Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E46D10E9
	for <ddprobe@lists.linux.dev>; Wed,  4 Jun 2025 22:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749077394; cv=none; b=HELYEm8HwkyRI96h8e3kSF1TzOqZqlcDdLi++IqFjuAHA4SjIJ03PMiQVBAW18MCX/fslRadyBKAN//bNlz6GnpzYbhvgTbxGA7YCSTFT6DcvBUXmvslDeVEoFSalCOV4t23G5/DkoRoLfcPbPs9FW6s4Wa+9xphUUr5u93x0gI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749077394; c=relaxed/simple;
	bh=sqLbJJd2CxvWv6v58ICvfwWGku5XwKr25Lz3d72hw+k=;
	h=To:Subject:From:Message-Id:Date; b=FzGPve8228D8UcXAEuHHf3NMyE/jKeGOibCCXbEGXgb3gnnglE5LO9mvLATDzek0i4BMAId29CxpcH/hJs5iNiDcLybji5kUSfk8xAL02ihiQ+bfLTUt9fWEToRWXApPmqT1j+bNjQhBIsnzlZxYHoWmhZE+743x1IaBFoqauIU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Mlxx3dLL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Mlxx3dLL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A584DC4CEE4
	for <ddprobe@lists.linux.dev>; Wed,  4 Jun 2025 22:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749077393;
	bh=sqLbJJd2CxvWv6v58ICvfwWGku5XwKr25Lz3d72hw+k=;
	h=To:Subject:From:Date:From;
	b=Mlxx3dLLMG0W5ZTjv06ttaU3NeKWJR3qnRb4wUFwD2YeWIwd6VNrEedL+v/6oasaz
	 iBa1NO2XozRWk5fMbg3VIdZxjX4hCvpFTAD11hyV5lWdYHPZWAhg2MayYwvLYSYkzX
	 ipj+PODYvmHmvjhvhpTXuAGTDS4WTtKk4Of8TSYJ1Gn12uLzF79MXHzWCdhKI4L3Na
	 8NaA+hpGoidNVbWhW9WXQugFEKP/sw4BsMG9Rg3ghaHZ+j4dqpIHwiyJvk2vq2/nNf
	 lSC4pL5RjeH5FSYYUqWFogM+hsgmJlzC5EyFBhwsvZGO9OIVVFgGxEHhKppMuGe5nJ
	 fYSVf2opUOypQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90AC7C5B543
	for <ddprobe@lists.linux.dev>; Wed,  4 Jun 2025 22:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174907739358.24680.3100063856769255663.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 965ffc16441219a695595599c68414169af74c37fa620f258e6d86f7fecfefd4
Date: Wed, 04 Jun 2025 22:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749077393
