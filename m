Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 656B829ACFD
	for <ddprobe@lists.linux.dev>; Sat, 14 Feb 2026 05:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771045494; cv=none; b=Vw073KiApFe8U8WUomZ/orIHRzdNqui/Icjke8ghShgZQFlJAWufQp8c6rsXBkh7aM367OZfRSylt6Atz9bBbhsBxPNvt/C6RVqBTSrNfzUfeK5AYTky6/J33B8+Hrq/57qtVMI2c1iD8QToewV6FORYb0+gciBgBivVoqrJSyE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771045494; c=relaxed/simple;
	bh=Xn83AxrijIKj9x8Qg1/+VthBtfWaRNXAwZdEmy2cVbk=;
	h=To:Subject:From:Message-Id:Date; b=OgxZdFZGeJaY7B2bGAX9hqVFzRKxDMTEDJ7SGTPt1pJtTeNcl744yaDmWAEywqH2muRii9xr7IaE0eBz3oyKwch/vMDk8aCWtrDmB8utky/SIk0kLh1F6zCodkwLJpa4nj9QLbrQI+wHvEi3o0a+J8lIODAwN0j5B9sUd54R0/8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Zsu6BZtp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Zsu6BZtp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF6C5C19421
	for <ddprobe@lists.linux.dev>; Sat, 14 Feb 2026 05:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771045493;
	bh=Xn83AxrijIKj9x8Qg1/+VthBtfWaRNXAwZdEmy2cVbk=;
	h=To:Subject:From:Date:From;
	b=Zsu6BZtpD71g4z8T67bxVg4SFmVClyylP8DrUPQDQJ+mlVGC4tN6hRgWauF2rScK1
	 6cS/+w3J89Mw91p1QXzixuLKeX/X3zaBtG4TfiVzxmPFpL6rCmZml5TbomxqFDzzQz
	 wSGtp/D3Wm448IOz6c2il7cG+xo7dc6xSGl0kOOteYfsTU16DG8eBDV1RV+TBGBhXD
	 eljobOgLXDEfLKEWjqXwU98maAgSxdwbLrhUr04n57L1LWDVGcrH33X0ew41WzMxKa
	 MdsJhl63h/n77m2HJtlFqTPfnTkHM7TqxUrwFi2FpNNHHHqLI7o0TYaQH7VAiSMnk5
	 6JbfqW09P+zCg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9974AEF99FF
	for <ddprobe@lists.linux.dev>; Sat, 14 Feb 2026 05:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177104549359.2542.16649003804238520189.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 003b0c7ff25f22cd4f9bac674ba6e38b6efea7723235bff071e8c3dfc6910dcf
Date: Sat, 14 Feb 2026 05:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771045493
