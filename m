Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35B88189F59
	for <ddprobe@lists.linux.dev>; Thu, 29 Aug 2024 08:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724919354; cv=none; b=erpOrbDPaYiRBoyTF1b2nizdb0rg+3uNeFXlliNaa4dA2IVSbaXd57fa2EboRQcVpVO340xNXhFXb7A084BpUhkmF96x9E3fwS6dDhwVueH8ezvorMWHHdPnmd9sNA51gisMp8q5eQc3w8uiaH8jfumtmLk6t9mBNNxYXKwvhVc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724919354; c=relaxed/simple;
	bh=XyfkxIxXqgbwOpcn8zu6SP5bYTw1OSbCxSnFkmM5b4I=;
	h=To:Subject:From:Message-Id:Date; b=lJWPYEyCR4Sf5kE7g1nNsYb6IQsfMZUdxgmQxwFHEY1UjiAHPqgbkz/6UfVeDM5CFUHfDYx4IuNXdjkI9Hc2elUGcG9Dy2r6WcVkNpiaR/LOw0A0SrYXvf6HHNuf2Ww3v1SSnqC2UZQD9YOrfNWy+H7LSXYPLybmurdQ5Bklz9Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vGM0IySB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vGM0IySB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BCB1EC4CEC1
	for <ddprobe@lists.linux.dev>; Thu, 29 Aug 2024 08:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724919353;
	bh=XyfkxIxXqgbwOpcn8zu6SP5bYTw1OSbCxSnFkmM5b4I=;
	h=To:Subject:From:Date:From;
	b=vGM0IySBiv1tw+gwATUhdU6EQP/UxfHxiwBoGvjJ5QGlWKhJbNI+pD43qrnnRW20o
	 ffr4rB2wwwXd+XW3uLK7lw4a05B8vrZsBAax+NewITyPzmXMgQ45+hutmmij81XhQk
	 BubQrJPIwOaDVTmVXVmYET7uQPe7PHwrqEmY0JjT6mGztexbQxKlVo4UFUg8JxoUQq
	 gSM5nu2Z8UE+IkgbZVZh25x9uWI0BsbzqZy+AIdx++A+h7atGYA+zsJ2oKOQDMJrJ1
	 3c4/uHXHvEV/aSrYIl86123w0cA9pHrbX9TSNIS5tRb7effIvTUyNd/reoceWhlTnB
	 WLPZdi+N3DM3g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A7025C7EE3A
	for <ddprobe@lists.linux.dev>; Thu, 29 Aug 2024 08:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172491935365.10143.17856634519794803755.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 05898f9d9277247cebf58afd3445cd87f617c173962d44b288f52ca1e2b3c75e
Date: Thu, 29 Aug 2024 08:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724919353
