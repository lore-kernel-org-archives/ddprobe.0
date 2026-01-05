Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F66D30FF3C
	for <ddprobe@lists.linux.dev>; Mon,  5 Jan 2026 17:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767633834; cv=none; b=qLM02Tkkv+n7EUa4mal+NPtT0sKf64dxso57rBGvU311nMUZvajcpEM83gNWhCN/6Rjm5j1dgG0T6Gj+9jJG+FiVeUQrPDAp3wToMD8WtAcHyg+d4ClrzJIis1UGCKxupubZ4BJXmCdFqm2MrnBAWoeD0GaAvtZdkoOPvf7DP1E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767633834; c=relaxed/simple;
	bh=Dk8a0Ak7sut0AaBO0P1RXwh+Mpof/58fZx9jgwjaO18=;
	h=To:Subject:From:Message-Id:Date; b=EGyKYG1H/S8QBGUtD/AnjJz5ItQLyplWPSOoVPko/9X5JNQ28g1lRbuZ3jy4bZkGoGrk9sbymLr8inC5tLdO1wG44by5DT4wNqm6M9hfNXUl2Z3AvNe8JDX5SgrhsLMNs/AY0ku2xtSq49n/jCtBaKxghbIWqFKfEdmXY/geqLI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sdpSgswk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sdpSgswk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9ECAFC116D0
	for <ddprobe@lists.linux.dev>; Mon,  5 Jan 2026 17:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767633833;
	bh=Dk8a0Ak7sut0AaBO0P1RXwh+Mpof/58fZx9jgwjaO18=;
	h=To:Subject:From:Date:From;
	b=sdpSgswk1w5VLeDNq0dkiClKZuL0NvgMx9NOJ0bVYtLyg8E1E6Hie4OeLr7ViF5Fm
	 pbmrIgRzlXN+0E9SedW7z7ADXspPFjTVSFR8JkA+cZEV+RpPhfOwPpENQZgul/X5E8
	 Gc85VnzvF+amUSDXvNJDdK5Ax641KocdjTWK3K6g38Aa/BoQSK+qalgu/vl4wuSZu7
	 IALPH/52761z5Havjcq4FbZsdIp5hA3mbEoWnW0gNQ4buusSlCr2Gpe+iO/5MXlgPq
	 gLH6ieDK+zP3r7We+5mQpoYhqdLyq1rOQ/WE3aGp1fcBY9UwRg2Dxhz7v3Vh8CYRl+
	 Z0t+ko6cpGbqA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90CE8C79FAF
	for <ddprobe@lists.linux.dev>; Mon,  5 Jan 2026 17:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176763383357.29623.6281637704224741358.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7da3d29e1c07d1371b0de3e79835e437b0f129555119fd04300c0885709ae36f
Date: Mon, 05 Jan 2026 17:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767633833
