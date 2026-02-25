Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D297E2BDC0B
	for <ddprobe@lists.linux.dev>; Wed, 25 Feb 2026 19:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772046293; cv=none; b=dukIfLhFnEx2CRSiDOy00rhiuK8UT2y9/Mk6fPPSpQh3+GdDdj8yIrI8JmyfETyu+hdBB80Y2PsGnM2cIz5YJ1BeGS5K97YeweEXCsWP8gLtMWZ/lQOV8wAH/Is9I0OW9BQVy8F9fjcwiIwF1MLm/C/dKR3KXrS+aZXmXVwK1pk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772046293; c=relaxed/simple;
	bh=ia2HOaj/2TpqYD3QX+BJDpGw2Pg+hmkm5WjeuhN8qSg=;
	h=To:Subject:From:Message-Id:Date; b=VRk27jNsj4jBm3Fe94M0YQatpY/wY2JcI+T+9U8pnHHd/fH/ZUSVXf0dREwsDuJJ7xX2LoIcZ627WvlNhtl3DAQOlzciXpwiTNnemxf/rMorJ4pBThnzCDa+FzezmV+Cd7dtt0WOXCWAIIa0ellQ3NLXipUpH3aievub1iOClV0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dJpOCkLe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dJpOCkLe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB408C116D0
	for <ddprobe@lists.linux.dev>; Wed, 25 Feb 2026 19:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772046293;
	bh=ia2HOaj/2TpqYD3QX+BJDpGw2Pg+hmkm5WjeuhN8qSg=;
	h=To:Subject:From:Date:From;
	b=dJpOCkLed3NucyqivWQpN6sQ0rrHHyr7bqKHoOObIdf6h6C3WZFNyof61S4iibRbq
	 Khrk7e9JF8T1Bpnmer/YTvwR7p/cQpygKFqZNUOWck9s/sYwzpC6i6n52O5+5/zSeJ
	 O1lnPzdwTjT41PKmlahKOtLMOlAcnNHH5MAzdOhbDGr3WEPBVYzBgEslK+DgIyL4ES
	 oORPc1Z2TNnYgrzOOb1kpv3Tfxtk3e0eF8cwcFx19JVEpas/z468RVvvPgUutGoK13
	 pdHLFubZjON7aBA0Z/BKKwTllVWf0GO9VIN4YsIPBciq/+IQ2eTkvL2tUVbGuE/3+D
	 cNcmOosbJgq1Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95D86EFD23F
	for <ddprobe@lists.linux.dev>; Wed, 25 Feb 2026 19:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177204629360.24925.4363527910517523738.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a7d9af69e55effd705400b18881965e4aeb0ee6d6e618c998a231d75b6d0868c
Date: Wed, 25 Feb 2026 19:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772046293
