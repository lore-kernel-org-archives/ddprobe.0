Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B67637DEAB
	for <ddprobe@lists.linux.dev>; Mon,  7 Sep 2026 05:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788759634; cv=none; b=s/mF76tF4b8T0W0BzkoDzd3LSgIBBJegzqCjmTzsLJngi2KGzAHJyX1WaijcBMeUYG9qxigGpictjwqunNQxQdwz5+KYv84c4ZyaEVGmqkZWjDgR7ZBdtGd1DACOVNtzqWS24t2Utc6HB9zOHmw4xXxnwt86+ojFWPGcDBxl1+M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788759634; c=relaxed/simple;
	bh=SifNTyonohT1ohPFzy8b9RUoOuUAQHkG9I5dVPGhmrY=;
	h=To:Subject:From:Message-Id:Date; b=Ueb4jD7N0QmlwkoM6GM0prNKr85xis3u/q0xECwu4Y4IDDGgJ5le+xVqyAUAH4sNiXy4HH0aFJ/Pdit8/H2MUulThd1ulBCVhA+S0ZNwycjVQQqUst12AHqZY3V2iQNXzmBayCYyzvKCUBHRHE8wbU8ZXO5GbI6xVuDfDYKhHf8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=g4fcVbvS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="g4fcVbvS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0D01C2BCC7
	for <ddprobe@lists.linux.dev>; Mon,  7 Sep 2026 05:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788759633;
	bh=SifNTyonohT1ohPFzy8b9RUoOuUAQHkG9I5dVPGhmrY=;
	h=To:Subject:From:Date:From;
	b=g4fcVbvS+Fd7Ws/+hW+ZPOvWfvGI96F/mie7M+FHZFH9aqdUSMGLKNZnyQ1uW4/CP
	 0Afr1gPs9sn3zXv1y/FTM6Ktas0ZyiEkNnmem1UIxRYDLWt6ekcP0g7VPcxa8DXpXk
	 GIg7iO6O1AwXQhvsG6xyA4qehcaf4L6ZDMwZ6LP+KELS56zEtXnoiuwFynFn+Dvjlv
	 eKrkGfwzzTwBV7KOdCD1qmavJamJJI5hwMptSsd6uPnGRya1QEj9E7A4UY14QjlXqu
	 ySQwGhL6u1dZn22k5jx8q61BYNxebAJEajkMLcQwVRNkWlZq9ngO4QSyw3H9eIwyBX
	 m+6jtGK61q9Rg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEC83C79F9E
	for <ddprobe@lists.linux.dev>; Mon,  7 Sep 2026 05:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178875963370.31829.1599904786897394830.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 67fdd06826700fd4310d095f460d52ed6643fbcb598feda3e0b0e71da9b243b2
Date: Mon, 07 Sep 2026 05:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788759633
