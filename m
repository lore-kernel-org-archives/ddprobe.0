Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A14A38551C
	for <ddprobe@lists.linux.dev>; Thu, 26 Feb 2026 15:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772121294; cv=none; b=i50ai9LzA/m29r7V2vBUrPtefNiyhDY2pHb+M4GDeSOM3f5Cfk7t6phET0k8mDtzbFYHd9vjX8pBSKvv6/Ih1M9masOnW4nHhaAnMfFzi6Nfxn7Lhdi7vC1r0tbV0N1FIatxupVKTF6mQNrkSTyeNZusknKAFdHYKeBJV09Paek=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772121294; c=relaxed/simple;
	bh=0ySZa9kjMO6qOjIj+hBxYojHLCKbZoGwdc9YgtM/w+A=;
	h=To:Subject:From:Message-Id:Date; b=PpGvy8D4wIGBpaHeHv+TWmQB7UUiDetsc4yzw93SEjI4/pMpA3NmqM1t88uKS4MB8U/CwYIbdqQnJjH/1lziCKpG7eQod9Am8grmdbH9+q6BvrDgcWhqbBYWkYnlzoUCjuKgV7g5h6Su5YPGm3Q1zw2T4ELYOxxJUN62G6DF4lA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KH1jHrTF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KH1jHrTF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1EC7C116C6
	for <ddprobe@lists.linux.dev>; Thu, 26 Feb 2026 15:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772121293;
	bh=0ySZa9kjMO6qOjIj+hBxYojHLCKbZoGwdc9YgtM/w+A=;
	h=To:Subject:From:Date:From;
	b=KH1jHrTFVPnJUfkPz3wCocsmQpVKP5CnUB5DxNPTA3DAZSg4rQf2oC/yIeYvf9Qrv
	 WFRRj6q1DYyWHPkM8m7SQ6JCsjs8heG73wwcwJ4s7iiqLmgVnxSb5Ma2/mI9l3JAqt
	 1TW4e59xqVYvgXrzk7UZvS4GT5eJaXBx8TVCl+BSFqRRXsqepqze4o4bPMkUY64qzl
	 r3XZaKlWkYiYHovje4Yqn/boehZzRsfsSKwOpMXjrYVet8w+n6jQqrblsWdDV2ki5q
	 duQUWcrHDtSxvgIckl5lY2kmWPPNpOuZ92O+LuNIUJmH/yHc4DVhP1pbrCCyQ0IcY/
	 5i2rCwNxQ33Tw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91D49FD8FC3
	for <ddprobe@lists.linux.dev>; Thu, 26 Feb 2026 15:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177212129358.20177.12544293613631098151.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bb78f3f127de7549b73ac8b8f062b48df79a31d282671bc65503bc5926f0def9
Date: Thu, 26 Feb 2026 15:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772121293
