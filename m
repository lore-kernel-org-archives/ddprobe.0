Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 97F6C3A1A41
	for <ddprobe@lists.linux.dev>; Sat,  9 May 2026 10:17:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778321854; cv=none; b=Twby0HjCpH+ok1mnVJCiYC/zqEDgQ/sYdlMS6DD20eqHv0DNPKMuJ9SV97C086srukm/iv2bH5f0fOErWk2Tmti/M541otqxD4cH9pYB2PPCGpJXJ/zdBxR7ktFi3lS7ZxQ6LWJXH8IgavBmjEgxVto+nmOZjWQmWeit6f5bB+Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778321854; c=relaxed/simple;
	bh=k+rJDaBTEhsQrpv6+nKvuWXkpQ5C+zLCdUZDHi2sGJ0=;
	h=To:Subject:From:Message-Id:Date; b=sS7ypd9XgzuAdl9rh1v0AOSbXFXn02Nx7eIbZe/uTyj1FN6l/m4LGOWaG6nFl8vz4eEra/1CIkfHENbj+sCT7yy0x3aRxZG9kg7ZKEOPrF026G3Vks5B3tfSnZPSlkrTjyIdCmAr8PnMvGiw8I4ZTz1qbntGtTONC1du7ArEsBs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YVCmYl+q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YVCmYl+q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 365E2C2BCB2
	for <ddprobe@lists.linux.dev>; Sat,  9 May 2026 10:17:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778321854;
	bh=k+rJDaBTEhsQrpv6+nKvuWXkpQ5C+zLCdUZDHi2sGJ0=;
	h=To:Subject:From:Date:From;
	b=YVCmYl+qrMKvNawPTQBWncIUeSTsipbiLhh3mBd2TIneBGwPEIOd9fE3E+OpHCeDC
	 5GAnXByLzWQm1UcbtmoxmhAQHueRzUO/UVfPMfmVcO7IQjfqFcHw3Y9oaUkJPxjrCX
	 lPjKtNPQvoOdcw7SFTPxzqQGGkZgc52mLDrLYVvAwf2PM9FNLWj1Nv7DjSfph90/yl
	 k1fOr1UuKza5zIW1rYFiyKBxwqZxCL7dDDg1UI933Fr6cMk67C1MGE0Dg6qo8Gxybc
	 q0bsAYatA8vTMD+7FCGHo3ZouzFL+QAEAzloBfqrDcKRI6+yLBHsccMyrLDXAKUXu8
	 Pu0zGs80nNkMw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E6BAFCD3447
	for <ddprobe@lists.linux.dev>; Sat,  9 May 2026 10:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177832185387.30434.18078073768626917046.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 05f636e75c3dfb888dc87edb8cda3f603ff48a87773d814adf467ebbe23f8807
Date: Sat, 09 May 2026 10:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778321853
