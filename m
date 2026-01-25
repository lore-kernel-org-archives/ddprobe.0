Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0D401262A6
	for <ddprobe@lists.linux.dev>; Sun, 25 Jan 2026 00:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769302434; cv=none; b=AKUW07XCA4pRTRRU6qWNZVidhy34vUZIDKXd9ijQvHXhz0s2W0p42xagR0qYB+BrcFUe+W5jSrK9w8vUrwnLKrEWe0dX+9TSOCQ4+N/PbVu42a8XwP/h/BORQhP9Jx1ov0scMxPWcAFCHUha/4qGqJFB40d1uSsng+8zHloOiWw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769302434; c=relaxed/simple;
	bh=dCXELopSm1d50WdovEMcvWggh/vWOIl0r/IU/z2YcQM=;
	h=To:Subject:From:Message-Id:Date; b=kCz6d1WI0HfFHN01K5vGIhQLwlXIkfYg+PxUXU4bHTR6YIF6lbJEZSvle6XN3ndwrWajxiyqH6Tak25wpDsN4jwHv+oej/BsqBZ1yKgbhFoJnFe/DmM22AtIYA1qPjNRaXQzLaJIT97tDI9BocSiecdCBOaKpMdLKvvCV8T+2xM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LFAls6Fm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LFAls6Fm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B450DC116D0
	for <ddprobe@lists.linux.dev>; Sun, 25 Jan 2026 00:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769302433;
	bh=dCXELopSm1d50WdovEMcvWggh/vWOIl0r/IU/z2YcQM=;
	h=To:Subject:From:Date:From;
	b=LFAls6FmF9Lng5C0ahkVPzcWFKiwFJwYHrS9eO/sNm49eVVgBoU+/C0Rtx3HzNUek
	 EddKGflHIbJE3uT8qOhmOrgKvhYinlKHnspf04PbLITct3ZkODweUohYtGYWg4FIpK
	 /lBPOxiev0fXXxz5LQtbjA8UXMIC4kGf+IfRXcnqv5ffZqbr6eUwEyHIdMeow7IIbr
	 P68I2luI+YHS0F73oOasNLmljpFG36UOpP9lA6CRL/kzDxZA4wjX/fgTEohJBuLLsW
	 svaLwH77lp0e8hs5QedDfEbJVxqqibZ+udhnW894IythaPcNRKU/K8uyEW+juNJlJv
	 BxqCGiebQ0oNg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A2F14D715E2
	for <ddprobe@lists.linux.dev>; Sun, 25 Jan 2026 00:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176930243358.19221.5057819533377410610.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b5c346b022919aed74d3b3977cafd64cf3dc9c9ee0e196cb4dc42769f9a0ef9b
Date: Sun, 25 Jan 2026 00:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769302433
