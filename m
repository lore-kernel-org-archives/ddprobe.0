Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1043872608
	for <ddprobe@lists.linux.dev>; Mon, 22 Sep 2025 19:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758568794; cv=none; b=fVCzWDdYeMHUkmH/knQHh8b5QybfeOqbLyzNnOLjw3/HAUqTLLFB6R369fgbCjlIb995xcvOJcgwLv5d0bCEulMiN3xfj1zglqONKcDOYdX3DsuGBcKYctunK+Hz873uT6tQ3lc2sj/6GFql3Uz3zGHLhPxLIlafrpDR585v6X4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758568794; c=relaxed/simple;
	bh=jq8B8UFZoD7tY4wEk2ONrVndft7lZf9HPN7D5ya1nLw=;
	h=To:Subject:From:Message-Id:Date; b=pKN2O2s5YPrnM9MGN3RParbkhjcLTR5i8W14rTjwqduB53d4plBdJf1pV38F6M7Y9kf75XF1YlZiBZJ3Gy39HSMcRS8ZLNv817jeiksmjz5877LpGNDqV0829fIZiQjM38VYyMOJ/h15qZyGjq3F8jSL5esvm70E6RpPhd5z+zg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NIQR+542; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NIQR+542"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E62CC4CEF0
	for <ddprobe@lists.linux.dev>; Mon, 22 Sep 2025 19:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758568793;
	bh=jq8B8UFZoD7tY4wEk2ONrVndft7lZf9HPN7D5ya1nLw=;
	h=To:Subject:From:Date:From;
	b=NIQR+542XwXt4UVklxHuxCE56R62tKvAxe+VokdAkEEy7/AVTRJE5Bx9uWCaCXuvp
	 I9qSDOn6Gd9j/ERrqIzojNOX5tMFP9tfV9VrBhGgEgjn+0EXFmJmqrT9UM5uqo2EtI
	 Eq6xf0hyTh0U786+tdw0IefOhWGpDrobFXYsDXgSC2UWspOv9NRCKvynsfXykSnArH
	 3NZrAMsSjZqvVRs9YVzKZ5JaSTBe3vkBLgZs1SOv1DjskzmRnl/pvfE9RdUfIR+4y2
	 EvJ9VMQdqT8z6FGHQnIaXm/BcKOnHtYNXq7bH/vj5gMXDzwvBSksXve+8FiXZAzRb9
	 GhfSSJ833hQ3w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F6C9CAC592
	for <ddprobe@lists.linux.dev>; Mon, 22 Sep 2025 19:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175856879358.3916.5468573010406295984.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c7c66e5c4d43f8ea4b48768fc0df0fbcab6b4e321804fc1c6e7b40638e06cc00
Date: Mon, 22 Sep 2025 19:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758568793
