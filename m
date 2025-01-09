Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20F55202C3E
	for <ddprobe@lists.linux.dev>; Thu,  9 Jan 2025 08:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736412954; cv=none; b=lMHZXX7v9Ro4ktS/ov3aOYKAB+XTuqNoZn3ZE3gJ6dWe3kzdpBYEOy4ZlvwJvHaRRrx2stO+1AsKZhjkO8yVVwrdFzGAY66j1Q3zIZWU+/hB0uNWrHuEyLVlMT4eLtG2Qjmxr4yeJgYuPwuRWRLBdwMMRSQDKnWf3gBKveHfyFM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736412954; c=relaxed/simple;
	bh=NMkPxHoy+/sGmgbEluU3kt88wpbFhz/K2Z2LU1CfkD8=;
	h=To:Subject:From:Message-Id:Date; b=MdiyWjG5d9sUgkD/8LpBiXZ+0qFH6NVebBqP6Q5rUHy/f9tXVhGLbGiip5iKepD5piJwqzA3q0QrkPWOzb7+/QSOO9UJhgrkA6TqCkjFbcR8YCuF88Y40k1vcVDYXLvCVAwiqwpQuaZmRLu4OQ9UkZzcGt+GT3hHYzKSl7xfKXQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sHRjzMun; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sHRjzMun"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B3EA9C4CEDF
	for <ddprobe@lists.linux.dev>; Thu,  9 Jan 2025 08:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736412953;
	bh=NMkPxHoy+/sGmgbEluU3kt88wpbFhz/K2Z2LU1CfkD8=;
	h=To:Subject:From:Date:From;
	b=sHRjzMunHoZxDhr+GfbS++XiT6YdU/bzF2sUF6otgWYLfepkmOtMq5/z6tna1UUJh
	 oCG5SpYUnrt9ui002zYHseeB1a2ktODGCnGlP9ix62UmZRvOcGNyJkVHZDjnP3VT3p
	 DTKy3sRelpFi2Er8VEAO3F5vHO8xXy0snfUN6bCAO0x5IH2X1H9Sg+/UCS766jJhPU
	 FAMvyvNPyYJKVfJnYpBBCxGPC9OCO8KG3M4R6CzVTF8YPkPdmlLyU6MXa50YYnfwBn
	 4JASO24nZv52/s+og7gUbQCnVTu9co5K8TAQUF3+/lMCFzI0+oTH2wizTwUe+pQsBj
	 /naEar4vRditg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E6E4E77199
	for <ddprobe@lists.linux.dev>; Thu,  9 Jan 2025 08:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173641295363.10598.12984711391934320644.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0ded9542383f2af00e02a36d4056d039e1216351853f26675dcc8f56413325cc
Date: Thu, 09 Jan 2025 08:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736412953
