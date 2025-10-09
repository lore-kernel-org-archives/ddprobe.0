Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C23ED7261A
	for <ddprobe@lists.linux.dev>; Thu,  9 Oct 2025 02:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759977593; cv=none; b=TlGiMtGS5dEFNccvzG1oY42TuHEew+bqYq0z0BxjZN5y6O929NReCwaMgt+XHoE0HOobBYXqz7xhHp+uuz+u5NEp68CbPnwfsj3N2aaF03iuiFJNL0jFsoAKcV+SApZ4RysNDSOlo72heBnAjlE5XyI2OJClSKdtQFwRIoWtlWE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759977593; c=relaxed/simple;
	bh=Nd3Wevmguv07FCq6mqJBELuzMWmBJz1SehU5nkcEmcE=;
	h=To:Subject:From:Message-Id:Date; b=jzZ4e+eq/5M+DE6k2lqxwkNWO6ZYDHQksB5SbHNMvGd3yvVwSazMB1lqB4ZGCk7lEQrQrj2W+a2D70KIKYjZv+MZObNOC3JWbr7T0ab4JMzo5L6dQ/oxuUKzsyquGk6UhSJ8HL6E7PhF8oRgPYhYNONuUp8Pi3LEyUVP8RMJDYc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DDfE9/84; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DDfE9/84"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3978C4CEE7
	for <ddprobe@lists.linux.dev>; Thu,  9 Oct 2025 02:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759977593;
	bh=Nd3Wevmguv07FCq6mqJBELuzMWmBJz1SehU5nkcEmcE=;
	h=To:Subject:From:Date:From;
	b=DDfE9/846cbJHbEp6RHQUp/SfMqCHiz3S0j63dr9aVOmU5aGAjSHNk+Yg9/qEsRsb
	 NPVNpxc0Y5CihAi2CRbHdNYz99joMAimgIQ/dhP/gJTigymn/jE7a78zsfi+bKsuSq
	 FiLYwQ5enlf25YAv52zD+rW4Rs5zDwaSG0uLtEZrG9L1u7nzkvnJiPlvnLsGPBU/xE
	 57g31+CYiNoZc5c5CBmBlWNuLb6ZdkhEO6ccjKq37LcjPSC5wv+hr2dcWep5YPv9N1
	 uahfIenbvJKGboX4S02sbhdx0sUtr6Izfs7WAICtdkHhwEu4IU7lKyuzN6HKfWuyVK
	 kPzEuePCzxs/Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90EDCCCA470
	for <ddprobe@lists.linux.dev>; Thu,  9 Oct 2025 02:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175997759358.28370.859355434427516944.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 17632d354c7314adafc34e9559975842df7d8309c220c4d0b0f9c8188a804abc
Date: Thu, 09 Oct 2025 02:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759977593
