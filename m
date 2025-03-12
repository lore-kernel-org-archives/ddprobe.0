Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D12911D5CCC
	for <ddprobe@lists.linux.dev>; Wed, 12 Mar 2025 16:48:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741798133; cv=none; b=T5ZH8rRbL/Mix9PJAflmjdmVk/0sDGRa4z/w987NlfRUvRrmawUvy4GhcpT4XzQKkKQW+ZQYrim5P2sccnqFSYC6v/uiF0CxW7jJ0/0vBnztJtfhL3K51npu6H7ZDIKZ1Opfv3f/jfwxtHMPUmuqIsFRorX6i7d27VPLBmUacMY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741798133; c=relaxed/simple;
	bh=n5c3ojjxtjuy02pmeoLP5zQ/xjk7wep5wFKOcbyhnyU=;
	h=To:Subject:From:Message-Id:Date; b=PUwTnauuGPc7zhk1+dG+cnwoQIYUBjiRGzJym4j2fcYqLxVnjlSiwDilSEQ3thgTgsKHEWAuVZuP0Sw4MXKg2ebYzAZV8uxdFCyzW8Qq6UxhWvXREmKnu+cwGhbCePYnRkb84FKfjJoRI8j3BEo7TDjDBGSFedgb+MPUsGqfYbs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Yj7D1SkO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Yj7D1SkO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6ABAC4CEDD
	for <ddprobe@lists.linux.dev>; Wed, 12 Mar 2025 16:48:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741798133;
	bh=n5c3ojjxtjuy02pmeoLP5zQ/xjk7wep5wFKOcbyhnyU=;
	h=To:Subject:From:Date:From;
	b=Yj7D1SkOjDooLBXhgGoMiMvcNZE6ImUqeqh9LVWXumXoko4uy3utv3f6gY/gByk0Z
	 DjCpgjEZyjD3RThTCkRXGbR1kt5jl9VJpj+8jjflwQYdK2ROiE6MJh20DEl85WDY3K
	 noGJkG80RoiqosKcra13fx2TjT1eyvGRYgMD43ZYfYfBH15+NXqrkVGE84DxoSizqC
	 xHE3Jvv6rI99MehvWe1cXceAR69VluxKJveo6Lk+oGKhHXAPa3vSCfJulLuqtHkN0C
	 Rcq46ssZrFMYorCKDzD8ANYpCZvCmujVjsWX3uoGT39KvoUuKM8pNVKvj+5MkDDQgF
	 Ie0mwH8uAYQ2g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94686C28B28
	for <ddprobe@lists.linux.dev>; Wed, 12 Mar 2025 16:48:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174179813359.23591.15445318144018438536.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1e57bf0bfb1403f453f898205b14efae4aa75774038cb3fbfc62a30f9420665c
Date: Wed, 12 Mar 2025 16:48:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741798133
