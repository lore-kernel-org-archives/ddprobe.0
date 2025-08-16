Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 05DF32222C3
	for <ddprobe@lists.linux.dev>; Sat, 16 Aug 2025 08:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755332394; cv=none; b=o+ocUNWTmpFAo1HQc69P7/FkbgsCJfKD8iSuJDQCO+QmVLbTjpI2xm79TK+G0+vKeTITpn1Z1DBsDwM+S9f0X7OA2NDeucOCzvijeopJ0ReJE1w7Bg5OGN8Npe4SdadS4b5Iujn627+rtk5ol/K66c043Y8KI3TZEVyn85+KZro=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755332394; c=relaxed/simple;
	bh=fM8rfyo3g7xMnV3/S9jqU/K27LXUwI2qM2OOBVc5Iwc=;
	h=To:Subject:From:Message-Id:Date; b=sushUch/6MhE3xrbscdDqV/S5oBKKaENVVToGRbB03nWFAuWeFyFjN2aWqVrYoA5Z7xR9TVirQlWqGqGRJkkF7NIpPM8s8HgqS1QhWASlkGV+1PMI29WDI9orKY0YTAlZVTvXgV+eWOlVGRtLX2bajU/gC+/VmgYfeVTT3Ckg1k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ExcmtqlP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ExcmtqlP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A06BDC4CEEF
	for <ddprobe@lists.linux.dev>; Sat, 16 Aug 2025 08:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755332393;
	bh=fM8rfyo3g7xMnV3/S9jqU/K27LXUwI2qM2OOBVc5Iwc=;
	h=To:Subject:From:Date:From;
	b=ExcmtqlPO3YbbaNcwvqL76GiepIFjnQbkKyJdrHzKzdGlA//t5F4Vf0I2VJVqIIyK
	 b442nwjaPfBRevbaLnyfu24qrLCurcSlSVuYiKjqmeJoD09gS53H9sFgAsKWqLUB/B
	 ERgA1MiPEQJlgbg8j0sNCLnDHeJLrG+tGQQTkaS7freapXoDQB+q2D5T0AmG/nO1Ft
	 hKfaPPsTTgXNcLX86iHRP+FKFzwYAbM2SJ55IhaHnGWi1+/AQsjxKrxTxG+ELcZsRN
	 doXMVw2qEHFBsFWUinfrqc7HUiL7WojdOdLVyD4vcwcaNWtrvZ8Kq5zA9/cOB9gx1i
	 gX+NnuKB3yM6w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92607CA0EE6
	for <ddprobe@lists.linux.dev>; Sat, 16 Aug 2025 08:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175533239358.11579.12296132924831946395.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 921c2f5fe0bae9b7d1564819c05c5e347bfd2ba8d42c146fef1ae3b7b26dd238
Date: Sat, 16 Aug 2025 08:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755332393
