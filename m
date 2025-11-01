Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28A8FC2E0
	for <ddprobe@lists.linux.dev>; Sat,  1 Nov 2025 02:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761962994; cv=none; b=rTUPgSj2gyyTRzlMWaQ2VanlbajZndHqhyNT/0VUEAfkz3K/hojdP/PoVGFcIcFKRew/tb3J80EtnbD0q0GIY+Dz8NJOCRVI1BW9yyP4XLvpkLkq2oPqUsV6Q01prkoWtD/guX6IGUEq3HjMi9sPqw+qRqX66yvHDMofPw8dwI8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761962994; c=relaxed/simple;
	bh=xCkqj3mGEZeTAFLAZBoVIupfH8heSMK8VPUkTWjct2c=;
	h=To:Subject:From:Message-Id:Date; b=LnD9OAImfVH3H1zzLDIT1tU7rZ91uoY07+p8msupe1S6ZpM626diQa9ZBRYJ7xcPQeZ1NilNJ2niCqsYrxhoDZFYInRd6IiLjaSFEUn55/9MefWX/hDzi2vqH8M1agLxU0E0R+r4e4c9lFrB+hlm4MKZzjRsm3jhCl1EM4vg+lg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Z3J/NSEC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Z3J/NSEC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3F10C4CEE7
	for <ddprobe@lists.linux.dev>; Sat,  1 Nov 2025 02:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761962993;
	bh=xCkqj3mGEZeTAFLAZBoVIupfH8heSMK8VPUkTWjct2c=;
	h=To:Subject:From:Date:From;
	b=Z3J/NSECUWk+D3BcnuG1U9Ez1UhOyUFqeS9Rue+APqW4O8FOQOB/OiqttjzCPUQIk
	 OeAb84ljF3RP0cpjcgWDvxBjxc74AHx/RV6qW0xbZbAmncyraFlhn00kBF/C65wKE2
	 woonOvMCb+TD3GJOG36kuvnFmAP1Hz6uvcNZVrnv3npoSpDFO5yEHH7ihC1HOyVA8l
	 RtJ8EwdKyE8ykDf6ruF5b9bbmHrZupptJzYAf69+pcAZG8PZuSdGLFkviaXR+ODje5
	 h4NpQB61VLJEx9QoSVk7FfpcxYrhBtfVLXXiCNcSvMPtweJ9aLsaGqL/wICJn5WUuZ
	 cwaNbO/RUPP6w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 940A9CCF9FE
	for <ddprobe@lists.linux.dev>; Sat,  1 Nov 2025 02:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176196299358.28326.9613791500154675710.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 646a1a3428db6a3aeb477593b9cd582b8318b8d77384a2fd7224a4517ca1043a
Date: Sat, 01 Nov 2025 02:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761962993
