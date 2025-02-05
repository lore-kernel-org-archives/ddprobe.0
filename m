Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3958238F82
	for <ddprobe@lists.linux.dev>; Wed,  5 Feb 2025 19:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738783556; cv=none; b=sqsoLUB03lhjOyPHRCDJpf9dGquJszvfJUbrb8XBYH6CTWKaBBWGRLVHku5z2jeN9m3gy7v0DEyVuRDxI15voqkXjfkzfvZZpHIox+FXOuYJrb2LaEhE72JYTNN8J1gWPa0gJsLcXJerZTnuqpLeNYS6YA1JQbi0oHD+sIxcmDc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738783556; c=relaxed/simple;
	bh=mwZKYC8PGnI3slF05Yu0XwjDsEdjf4zXtVR/UJWcnrw=;
	h=To:Subject:From:Message-Id:Date; b=ZiYGWmlxbJCvTQKmztrLTPkMySSHQuFIL34S6n1HGklQlanmgpsyolVC2M+JAH7H3qc3Yx4Ypwqq778t/TUUFVH3ClZfJjtl2U05Et3hv5Ix3i/8v1XA2BlHsaQftfNJBXdo+JRPJc3Qt2NIQcvP84FGHp3Seu6/YmL7w/ZSzHQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Dy1UjXBb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Dy1UjXBb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0158C4CED1
	for <ddprobe@lists.linux.dev>; Wed,  5 Feb 2025 19:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738783553;
	bh=mwZKYC8PGnI3slF05Yu0XwjDsEdjf4zXtVR/UJWcnrw=;
	h=To:Subject:From:Date:From;
	b=Dy1UjXBbAzNMiKlmOnFubg2Takwn41s6xyNqF/Ekh/gl3LJISJrezvXxPWNgOxtlQ
	 NQk0uaf4QutCN9H5EaC62eBUOI+gkFr8zr/wKcW8/fiLrVcgHploesAFFEXd3H9O0r
	 1dk/aTZxHMdpfZ0AvzmQp6/PjdRshZIunIyz03+04lsnVbWok6xxK/dceR1hdUw/sE
	 NRlW20DHAFHjCVZmxfivNkqu9YRd0hxsLM3iaDeeugXjIoKaokqXugHw2UChbKf54c
	 skIBzS35+ZD0vJmOKViQ4VNrE+dOi/mpm2bhj4UEJ4sKb/KDe0s7FdhYErnZlubsKO
	 wXC3P2USpPJ8w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A27BC02192
	for <ddprobe@lists.linux.dev>; Wed,  5 Feb 2025 19:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173878355361.18883.14019239085306186258.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 278700cf921a19b2b5cd76b1a05364fa177a515384958a78cfc7316eedaef088
Date: Wed, 05 Feb 2025 19:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738783553
