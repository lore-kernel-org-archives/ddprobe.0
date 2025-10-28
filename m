Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0A8E73081C2
	for <ddprobe@lists.linux.dev>; Tue, 28 Oct 2025 10:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761646794; cv=none; b=WunNmkj47z+Nwa4zNY6J09r/ZVcLa0vM6Ppfe/RC3kdovxxYUiMK4dVU4cSU3+aS24znrB8yNaioiUiSzpq3aiUUDC/jliv2rhU4p+4iwJec7dB8C1hM0HPWBC6K+Vka6BiOwYKAgDLfB/amlV/wF6Oiyuog3GWnsMwpasoWUUg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761646794; c=relaxed/simple;
	bh=zqZDHBJ7EYoVdjCe00DNOOxF7kGBGTLA/Lw8G7P5QM0=;
	h=To:Subject:From:Message-Id:Date; b=JGuL5bgIlQaTUmqf5SGGxcdYZ3D2jvLqkubD+OfXh909O9wspPfgXKp9Tm/cWo+snZQuOIQhqLbXwBd/5e4lxc+dyUBLLXWxzwB+Cc4g6jg7PZqyS4p+PgFiqSP6nA8lsbIT8doYP4QzKoRliFT39OHJM3eGXUcSkhVhgGng58s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GXEfe5PO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GXEfe5PO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5DFCC4CEE7
	for <ddprobe@lists.linux.dev>; Tue, 28 Oct 2025 10:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761646793;
	bh=zqZDHBJ7EYoVdjCe00DNOOxF7kGBGTLA/Lw8G7P5QM0=;
	h=To:Subject:From:Date:From;
	b=GXEfe5POiBHJg/rM52rKJEy5zUYvfGIPFGig2NfRb/VDq5AySWvl/zvZD+9m0wddX
	 cCCfgLYojFLbZviR0nTsYdJqNe0uSakiotkJPl4Ati5DiYuDFUM2nmq+vXgllc4V3V
	 OkDgVi6nNdwSHIXIo0FYII5Hx6H9AuscM1nO9EGsss6YmvBc0x2rrSGZDp5OTPl9vi
	 ILO9Q/zIL/aHr39uSf898qfyckjBj/EW+zefMsuhxMYf1zq5udschp2LjvJZv/CYkV
	 RDVmyOOGiSXZiFRahhfgqoQYvj3mtaiZsVUNQPHgHC3xblWn/sD+LyzlcsJlDfEE/x
	 uNYxdacIRj75Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93C9ECCD1BF
	for <ddprobe@lists.linux.dev>; Tue, 28 Oct 2025 10:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176164679359.20768.13675789215899824998.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 73825825d6a3c81e724670a5f354cb93e3849fa779c7991c670238b3c987a7b0
Date: Tue, 28 Oct 2025 10:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761646793
