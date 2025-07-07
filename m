Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28DEB1C5496
	for <ddprobe@lists.linux.dev>; Mon,  7 Jul 2025 03:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751859594; cv=none; b=D4ld25xoYS7xzOSHn44yA2X2lvJXS9UfQjEZ0SpdalkN88OlTjJSncMHFpl0oD0u7m5jF5eAHtxW1wUDpmsOSBbNiSh5NZXJ+84+QW+bFfQ7a1KGplXoTK5ui9pVQjgdRuUD+Tw+P0Fud654oDfKqE5mtRzbkhbRUOFmVoemt0c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751859594; c=relaxed/simple;
	bh=p2kKb4QYK6Iw2tLJUxPSWGeErc1PThARND4pbNPi1ms=;
	h=To:Subject:From:Message-Id:Date; b=lP/6EjT0Zp3YQptOREkry/19Nuui8nRDZUB5dF0QF846wKN9/gWZCg3ojzXEQfULqnBtFC8oC9CC6/29dreaSXHsKxZWBM6L0EfwtpdflTM4oyPG39zkUux5/rOdJobgVQqdr+W2pc7wJ9TEuoaUi3KUgLIwo5cyCgknpv3h3XU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QsUfWXTL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QsUfWXTL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FD75C4CEE3
	for <ddprobe@lists.linux.dev>; Mon,  7 Jul 2025 03:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751859593;
	bh=p2kKb4QYK6Iw2tLJUxPSWGeErc1PThARND4pbNPi1ms=;
	h=To:Subject:From:Date:From;
	b=QsUfWXTLe0FtRTwJwyasoFAuft696xRWYZJedwKxXRnKsSIxpD9TwuTDaD+dpaEvu
	 KuYbbSWx1nAeVtil5nMKsuGoP0gy6kwBAWMsMK/y5oNbI96CC8tFbBzxYRGTHgS69R
	 nVpqx/jwj6opCAl5Zku+bUqvt+PD2uWpw+uZGRW9u+U0y5jaVZJrWguBDXogdRiIwh
	 auGk9kFFIHkdtn4PGdUWYON1Ydet7jSrsJVpCMAaT8rT5b4GV7d1EL4W2LCD9IvE97
	 vQtKIU+Q+tBG+QA4Fg8JAEFUNhUbEjmUqDJyyIri2DS+mOeQ73VxiEdrJkkqJm4w18
	 fpGTCywR95b5Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E109C8303C
	for <ddprobe@lists.linux.dev>; Mon,  7 Jul 2025 03:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175185959357.27463.16895200028104736516.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 68619255f0efbff9cbe356c89f4d4778644dec4dc7460b976dcc531cba25478f
Date: Mon, 07 Jul 2025 03:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751859593
