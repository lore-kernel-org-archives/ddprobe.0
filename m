Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F9C128B415
	for <ddprobe@lists.linux.dev>; Fri, 17 Oct 2025 23:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760744994; cv=none; b=D9FSnC7h9+RbsKvsOs5+hbIjykXhk2UWkoMpsblWp3rWzQdEWknJx5cp56bhr2pGOMTVEl22RSru04pIOwnE/kgpshrhytJL3XAsmKy32O3Bi4Iter+7HGHTkuzfhSCmgmmSnghemFN0VSzGvjmlocXkhe+rbPNqnSRDGqbNZcY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760744994; c=relaxed/simple;
	bh=gRh9lwnscpdmPCQwoF1q54u6tRlFgPa/5AUpqNuw9Fw=;
	h=To:Subject:From:Message-Id:Date; b=o2wp9fVKbGCmyZDff6q0mklSiW15/S4afZmmN0T06ldvcs8VZRzhkAlh7BhO5OTqMHe2B4ZNUXt1Y7NXXia0PLDpwETjo5wb1jOCHmF2yzareKC5sCeKoDhyLwcaTDEaFYU1+005SAkX0GoEIfcBvmaLU+5vXr5WbI8shMaHkVs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hne0R0i8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hne0R0i8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7B19C4CEE7
	for <ddprobe@lists.linux.dev>; Fri, 17 Oct 2025 23:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760744993;
	bh=gRh9lwnscpdmPCQwoF1q54u6tRlFgPa/5AUpqNuw9Fw=;
	h=To:Subject:From:Date:From;
	b=hne0R0i8g8W25F4019odP8zkWqGZUAaUdm3g3haPUPWaxlO+q9+EtNdveP62NmxjS
	 2BmXIX/3x59nw2/Yz+PEz7mhnvuhivmAboJWe3ifSk/9zv+bPF8k+Na5TRp7Lg5fP8
	 YY+wPxv0iWpDCO7NFDHLRekHMRFmm45KKQ8474M2F37MDLCDg+8cPc8y0TiSDq+n6x
	 ZLTIXDVzAASXhSUF+RVYkKhcHhJG0rsT7LL3c/rFJVXMCQi2MfdNRPX6wdVjcndxKP
	 +CaAVoV7m1JV+R/AGNu/kmBoU6Qu4QxSSnTYP82GTPExgbAZbWJ6heJM9bP1Q/28U2
	 oThPS0FYWO7kQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 945E2CCD184
	for <ddprobe@lists.linux.dev>; Fri, 17 Oct 2025 23:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176074499358.10147.10017648519976269374.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c59c293476dbab01b83a7c3d08367cf288b76ffeb6c53d65a6247eeb2d13366d
Date: Fri, 17 Oct 2025 23:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760744993
