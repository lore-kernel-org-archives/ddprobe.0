Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 226061D5AC0
	for <ddprobe@lists.linux.dev>; Mon,  6 Jan 2025 07:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736147754; cv=none; b=AMlu/Z9h4RzNkgirJ5bOliSXtaux2QOO408uYzWOKtsg03Fj/gJiuYRfjttEo//elFg8APRySYCZOs0ktXy0FA/20qpStKVAvRmSuDpM7g+ULoT6pVOSrrFkL27E7baCYqw1CIezbNrRxt11zCgSImnFO6t0BEIdYDctVpWsK2A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736147754; c=relaxed/simple;
	bh=MTVIdQxCZtsiYStM1Quz1aDQhoCf/tCVCKZJik/B7OY=;
	h=To:Subject:From:Message-Id:Date; b=fb6MePm8GaedkEptMw/0/qHlxVMrHhov4y5bMLs+xhi+MD2jL5gUYua1b5OOv94ogQ6mZoXqHOupDz+fGBA1SNDfd7065/6Q4PoWz5UFCLR8cIhXVRdS9It9uv4/cfEPwD13Ks0AHuHXqMYyaH5tTQRwSgoISZ+hWv0X7sgLpFc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BknSRcjB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BknSRcjB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A825CC4CED2
	for <ddprobe@lists.linux.dev>; Mon,  6 Jan 2025 07:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736147753;
	bh=MTVIdQxCZtsiYStM1Quz1aDQhoCf/tCVCKZJik/B7OY=;
	h=To:Subject:From:Date:From;
	b=BknSRcjBKcQkX8ocbR9i6ZYCLTn5Jw7YgEg1+fhZMtNlYXoOwGH4IubioHW/rT44Z
	 KT9+1PHBUqxj3vrab1wxPv2zvpgTNV7D2tducfDKUFPCsIb4CeA33ThONpWp3ykazM
	 Ak2JAgKRraHrKh0cX11xXcSI7TIzb1EvZVkTD0yXO7NR0SEWtKS0sRQQKE3YGdaHSr
	 z0ZvuWzKG/awyvHczvcpWeQU0kbpYRS2sDtWXoe6pJBkp7eXb6Nno+mBm24BVoSzdJ
	 Jv6evfmsw6scnf9YUeTORKJ30InKmOIyY6ArVmEwCVZRWEskuHEyMgCWWWF5cY8H94
	 /yFeGzj5XzGBg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92870E77188
	for <ddprobe@lists.linux.dev>; Mon,  6 Jan 2025 07:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173614775359.23356.12566285458426431668.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3f7ee5ef1e2c20636ca74b89dc0c8ff5aa0ecca0f49e834393edbe0a49830ff8
Date: Mon, 06 Jan 2025 07:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736147753
