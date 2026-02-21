Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 11F16213E9C
	for <ddprobe@lists.linux.dev>; Sat, 21 Feb 2026 02:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771642494; cv=none; b=PJypt8pApfdmBpanGPz5Yxshg8m/yjpX11/0FlfmRFKLMFwIZVc+YhzYGJnU9/1ZYTUjXN8mx1Bd9EwhVyRFlCF+Z8VSJgekwSnNayPNCQDQiXZYkZkUIUeFXKxbgAZ9fJZ6bKUbxIJjhH/oxisUdBFm5mkqfiwFB8xx4W3kgIs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771642494; c=relaxed/simple;
	bh=fQotxvs9nQ43l0Z4AoJ14Yp8KLpPOX9KTXu06B83a3M=;
	h=To:Subject:From:Message-Id:Date; b=HjJxI4pYFT2vFCdTly3JbBFuWRJUqXMkBZcsQViGJNOorRjZeK2ziBKlTs71Ja2CbhU3vNrsamCFZFZEfIGWdpGSL9tCxtCgs3JX9uqeQ+w/2wEsU3YxabPuRXoxzIwa00FMTGzZvkKm1jQ+YQtgUQYeLOWoyrWIqeMiFuylbiU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QnE2Si2v; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QnE2Si2v"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7B9EC116C6
	for <ddprobe@lists.linux.dev>; Sat, 21 Feb 2026 02:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771642493;
	bh=fQotxvs9nQ43l0Z4AoJ14Yp8KLpPOX9KTXu06B83a3M=;
	h=To:Subject:From:Date:From;
	b=QnE2Si2v7S6RYaJY8qksdUV9X34FPBryn51FBYmF+LmIaNK+uylwFJf4DkGddDLqN
	 rCPzwmFCxLAz3tTyDZNU4DkYcW+f9LaMfV9Uibg64LaQseQB9oqWc1f+azdXO1Fvy5
	 9g2RCaWu1X6ifWy6tHzys7S9AQVkRhL0ilW7jy+SKLL+TGUSCkWUUHq3WrKl2+sULs
	 SQY2+9jptz6DqINxh2IsX806wnmI+bqbqdU5xYVOx7xpL8MqUFmBfepNzpZn1EvWUr
	 ajiHv0f37BQ79xOR1D37qvEJa0T40WCS3P95nm8Lv9M20Qmnchyf9vUmlCgK6pKH4I
	 EXDVNP7f+0drA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95D70C54FD2
	for <ddprobe@lists.linux.dev>; Sat, 21 Feb 2026 02:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177164249358.21095.6359333007964858956.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b46bc8735528f00e8c151d0822492f176d6c78b6f583a6adb1d26d6beff50480
Date: Sat, 21 Feb 2026 02:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771642493
