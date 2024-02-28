Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A0657145B3E
	for <ddprobe@lists.linux.dev>; Wed, 28 Feb 2024 12:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709124496; cv=none; b=VI2aLUILBAdlqEPhKV+fhhe0UzPYZiUAZu3QSIDtn1nW5XAwOxvd09BWymORoqdB7dPIYjUy/NHZP2OHxJudPe9+sI1Hof5KllFoSTOOd+7LmjTgoX7Vby/MseXc1d9DCw+t00h5LO8ZKgc9Iy6r/8R7WVhG6LzssjCy3u0BpKw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709124496; c=relaxed/simple;
	bh=OlXjOnAquEY7pxoJQKjmqXUqmGSFsQVWTKqpashWb+4=;
	h=To:Subject:From:Message-Id:Date; b=IloCr23KIsbU9WWmMT2a1ut0YIoSk5pZChe8xJxpLzQ45Z8a0Ady4DfLBQRL4SIo5/TxfRHmrXfFmqLzDHNWMuyYFNMqiW44L6CRHsk8WFAYsEixMfMmDHQeYaFovIQ+25e5z3SfCLhmQOEV6xbgMRfJD5HOirL/kx75qhas/jY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KG15Na12; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KG15Na12"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 78FE3C433C7
	for <ddprobe@lists.linux.dev>; Wed, 28 Feb 2024 12:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1709124496;
	bh=OlXjOnAquEY7pxoJQKjmqXUqmGSFsQVWTKqpashWb+4=;
	h=To:Subject:From:Date:From;
	b=KG15Na12TTC9fqdWkGp6lGscG/O0FtnQF/lNkMKhHaroaXepcopiIVlqT9fmzuW+J
	 DioIrlZOSwqg6BPHdR6KuFV/9X8dA+bZjqeKzaOSaA5HY+rChvoMnVvi4SBw6QckIm
	 yDyUjaAzkRJU1a2n6LA0NMXdEWsUDJPyR6pluj28c1BHgLfoXuliPl++F4ZAJW717l
	 1p9h0JukakrKm+9V6HONYkWyBumAYqeiezb9/I6Ve7skz4w3sLu8S15Lno6zaxfESN
	 OU9ibx9jX9d4xodInH4VCkcH0cYUAiqXku5lseOR7Lc8KhlnMhI7pRZdurfQuF+NrD
	 dRtrpvSq/lB5Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5CCC0C47DD9
	for <ddprobe@lists.linux.dev>; Wed, 28 Feb 2024 12:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170912449637.22777.7749542778163576258.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2b431f4c76fda832edca46a894b6cc0649ce7850b7b58f1542318f8bce801d2d
Date: Wed, 28 Feb 2024 12:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1709124496
