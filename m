Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45D2820E6EE
	for <ddprobe@lists.linux.dev>; Tue, 18 Mar 2025 15:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742310594; cv=none; b=ONstGWR1uDFJz4uhwVuVKIYEtCdtFMq5LqQa7c1OQp63lm0ID5ykBTD/i7fPHqs3WXXIkZsB8sVDmw4qqtspshGnH0X5rpbaI38xbzZXDRPG+Mszk6/wzmvcYtUuiMTnnWkhqjYE9glksK+5n2kmSTHCEBffBbylBdsHBFApvtk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742310594; c=relaxed/simple;
	bh=Ga+IFTa3pI5qxyIda7nmc4z3KoH9NZwc0tEitXjIEQw=;
	h=To:Subject:From:Message-Id:Date; b=qHsEAzBfJWXmqF319WFBPikC1K9tDMRHS3gKmJSCdV3o47Fzauh2pKgK04OeeOSKjuwKeSc8c0HypfIWJmpfZOGCXVELE5tR4D6B6+Jz0E3w8L7LR5C6xHzpF+IJImwSPa/MVhu7K+FlQ0rY6hMi3auAFQvs5kDuFiY/vSt05ok=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Bq9E3G3r; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Bq9E3G3r"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2BB1C4CEDD
	for <ddprobe@lists.linux.dev>; Tue, 18 Mar 2025 15:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742310593;
	bh=Ga+IFTa3pI5qxyIda7nmc4z3KoH9NZwc0tEitXjIEQw=;
	h=To:Subject:From:Date:From;
	b=Bq9E3G3rzZUEpi6rZCmxbbVnf+uc0VM9J1Lg36ujgmyYgNL4sLwh/PVCyW7JiszCI
	 6hqbnEXWnSIz0op7/mB8w+IxGj6rL/s/nhWcx7V7+6KOoiR944w85u4GpJ9dUUFMag
	 quypL7uPLA27+BVDin7vnPz//+4ns1ttRry4wRidxN9ez7mlQ/KZbYgc2S79Q/8hYd
	 X7QgEuY9+r97/3EPjYITtMIDrxTpkUQDU+qF1915qWxGTAjhb/TXjOJl0qeE4HWAjd
	 ytnBZeluIpZoM2tCT0XGK4qNDus1ixFawpHoyRQiDCBk2SZkU/C5A6GWXtAGuig5QB
	 6+lT85ZR9vjgg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97C6AC282EC
	for <ddprobe@lists.linux.dev>; Tue, 18 Mar 2025 15:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174231059361.21701.11165728458921336389.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b85fc92f7c2beb164f4f2b6f7376160fba36bd60ebf0079b57aa23f0929fb110
Date: Tue, 18 Mar 2025 15:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742310593
