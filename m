Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C6F312CDBE
	for <ddprobe@lists.linux.dev>; Fri, 31 Oct 2025 03:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761883194; cv=none; b=Y6aJaYXWO7iybRGW3dcw9lRI9nveP8j/gXMbGbMjDLqHUXEm/WfBmQPLi914n2uu221AzyIiU14dIfAO0ugyu28XAOesIa/5D2Xq/cXuJDtSMl80sTq2O4ug97OUTAx516CIp/3wc+jGIWWSagFmafjLl3WxTOpPj38rzRgIvSA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761883194; c=relaxed/simple;
	bh=eJCXws9oSXR4ITMzJkiyN0t1zDHAQcra9yl5/kbi4sE=;
	h=To:Subject:From:Message-Id:Date; b=OAPLJSJNETLvKQKI/kT7O/SeSuZlGdUcKFYbB+yxyQZx1OLBBLoRtnfp240rsSNgdH7truL48PlLSKsehWaBWKB5/CcqsQB+iaoTBymwsiSbxb9fJkmOofpT+0DVECGSybTU6TToQ8Bl6t6xRQYluzkjRD8Utj6Z5IQ5f17kcgE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=G2dAEkgj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="G2dAEkgj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0C9AC4CEE7
	for <ddprobe@lists.linux.dev>; Fri, 31 Oct 2025 03:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761883193;
	bh=eJCXws9oSXR4ITMzJkiyN0t1zDHAQcra9yl5/kbi4sE=;
	h=To:Subject:From:Date:From;
	b=G2dAEkgj9qH64/L/YGzLcBrqWqkfhuG02pPQgOxdcbwACq5JK0RuMc8lN3gSszbpR
	 d9WReq4fWaeg2fmbWjlT+6oWcKXTRPZW4XzeuNY6xuS2uRPMOdLvG48Q3y4cLXTL82
	 /0OzE6GMtG2rYeQugGZoDRNx4EjQQLpa/zq7zQFOD7udqO9o45S/ZZsSsDPuiGb1cP
	 TNvpNydvPvGONek0x8GoLRVvjMdrClVCtNCaqM/DRcjoziiJhMAVy2j4HcriymshTZ
	 QABWGDZUfrMWL6APeqfietmko8c3lRAKGBIsucJDhnZ03xfGsQA1B8c8hF6Qr2xSIO
	 GpMXrxPBMFRXQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 925E4CCF9EE
	for <ddprobe@lists.linux.dev>; Fri, 31 Oct 2025 03:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176188319359.3365.1335772637183129359.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a911e1d7732024940f27c0b9cb188e27a410761bc25da9b615604564a3403d71
Date: Fri, 31 Oct 2025 03:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761883193
