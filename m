Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F15111799F
	for <ddprobe@lists.linux.dev>; Fri, 16 Jan 2026 20:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768596834; cv=none; b=vBu2ODTcqrnFgSEHYyCRbl0Ppgz3MatKJavo9w8hTHtaas8Utc4gjgwM9sg/lQcUs7CqkfhPHnNrRvp+TCvuisfjZ5eV2gkRx/zK/+ckNE086SLpnVZybh83qUUKSB1mgwDN4PtrUGfpDDNKuF0eqUerpuJc/JTv+10EfM6ggoE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768596834; c=relaxed/simple;
	bh=y1jJmB9MHAtpU0Yv56VIBL7bpbzbGy7SUMTCHCvRdVE=;
	h=To:Subject:From:Message-Id:Date; b=JVMCsZIw7vBmLH2JWZy8TJFW59ovtwKng4eW3XBA4mc5QJVWareT90JWNCmYOoN/IEtximaNwg6yM9AWmh4Rr33GhV9YvEMRH9RWPOqMGH066SfbDnlLKyKev7SiGLXieMrLPjjJ7bxlviBCoDg87Z+9h1EaWJG/i5zXE9cYtj4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sXVDNHSa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sXVDNHSa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D460C116C6
	for <ddprobe@lists.linux.dev>; Fri, 16 Jan 2026 20:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768596833;
	bh=y1jJmB9MHAtpU0Yv56VIBL7bpbzbGy7SUMTCHCvRdVE=;
	h=To:Subject:From:Date:From;
	b=sXVDNHSayYn0uVAtOGQRvpSQKCJfDC7ZpSoc1wqErqbRCUARYHtWfvrUpnUsJiOIq
	 EzbWBc3dZZEFzqwFcHipwTyBUv3eLiUT8kUt8XJQmg6zgyYFIDz+IDFi4OcUDEg4g0
	 dN1bUtNc5x3vust69jerKB9TIXFeSBl1N+yGvKlEC2qED6EE8TJMJwwDdngNxOrXVg
	 U1wu8BKy8HpXrQclr2Xlm+nVA3vghTuxEHXTCEPBaa4j5AxT3YQyi5Il5F4PqyU/hO
	 5/vpCBEIc6IKP5zF0AgwTGYeRqagKOrCRduDP6fnuo82fALbOXv39Q5jT+mmmTRhBI
	 ZHMBhTHCeA9aQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F710C982C0
	for <ddprobe@lists.linux.dev>; Fri, 16 Jan 2026 20:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176859683357.15615.244480801976177951.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f4b5d34579b17890438d7d41d040734dd5c4ce2d814bb1ed970065c4ad60bbd6
Date: Fri, 16 Jan 2026 20:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768596833
