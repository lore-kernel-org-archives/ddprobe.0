Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 015B11D5CFB
	for <ddprobe@lists.linux.dev>; Mon, 20 Apr 2026 17:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776707254; cv=none; b=T1HgY4bHJnu2IzOPYbnsnQID0830lkwaGpwJRL3w4XyujoyJWI/2ZsfXSjPDt3gQbO3mmJEz7nwZ9ed5GrPLV2+6K1/skAvvk5PKCIc+d69TQwNTKPbiKHZOoA6+oP96KfDJ3Y/AAedFXntTZpSBui1p4yvl5A5OuIp1DarWLd0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776707254; c=relaxed/simple;
	bh=eFblm1tnfkuEkoGRQcw1a360leR8162Si5iyoQt7z1A=;
	h=To:Subject:From:Message-Id:Date; b=XqH+Tw+xvAe1HNtnhzvOwd6JOWU1HXexI9rJRAXqHtJYS0y17IKPUAxVDdGBEE2U5oJJhQj1Mk11NAPSicMb0c9Jg3kVfYQCiWYZA7Yd0XBZhRvwxUuc3k5aLT88vIgBvfFlj5LjS7izZlhKMrWs7awqtzzYrL+WUcoZ0DWifrA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=O9pCpX5B; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="O9pCpX5B"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC22BC2BCB0
	for <ddprobe@lists.linux.dev>; Mon, 20 Apr 2026 17:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776707253;
	bh=eFblm1tnfkuEkoGRQcw1a360leR8162Si5iyoQt7z1A=;
	h=To:Subject:From:Date:From;
	b=O9pCpX5BiPa+PPUkIT6l8qB/ZOW/jNIUnaT0s9XMSS/aoXhnditHh1U3Zxd5PCTOy
	 Ozm3vfi313xEQasGFVwb2peS8jVaOToGlmFLBilDj62nlRkRHRjOG0s1QhSjQO3cqq
	 9Zzb53CLPmLVjMRH6etUwdDH5AWJXggpOOf6RjeEODeMuBpl/hd5SRtmLBwAgMubbb
	 Fg1f2e3ldtmJofnjotCBp7iDShILScv1NcDytsQzgzRQmSliMO/KIofgiInFThjekq
	 hfog9ECD2nklAgRozMQekJ6zvkF5ianb0f8eV4A4D6b6kX2ZZoK491R3Kxpr/53nwl
	 Dpc19nmYmS5eA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9D2DF5A8A6
	for <ddprobe@lists.linux.dev>; Mon, 20 Apr 2026 17:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177670725368.19312.6334146357465632282.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a37ec01a2f7606e976667dd1ac7189a77ab80e1236493eb10fb7311ce8fb5cb7
Date: Mon, 20 Apr 2026 17:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776707253
