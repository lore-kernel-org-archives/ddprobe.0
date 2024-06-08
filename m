Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 48E792E85A
	for <ddprobe@lists.linux.dev>; Sat,  8 Jun 2024 22:27:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717885643; cv=none; b=HCRXGaDxTiiIWr049dJYXF2EgCDmJ8K4+ox6fdTqOCVfJ+L+EQtZKcEvnCsYVmsuihpBgOjJM4hSZNaLAH4Um3QiusLPz+Oqp98dg7bvPKZQ0EGu8UlKkVX2oscBaOcfUE0g6c326TU+DtaMay8zmyZHwZRPHSvjFE1ajmixAqI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717885643; c=relaxed/simple;
	bh=f9Hx9RYUIgQn9I6JYlkVde6mRYiwPX54sRGliRbrPGw=;
	h=To:Subject:From:Message-Id:Date; b=Sq7cVrc1vPxJPjLBs+gmtn7POHcNC+k0bxmR2bO+p1+gThZuXTdrpeEqPx0BJ3BGiuc9zf0rPD2eFoap+2J9ZYYIH0264gDwed66ZB7C/EG6Ug2w120cm+Q2B9KXAeZq69LEbGtnCi5huz2KIED+o8dgz7Huyw1wzV14g6XSjKw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JSh0LrXO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JSh0LrXO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D836BC2BD11
	for <ddprobe@lists.linux.dev>; Sat,  8 Jun 2024 22:27:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717885642;
	bh=f9Hx9RYUIgQn9I6JYlkVde6mRYiwPX54sRGliRbrPGw=;
	h=To:Subject:From:Date:From;
	b=JSh0LrXOMPiXTImSJoEWkQBfj3DhAQr8KPa70CmAAJIc88GgYk9UJjZaVVWTuTzti
	 jABli+ZV5/BizqHaTwlyPoWHzBtKzFzpDjphDDDHXvHzFNXt0uwrQHWqgaJGsdPSvu
	 2SRsivBgjUrPDUCY+UQZRinvmEWqtpMlLnvp85QBZLqRtxEMw4sa+cguWAD6Y3X9go
	 x9WXcP8nLZdAt9u+2aKIRY8+4UUWIHVh29z3Jx0Kl86HwzAkus2to0GcBdLmNiNh9W
	 m4v828OGeZcvOyOTcIdpjPJ2z40gXJ8aTlUn1Xwy4MPXAbWcanzjIG2myj4xq/OFjg
	 XM0r+4ma33SZg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C2148C25B76
	for <ddprobe@lists.linux.dev>; Sat,  8 Jun 2024 22:27:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171788564277.8592.4389961008232432739.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3250825fdfa61fb43293ad14cafb39d51b7f1ddcf6064ef170126d2ecfc91cbe
Date: Sat, 08 Jun 2024 22:27:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717885642
