Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 07B267494
	for <ddprobe@lists.linux.dev>; Sun,  3 Nov 2024 21:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730670954; cv=none; b=X9BkHc6jlrDbu0zFkxB8JqADfJ7LXuXWgi6VqL3lpZSa/gQL9qNkSV01l2G5Z2R4vcctgJ9340UJchT6e2zsh0Tz6S/4g7xVXpYRiL7elYWqp+IQRMX4XhPT6iZQrU378iwK+IvavA7z6HPtUgPeqMn9ZqlpNTzp1lgD7QI5cf8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730670954; c=relaxed/simple;
	bh=ITT2CcXxa85E6we8XwdpGYIkfnAGMMaRnJwW0ZnySYg=;
	h=To:Subject:From:Message-Id:Date; b=lgtpiiM+KO+YCn7GWryxa99kv2DYrhJX4XlTD+Cc8h+v+J3IwTAjj9Sa9Zg+J64n736lXFaBvjHRs55MPxGRYAd2D6TyiGFVK/HKE+rPpSZMjEm7Dc4Djb2W8DLYAma6T8EgQTOau3z+OCarIXVLszvjfNB6frYxfpuKyLPJh34=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=i6SS9UUf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="i6SS9UUf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F154C4CECD
	for <ddprobe@lists.linux.dev>; Sun,  3 Nov 2024 21:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1730670953;
	bh=ITT2CcXxa85E6we8XwdpGYIkfnAGMMaRnJwW0ZnySYg=;
	h=To:Subject:From:Date:From;
	b=i6SS9UUf3QgLvFOL8kh7Eka2MrzvGvCdRRvlo9i4+PSZDmZ3L70QBZiP0uQHqal8r
	 BxmxzPSeuem8V/fvjVKhwprMdhvPqLBp43ziHW4RyjP4TnL6ZiakS2p5IKAVSaUK1B
	 6b/On0tpNmLoS5Khd740UxKAj9+3MRDIyWY04ZbNpFKyUb3uBnCfKSmb0lX5eSd66Z
	 UciytZ9OTNiwZu6UL+mgMfwy0krw0jNGd4jz/6iLTCKE4Sa3q3LkmmwvXOkQxhlWNK
	 Lc9rksfhXEUBOCoZ7/8IRDyqi32T3ZyIFnR+m4aWkikmXlkG+qUBtEmsb0VYDhKGmF
	 xq0qXRwI2rnWw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F65FD11193
	for <ddprobe@lists.linux.dev>; Sun,  3 Nov 2024 21:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173067095357.5872.6752335079296373548.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e4d4c678b528a269286e37af8f3507d421b593c0be4502f96d216bd85dad4114
Date: Sun, 03 Nov 2024 21:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1730670953
