Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A04A35CB91
	for <ddprobe@lists.linux.dev>; Sat,  7 Mar 2026 06:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772866494; cv=none; b=RmxH3+dSJYi82/G5NXUDqDoigcO53UzMIMtJiBNpZvgvJcAAXNvrwevN/uTF7+8AsEjrPYFywhN62KK5jzRFJ/aj6psBHsnXgBAx3ol22ALZKYtF1Yhl2jYqnpcPfwGAdeU+CB/2zBHDQFOYcdDVqiVcqGFnvdlPiJ8rhNu01Ks=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772866494; c=relaxed/simple;
	bh=Wzw7li0I9FTegWAdNXIRfejO7qi2xDsUgI9ch6m35MQ=;
	h=To:Subject:From:Message-Id:Date; b=mw6/NoN4Naf61z4Xa71+cIksj2yYcsb1iVz9oUPp3vaG6bXhxbOWFuu2HsNiZ0j3RU8IGV99kMIYr9wZUHDfqbdExCCtWT0K9hZ62GRU0ldNZ4T5aEXuKV4UD325OAlRFrd3kkqpcm9FFxERf6gt9fvEQg5HmG5iwezysdeLuHM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AB3fKiuS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AB3fKiuS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADA5CC19422
	for <ddprobe@lists.linux.dev>; Sat,  7 Mar 2026 06:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772866493;
	bh=Wzw7li0I9FTegWAdNXIRfejO7qi2xDsUgI9ch6m35MQ=;
	h=To:Subject:From:Date:From;
	b=AB3fKiuS/gPfMRvWVVGJVMAfgHyeEaPuPamrQu2uqNitrvUfcGlVfJkiUVvpwg92o
	 Hk82btoIYbzgOCEoZr8LB0l9Fo7NuMgYzRpdGcpZ9cVNTT5MHe1XPLpiVF+A4ZqTBk
	 ENlKCK1i9QGJKU1djVpZlgqZdlWC62GkjtBOj0RyBGj3Zr8s3IppUasyyWwWe4pljC
	 MGxoJ2UiVBVt21zp5RPEFY3jvV4X6+7Bpoei1VNzkvzfCGujiiSeFLk+B62BSfL4HM
	 n3DwuPZmOiq0GoYNGhgtrIt49X4cg3987I7Iy/8uhC7EiyqYnt4TDrVuJN6YFwd1eV
	 EsCpqP4c9LQBw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 941E0FC9ED9
	for <ddprobe@lists.linux.dev>; Sat,  7 Mar 2026 06:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177286649359.21657.3554121978389899887.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e67207e1c1dcde8a839f9de1031d85c3363ee363833002951f5976b057a4202d
Date: Sat, 07 Mar 2026 06:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772866493
