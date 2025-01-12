Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20F364C79
	for <ddprobe@lists.linux.dev>; Sun, 12 Jan 2025 07:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736665554; cv=none; b=dlc0vJoosNDISabfTH6+GisiNzHPSx0gKwCuvcyZc4kFC6fSrjXcYJNW0AaEzNdgPNdau8ynMypyScWecFnMsyx/gQ+pd0OZGQrUVx3q2/Dir8kc8qImTY1I3Y7NObGmLq47QVKyHWavLKm7oYgbSfX6zjFPOdJWK1aMUtBugRg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736665554; c=relaxed/simple;
	bh=he+9FW8KCUId4zX50iwq7vN3emd04jVQlsb+HK7t3yg=;
	h=To:Subject:From:Message-Id:Date; b=SJRldT0FKT0wRKmTBFX3gzfK5WoBk03AS9p3q7cBk7JsP3NJ8FkuVlHP+XfNlG5bTr1s8yz7ApE0om1DxcOtgJFqAtFi/yIT4dovvyGNfjwGN6v7pFbbI7T5Bm8zuqsi8dryiJYCGL+17XekBbNsbB+czxNqWahrxrGAXIoqslU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Pn7tB1UP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Pn7tB1UP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB4DAC4CEE0
	for <ddprobe@lists.linux.dev>; Sun, 12 Jan 2025 07:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736665553;
	bh=he+9FW8KCUId4zX50iwq7vN3emd04jVQlsb+HK7t3yg=;
	h=To:Subject:From:Date:From;
	b=Pn7tB1UPGmtP+SHKYtQJsXj7lAxudzJQjhlHKv6g8XjTCgzEItvxm+hqcl5EYur1s
	 SHnbYoVV9Ing4OM4BkY5DAggk7bu/1HKB+vw8V1UQhWgixctf5Y4SzcIDnAlZZO4Ei
	 EHbD7gHhUdbaDuVrPHWrnaJuBa3n5ndh8Ke+uy8DH7cvMqUaAIAjMUfb9T/ozU03+v
	 PODg9CjILiHCzNsq46UqfK9FljMisL9tfqoxmHZyZmDAph20VeRIJp0uEAXRbHulxB
	 /tQ/uOKnyLJ9TlfKtUmLfzijrto67RYoiAlTZQRcH41nhgF+n5KSOwo3EJ0xQtJE4E
	 pBmkCr0GIQOeQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98F8BE77188
	for <ddprobe@lists.linux.dev>; Sun, 12 Jan 2025 07:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173666555360.17722.5480523300565142258.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 54bd91a3ef30cf95d2a56dcf06b2f68b0867e09bd1d77747add60cb3d105caee
Date: Sun, 12 Jan 2025 07:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736665553
