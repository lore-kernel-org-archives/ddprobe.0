Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 295D3CA6B
	for <ddprobe@lists.linux.dev>; Sun, 13 Jul 2025 00:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752367194; cv=none; b=XaciwEvpAgGStZ7CL2z3nuJ94KPWmn9XEEAb8MBLpnxuKSLsA4krfdd6FjY33VLvzA2EjW7Fqc6tpnyMe/MJC4lYsUR0ZXMD1np8uHumvjVDLFn9dULQNvZb4k/GJAS+rw63c2TTK+j852HG7ml+95BEkcsX8LYsDD/gi/b/MZU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752367194; c=relaxed/simple;
	bh=KzJl2G/mayBIqehKnfEBAG7iHcUnuDOfptahgxAAc70=;
	h=To:Subject:From:Message-Id:Date; b=OT1hqX1aH7iHU9tGTl4X3EPCYNBs+124sfZD/6/RfOG4nCuAvigTGruqPhA9AeYI92YP6gVuzC4da0Pu/0KPr6AoNOHArLzdFi7yw2Kl6mWapNlCupKoR+2h/GBMjeUQAk3Chj+MymBTcTFODyle5MdNnx3FNWAfmZv/5GZc+tY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eIQI4L6J; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eIQI4L6J"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0772C4CEF0
	for <ddprobe@lists.linux.dev>; Sun, 13 Jul 2025 00:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752367193;
	bh=KzJl2G/mayBIqehKnfEBAG7iHcUnuDOfptahgxAAc70=;
	h=To:Subject:From:Date:From;
	b=eIQI4L6JaxASjW7wIUFzawaBFRbf7pz+nZ5f91yCW89O0Ab97YHULaOrGF00V8d2M
	 qrfz7opXZ8mikNTbbF6yWY6d2df+RYepu5psI8d0B6wLDzRiaqNfufegkM1/yPU4u0
	 U/bzgWWvrpSKm7+Lht1ebKwXOMB/Muj1yCy4IaNVBwh8rvcVSHhYGcIS/X1UXDiSOK
	 lb+eqbf0hYPNaNGeyh372l3UPACKjvBufZ6NHgg6F3ApVN67aCVvH/QLaiZ9cLGo6U
	 jhNdhYG9TM58twLEfmVy+cssylH28IYXjeS9J1LhiEXLiPDiqZQb0s12oA3eccW+sm
	 NEgtVzzV2QyCw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91953C83F1D
	for <ddprobe@lists.linux.dev>; Sun, 13 Jul 2025 00:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175236719357.22433.16318631218545901356.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 275db0a9d1f0c1e386d0b1553bd6be314b6f2c2f74a822e9ee7be8724749da12
Date: Sun, 13 Jul 2025 00:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752367193
