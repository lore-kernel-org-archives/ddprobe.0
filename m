Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E590C8DF
	for <ddprobe@lists.linux.dev>; Thu, 25 Jul 2024 13:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721914554; cv=none; b=AqipW27W7DjiDdKZI9ai+dpJv1hM3f/YzZSl6YpoTPeudpTKTJX3XqwdxLvJkibA3o1MA8CFoLQv1lk15iN/2HZcEn/ykSqE1DIWlzh9nNWrQtbYjO+3dqUeg+cqyysOmi9H4eExF3cLE0UVkSCu0uXKK9W1fkJmNFcCE3LW/6g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721914554; c=relaxed/simple;
	bh=fTj/VCiNKm62V4bsTNexYQa9bfz+3LVw1tKBNAwvpf4=;
	h=To:Subject:From:Message-Id:Date; b=cRn9FHgsQWtLG48QegdJ515nVg4u1RyMHahGYuTIoxzyR/eS4Ws8tq9oe9cv0zrGLTaPUYTr6PWd3xws+et/h3mdugRxzJzu14TNbQmzOlp+EWMPvW4ivvXPMg5iGNAAoycnK8/E0wtkYMPtMm9yp9QiDryYIhvY1VVUk8SaQPQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TTSo9cLo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TTSo9cLo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB67CC116B1
	for <ddprobe@lists.linux.dev>; Thu, 25 Jul 2024 13:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721914553;
	bh=fTj/VCiNKm62V4bsTNexYQa9bfz+3LVw1tKBNAwvpf4=;
	h=To:Subject:From:Date:From;
	b=TTSo9cLo0gVYuna/ehBCuYNthNLYV5ouiPHX6Tg2Lr/3PtpXH4sQYjAByydmBNYwk
	 Kykdz7HwKEvznoqM8RbCeKOge8/jAIxpt7hxo1UwKCEoy38AtbcYYgeGilO1AYUL2I
	 wX3IbyBdYUozdPum3wf0kPePps+tktJiAeLW6BR7uSBPyvbB5HRb7cbWtTozq5K6vI
	 riYwP5jrRK11FJk69AyjarD2J/cG2+++/acK+pHWA0UIEq/6atFFPr2RRt1c5afp0y
	 9GyIExbheyfUS1fBsSyLIn2te0ycDEQTbMXSL0uK/SWQE96814RfUY1q2FUUT93kLX
	 Ve0oBtuB6OV7A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A3CFC3DA49
	for <ddprobe@lists.linux.dev>; Thu, 25 Jul 2024 13:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172191455362.23596.15335503109425577771.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 29116472a57adece2c3172d2389666969b2c6a9fb43a11fab70feb142a9e2e7b
Date: Thu, 25 Jul 2024 13:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721914553
