Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4767715B971
	for <ddprobe@lists.linux.dev>; Wed,  1 Jul 2026 13:48:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782913714; cv=none; b=tWgAI1q/hKw03gRaBahmRKlq9P7JcVFd/ResDZhCpYLzYIzfuTYD6ie6Zvpgz35fl+8h+/+EgYj4z1wsqvuuLuGPAMzQe7RUAO89VAMRwtUISC8I2Vn1dZD/kLBJ5ndM8PWjZjs43+cpLXqfcSOV7aRH/0k/Fuv6w5r4RR1wYXY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782913714; c=relaxed/simple;
	bh=gf8LCRc5hKKBVo7wLpXTq3XI3MP0gThyInMRfOUdHD4=;
	h=To:Subject:From:Message-Id:Date; b=CD4jJAgy2T3blUla0hz9V4EqkXzQTgmtqE8ARaSY3tSRusy0L0z8PSQw4flBjjLY3L24m9SXa2FMkQYM/TQo/OeZxn5wJlm45DvFNTIzbebTiKyP6tAX7i3nw87CIi+VTKlmbMZvm2E5zuSLPT5rKHHD8uwCEYhL/ZEWMsIp/H0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Hl/IvMS+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Hl/IvMS+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C7BABC2BCC6
	for <ddprobe@lists.linux.dev>; Wed,  1 Jul 2026 13:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782913713;
	bh=gf8LCRc5hKKBVo7wLpXTq3XI3MP0gThyInMRfOUdHD4=;
	h=To:Subject:From:Date:From;
	b=Hl/IvMS+kcVvJKJ1DwRj/y2ltVQ0fOnxey96Rsqdf07iRMJPDelkKxoR5YPZOJhWL
	 uMeEzFHWJO71BQWm2a1hSl3OE4ytITMnXhlwv/jPUgDqe2WljY1xf7KnHvTEc9w2X3
	 YpEOIGK7ADIyu714z0A89rTbPPwrimpemN/EWWO6HrPQhLs6nVv2k1MDnw4kLSwR+Z
	 6wVvOQwblh6stlRZlixFzMEnzGYsDyU+QGnFgktpzpKG54YSkyQqghqtxfuRn4+eQm
	 F0ZOTlhmEh3vcRKKSbx/kv+bO/e79Xo5z6N4K5tcj2XJRzoRy8HViDtZHv3lRfGFBx
	 JO+6MjsGJQSAg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC49BC43458
	for <ddprobe@lists.linux.dev>; Wed,  1 Jul 2026 13:48:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178291371369.5333.2004331809154505474.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 88e9d5a431d2b2b8a93fbdce4ba6b915de1e76df35bc0d33336952629141ac00
Date: Wed, 01 Jul 2026 13:48:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782913713
