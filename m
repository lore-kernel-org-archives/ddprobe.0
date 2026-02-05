Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 12B3D70810
	for <ddprobe@lists.linux.dev>; Thu,  5 Feb 2026 11:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770291834; cv=none; b=Vv4Dbk2+FA7OtRgRFrNQE8laPhCbwUsEcp0lcic8j8rNyNp+z19zAHGvf18yKIVXErTgQ/7y7iBdLEfQYJmnHpy3816xn2cMzQLJO9zmPz9qY0N282tx9q6b8e9+Zi8iM/Qw85GYre+yO0FLD/HnbhT+uqvrMsN2eCyzmXC20IA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770291834; c=relaxed/simple;
	bh=OvbKXLddZNIvheyfSRJRK4sIn7s7UrGFEpswgkJ3ZuY=;
	h=To:Subject:From:Message-Id:Date; b=J3knABzgbcih8eussid3I+iDTvXHByO20zDK2eCHKTx3gIU+Q27E90vEsXKAxOAVsonp/bvb8ToOnhz8hZ4nj+F4qR6Gmp68CTyvqJYN0ZQAPP7dxrNAbM2zb6b9gFuUHRfhthStBhwvEU5nFZ/0T2BH0UOcIgyRN0cx3HsPd+Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=F2EuQF3l; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="F2EuQF3l"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1E3DC4CEF7
	for <ddprobe@lists.linux.dev>; Thu,  5 Feb 2026 11:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770291833;
	bh=OvbKXLddZNIvheyfSRJRK4sIn7s7UrGFEpswgkJ3ZuY=;
	h=To:Subject:From:Date:From;
	b=F2EuQF3lgImmfYGOJ+QnjezZupfdqCH5f5/Sw1cLtILThau6bt+Y+h2UZRYjm1GjE
	 jm22DEKCvqJyHiK/DZMqGvZseL1m8D55bj6I3WKTtKUe4135VzuGxiEY6oIJuiYC21
	 f323ct9K6mOXPX5y7lzLc5sijNXmBvRdT3IpxNMRvJ0lV7nNx5ZyULL/eAW096Oq/2
	 4dgqiQAq184G8Prg/ffApV/EA90gBq3DsgqgFbYcUzRcFkdR98yZCKOpbgLDoTkOHD
	 ONORd1Jv/1RZnBRW9JYevjgzNWKh0t8UivI68S7M+1qYl1TxVfFi6giZfh4DSeYnJ+
	 Qu1sqGpkIFU7A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91579EC1EA5
	for <ddprobe@lists.linux.dev>; Thu,  5 Feb 2026 11:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177029183358.9175.280013474831030454.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8247448cdb5b01d769a5b942e2d49e5570c73a58bf853ef2bd4977ea12f4cca4
Date: Thu, 05 Feb 2026 11:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770291833
