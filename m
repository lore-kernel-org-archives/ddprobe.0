Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E1CC15ECCC
	for <ddprobe@lists.linux.dev>; Sun,  5 Oct 2025 07:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759649394; cv=none; b=PHALrTUDXM/5I3HARE8vAA46uP78Z8nEv2VGXxrCjA4THfepz565cUNMgtPY3HS1EqHuOAJ3vKwD0Paa1+5c4/D/oaH2IT/Byc9jzT1SiIPVg4WZQzC5WPJYTmjZqeDRzwItB4nSVL94IOyjG1oqyGFe0C1i9O+rU1cStrNF0SQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759649394; c=relaxed/simple;
	bh=twCerlwzbf3g8uCzVM+nOOTyWBiAYuNiATFQFZSJksY=;
	h=To:Subject:From:Message-Id:Date; b=YeFCkIN3vl9BJ9uYo5wtOwFIO6neXukSYFATP0n1yKFn2GZAWq7EhXnlqNGlZOqAOsOVLGYrny0AXzIW5gDNCk9xD+Japh5pABfEoQFL1r+pxQUJRD3NEaTtC8CxnOTjUmeGBe9T7MIXSt5sgEARhd0B9VTV+zEqLuSu1EKeEN0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fg4wiEbn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fg4wiEbn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB866C4CEF4
	for <ddprobe@lists.linux.dev>; Sun,  5 Oct 2025 07:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759649393;
	bh=twCerlwzbf3g8uCzVM+nOOTyWBiAYuNiATFQFZSJksY=;
	h=To:Subject:From:Date:From;
	b=fg4wiEbnO2e6ofeI3QAvJAZyPQ7+Pt0yD0ZcCzoFsSSpH88VBnqqoFYGixji/dpkb
	 rvQqhWRecoKjdIbKcooY0g0vn42IXonhv43v0zkhd8n+wRkfC5JKhT91Izw7WKb969
	 wXK8Lcs4tR85LVs7haZJC3Qn9a8wvvFsM6DRx7CEQYK4Nravi3VaAOkR7PW8A7x/rX
	 h5/vuXG1PY7o/RtzxmYT3QlvJgO1t8E6293n7NlzfM+yDNXGXL29w3s+WSAEHUp61o
	 XhqsFmV18xVexp9hYkdh3uspbY3bSSxxbiyCBNK+5r/dm41SCPGvc2XyF+y8k9QWWG
	 xYOjZO8Z5RMUA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9474DCAC5B8
	for <ddprobe@lists.linux.dev>; Sun,  5 Oct 2025 07:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175964939358.23589.14373924905764756495.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4655ea62cc4f39516bb960c7db0510dbae436d08e7e7ac30d91d33ba6db60f32
Date: Sun, 05 Oct 2025 07:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759649393
