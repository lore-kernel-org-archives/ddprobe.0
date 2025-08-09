Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DCDDC1F3BAE
	for <ddprobe@lists.linux.dev>; Sat,  9 Aug 2025 23:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754782193; cv=none; b=VBcfA2eBk263N95q6T8tlXY+I9mwbbc54gRI0fknuSX+AOzCrbI4/xxIEosFzlYIPrWa3J34y3O7F/a/OYXpD8dn99XTIF5r83EntL9fIaR6JDMqhYrO5BrQraRQswwc3E2mEIBLLg/5/1qjVJGzDrfRKtSyF/NdfmRZWz6rCC8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754782193; c=relaxed/simple;
	bh=musy6O2h9UL2ZYNFVzIozDvyqGXe9oUy1qjRK9AFZ0A=;
	h=To:Subject:From:Message-Id:Date; b=PSb2UT/K7CZK2etD+sxHNKVpMFl3dPSaAXaOWjyUIg1JJxNuybXYknza3oazf4nO22b/NUPSHiMaAUS0k2JzJPnEg2BOFjjFFUsEGBiVxNVnGCPNU8GEr/uhB+U7DyizgVsH3MnRa04ez6+3/zsutnAHY82MXURwROR0Ub0DpY8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uBSBGEGi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uBSBGEGi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A35D8C4CEE7
	for <ddprobe@lists.linux.dev>; Sat,  9 Aug 2025 23:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754782193;
	bh=musy6O2h9UL2ZYNFVzIozDvyqGXe9oUy1qjRK9AFZ0A=;
	h=To:Subject:From:Date:From;
	b=uBSBGEGiqWiJ4HZjFT3mzgbyOIHhk7sAEYbL2RBO/RqafBnbMZAXyEZWrSLZ+Dm8X
	 HP+psjK92Z9fQBRXEcxCnO6HoVxav5pD3elOAMs8oGrXU2JcCfCVKT88MsS3EIVV7j
	 x7ipF/d7sZNabdT2sGW5BOSeS88JjE10wDlG5uXXu9CM5Fv3IukwohirspG/L1n+/a
	 VpvkK6Za9e6JPZ7cfgdV7YrjrSO4eakO92gICpjHsTHOQLhFI2eUXAtIjEGQRVIWHy
	 ZTEHFYMpo0wHlrc+TGQLNOwmmbNIXMAYfLIuYaFeG8fXlD1RpzuD2McexkyDQx1V4N
	 K0HvuIBTgocTA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91AE8C87FCB
	for <ddprobe@lists.linux.dev>; Sat,  9 Aug 2025 23:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175478219357.9545.3565949343108402954.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 956a3dcdda840f16a0bd780fe9a99a532f54083d2de08bd3e096207b1e113d09
Date: Sat, 09 Aug 2025 23:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754782193
