Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0BBC94C92
	for <ddprobe@lists.linux.dev>; Thu,  4 Dec 2025 00:22:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764807774; cv=none; b=iZr2TxD2EbOQ6tZAE4EsfKc6M1k29JaDbQEMsnbiQux57Rr9507HAIfgRhURO5P1HJuN0r0K6FLSGJbxqIPppV61oXcF3XY8M0CxCePTjIMtE1tLuwQMXSjq4jkxZEIY1L9RQW8X+dwgjKaXOwyt9RA0r+mQBmHSVPn5pzrmqr8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764807774; c=relaxed/simple;
	bh=z7ZQLKx933EQM68phOratpHs8VmP2fnyeY0xPvhF/tE=;
	h=To:Subject:From:Message-Id:Date; b=em/M8CuV9R6lXy4KElc4PZIHUh7BciJK8FSj2WDJkNHrHnWOv8EkDZa/uaOBz8PjpNqAAZAIBcICqR58zftpD9TwsRsHwKhDK1fbP3kDfoglTNx2+C1GOohKs/wVVJV1KnCe18P8tsw24bGOLPNeP5jf93pl3A+UiNIFuO+Jibk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=R6ENxvzw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="R6ENxvzw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A23F5C4CEF5
	for <ddprobe@lists.linux.dev>; Thu,  4 Dec 2025 00:22:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764807773;
	bh=z7ZQLKx933EQM68phOratpHs8VmP2fnyeY0xPvhF/tE=;
	h=To:Subject:From:Date:From;
	b=R6ENxvzw9KymqHbnhLkaMW/MubuFNmMLHBBzrhw5dUmUkfYJBSptHyq1RrcyKAekl
	 ybzyiYEyAocvZvFOV1mFJAlsgNPSrecVVJ0oxVdokBCQ2ydy5PlKDTfM34VEEPzxdY
	 vNzhzrC8nQ+W/Wdf3CLfMIEqmEZOevEA7KZ/lKn1y7GqdS5NaIAoA1GNbnwTDwWde5
	 SeN95ULHizJ5GvuIqp5HgjVzQNbOArRKtrpx6OmUADEmUiVeCXj1L9aGLnsbKQQNuO
	 Wzqbh5eYkdnqoZyDkVTamKgR9ScEmft0QKK5bJ+ekEw8rUgX6nG2H+m4KPgRo3LEcq
	 winQP8ic+D+rw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90F93D1CDAB
	for <ddprobe@lists.linux.dev>; Thu,  4 Dec 2025 00:22:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176480777358.9458.15102245926594190908.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0540ce44737049714e9722c70f863972ed30fa80bb87826c4d48b87644c5dfb1
Date: Thu, 04 Dec 2025 00:22:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764807773
