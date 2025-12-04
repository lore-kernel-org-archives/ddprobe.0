Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0548B226CF6
	for <ddprobe@lists.linux.dev>; Thu,  4 Dec 2025 14:22:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764858174; cv=none; b=GSSVUqS786+KapWBj7Q5bqHFmF8FxEoqqzpbWPEV2wB2Vh1EuCxkcSKmEopkc1cxaJiTKHxXoK+xfFpBIfi4caMz6KwglCih6IO9JBQ7Y2v889NTFq7Aw6JdH0k0J0VovQbnaTZdDXKtEw3SgIHqgheWgfVWXkGr473Uv2Cn/h8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764858174; c=relaxed/simple;
	bh=IJ7o0EGHrRTCmFy+730WppWfy2mYjtrt5Goet/KBADE=;
	h=To:Subject:From:Message-Id:Date; b=hO9B9o/MzUniLub++HHIXIBwUoNvfIFyYVZOfbedNVBj8RP57eKRnhXRiiUa7WTts7reetHLfT09HBfXvisS4LbhcVx/nccKwAw+4ecWqLaWsO/c6XKc2fPQph9qTb8Rxi9plQMBkGzseybTNbIa6G1iPtcfSQx0pbaWQpWBtbI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KlEMJuiG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KlEMJuiG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3490C116C6
	for <ddprobe@lists.linux.dev>; Thu,  4 Dec 2025 14:22:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764858173;
	bh=IJ7o0EGHrRTCmFy+730WppWfy2mYjtrt5Goet/KBADE=;
	h=To:Subject:From:Date:From;
	b=KlEMJuiG9x57jUSkubsBE7pdWew4PmNi56bCEZe7w9/XG9WyU8Zx/EqdK9Hy9pevr
	 MzqkxAhCY14TdNnesoF+tiiarYMC2j6RPayjPK8XQKSwfwS4QZ8jTQWFRhkm8Ok6xK
	 qFie3dMg4AlWlBnJZ8kKyE4yr8t6I3O0huJRtv8kEGZ6/4bC2mwroFoOPX3lq7mFPK
	 pbbHvIh5sOb4BWfJivUMOlHR28F3dZNtv7ZuTnBqXbz1vOtJHlUxUWO9x2aMMzy6UI
	 pNDkSK/1c7zyBmIDLRbze6oVkhckV3k4rlm72B+LOS0vdvAvePhENpu8/O5MERsy9m
	 cnoutb+pPTcIw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92B98D206AA
	for <ddprobe@lists.linux.dev>; Thu,  4 Dec 2025 14:22:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176485817359.23009.7922520609347495645.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cea785ab316f47ea641a91e407f34a9e908fa4475c601c6dc4f68df850dbfb32
Date: Thu, 04 Dec 2025 14:22:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764858173
