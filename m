Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6392A1E878
	for <ddprobe@lists.linux.dev>; Sun, 30 Jun 2024 10:34:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719743663; cv=none; b=kRV/kytQzbbUspU39yELMhl/DAC5Ov1baoCGtawTMgNAwcODw9M8N/I4BgphQH9ayX88DJN3eUBsJnlv4TVjXhufHKKTm/PrxOx05muEGqUoHzPBpBDysNFdRnfoZm5pngaH2Hxf61PAjjsCSV6GU/oE2vNVVT96eUWL7jhwKAk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719743663; c=relaxed/simple;
	bh=bYXSTh1G1HvV65Uje/VdftPa8SsJdlgiRLs/tfZCArc=;
	h=To:Subject:From:Message-Id:Date; b=Fqa+7Byxt+ib3s1S2dhbFDlwGtIJ5PzzOq1t6oiSs6n2X37O66jdyLBQVBect+wETeTpHVXmLvKZIL7Kw5gu0PVvS+kpOlx90Blt8VH7PV20dqxH8OdvfyrSLoh/uZDvachHenVOQgNGdcTLXandJJ5/BtvmgawZPctFLd/ivHA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aP9tVcQQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aP9tVcQQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DC3ADC2BD10
	for <ddprobe@lists.linux.dev>; Sun, 30 Jun 2024 10:34:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719743662;
	bh=bYXSTh1G1HvV65Uje/VdftPa8SsJdlgiRLs/tfZCArc=;
	h=To:Subject:From:Date:From;
	b=aP9tVcQQ6zdIfWbjiqfktA10FyjtiMnK+9TvB4vz5p8j6e8GsLCafv3JKcT/73j9z
	 PD/ZrdmA41v55lQOiwyH82bp83uzM/CpWD3LILmDiHgYJshq3EuIOuT6jeGowm2ZpU
	 W8wHBFFcX67nnncLgk9gq5MdydXcft8qO/hreDmOjbOA43thMSyI7UGR1ICAZOr5OD
	 AYBQFaCX/WAE2ApU4UXjgi0+ff4p6CUhu/ldfAfJcspc5UFY3rneX10JDwwbtPrihA
	 c0bJJVWnBBi3GxdE0w1xlTrT0xdQMchygGZWl/FlBgxJ+W8o5mZ3xbQ5/3xKVeZ2y4
	 jl9IGqL3/gdmg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C78C4C27C4F
	for <ddprobe@lists.linux.dev>; Sun, 30 Jun 2024 10:34:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171974366278.27026.11914272358807743776.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fcb85670fe55d4c85aba1c76c11cf798bc1c977c20e757752ac1f90ddd2127b6
Date: Sun, 30 Jun 2024 10:34:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719743662
