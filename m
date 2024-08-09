Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2946A2900
	for <ddprobe@lists.linux.dev>; Fri,  9 Aug 2024 00:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723163754; cv=none; b=WJaM5hAXnazy/orViutjPsyXZP1siDWc6Y3D9eQnCYWK4PuWhr7zoQ9VuaL2Qs6Bt4sfGK760Hxyoe8bycj+YU1XOlNgB5k3Ik/Bfh8OhBzJ9BHg5CCqMHKbpMy8Go6Kn+jx7Ldlpi8wbt2dnp8HtQOCdoKatYf4muUZatXLr94=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723163754; c=relaxed/simple;
	bh=B4q9cJTfEJJTI8xr9QADCfWyVQCGFWu+kWXRRvX4Zsw=;
	h=To:Subject:From:Message-Id:Date; b=PWAWuWMipACCI2mXdv2Ac1oNPY1SwddVvvBMWf7Jaavl7KK30m2LzxkZbABzg+y7GHP1JRnNOZaXk8dPVzCY8Rk2LZSghomxGQ+7DM0M3SYIPdlTa4ghU1yPWCDxiftkzgtFpl4+zOkgm914Az1TlUxaqNeZWWQ63efeTYnSuxg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=k6DKhCAT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="k6DKhCAT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B312DC32782
	for <ddprobe@lists.linux.dev>; Fri,  9 Aug 2024 00:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723163753;
	bh=B4q9cJTfEJJTI8xr9QADCfWyVQCGFWu+kWXRRvX4Zsw=;
	h=To:Subject:From:Date:From;
	b=k6DKhCAT0OX1661R/yo9mlqkbovzaIQhZaPTYL+U3sRgwFoBPEVbHBsGzXlmNirnk
	 oQF5r/Al/JAZoDdBu4VedKoNexhlxj2dWkl4D5dYDiUTD76mbPGfSFnifBR13JNpwW
	 CU/WGwO8d6PkCIqyZWewaFEJL3T7Fq7B3ly0F8JPGp1VXFqgo/FgYJxlYMoAXGGKYN
	 iXp/jTEsX62EDk8Fndmz5woai7Ofl1gXQnvmTfBYfe0FYbPag3bsGjDcQp2kA+U8Ph
	 4gJ9ROgT8N/oFE6ZLFgN23+T1JMrk4IKTr6JqhL4hYLODK+3iTbiyvGXVwUfJVh9az
	 knVmL7VNxSIsQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 966C1C52D7B
	for <ddprobe@lists.linux.dev>; Fri,  9 Aug 2024 00:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172316375360.30907.16618743530083886961.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: be376405093b63c4d8056b61487876489e2dacaed2e5f6af224282136e613bdd
Date: Fri, 09 Aug 2024 00:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1723163753
