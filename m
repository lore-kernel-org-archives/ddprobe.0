Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C92B1386C9
	for <ddprobe@lists.linux.dev>; Tue, 10 Jun 2025 15:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749570594; cv=none; b=Nmt4cqKOVDXC8r7q4jD6IUkM0lRE8W2ydHlBTIh4PuXshW5JI4WabSuiUO55mK5ScSkgaRGnCZ7fgfTARZFIL/RUdUi1oH1GdDRCDtq6Gb3ac5ENKwa7uDCXUgrlfFqJ8NjfwRYOJXwj6yHmsWpVP1Lqt+L1Mt82w54pTEGBVpU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749570594; c=relaxed/simple;
	bh=tyRQa212+v25Hm93QCtne96CM8jQhZWserdgXdNMfWk=;
	h=To:Subject:From:Message-Id:Date; b=EPVgeEsOh7yHG+Uc6S0QJ09FFKt+hkJHizXGZHmDUfrZMfAAeCrqMfTJ6dcRxVfmX3rpFTvIYzuZLgfaOYlnAR54wA8K3lQkHAyldK8a+qZUPAXKoUhy1ZpX9vfU1v4yEoJleSJWAaegfeieEw8XLXzpew1fTnpm/PRFN7OOJbs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NXls8DtO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NXls8DtO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A37F3C4CEED
	for <ddprobe@lists.linux.dev>; Tue, 10 Jun 2025 15:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749570593;
	bh=tyRQa212+v25Hm93QCtne96CM8jQhZWserdgXdNMfWk=;
	h=To:Subject:From:Date:From;
	b=NXls8DtOE6rGcuCf0Qp9XGl1765g+jmzExOtuOX6DaQx2mBb1MFVXHwlcs55upyCf
	 Wfa4XNDc2+cEOiH+tA+wD25QW6emsn9pSUVacJmtK7Cu5c9pONTR0A3KC7Rf5XNCu9
	 5LL7uQpLhg/Iv+vXU2U33tvDklozmvK8JCyGx88PAOJo+4d9oswY+v2zlkosBvyupp
	 8qlpvJhZJr7lQk7qcAMsG9+zT2MKs3Bz5vtBjENB9gzYEbADQZjurgX5XmnQcQ9p1/
	 wDHsQncSuboHWwZ/O4jrzNhzRkmeDlXYwYtcFzTFGn9OwNF3bkuD6dk+UHLB0GXDV8
	 s4g5AC/XK8pMg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FB86C5B552
	for <ddprobe@lists.linux.dev>; Tue, 10 Jun 2025 15:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174957059358.1464.14828556391336986624.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1b30101acf8c8a40a68dfb25aae974f8aa0640f41ed89c2e18af7a685f9d7268
Date: Tue, 10 Jun 2025 15:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749570593
