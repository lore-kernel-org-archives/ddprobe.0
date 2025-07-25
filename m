Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 280D01FC3
	for <ddprobe@lists.linux.dev>; Fri, 25 Jul 2025 08:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753433394; cv=none; b=SeXoD+xFhuKY5M2VlFljuRns4+RXMw8Op17xRLRSNjg7z6rOn0YM6QLnNfuABKfp8ZaBbOCsJ/o+DhkP7XlzhsHyqVXUq97Dbps+dcpRkAtpbhu2k4cZSMg6HEl1WFlLmaJB4e04jkC1G0mStV+CGJMd59wPT6XKHgdl37kyGz4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753433394; c=relaxed/simple;
	bh=VV5YhB374eF+qecpCwlMrXpl95cD+dRG5JpitKu58Fo=;
	h=To:Subject:From:Message-Id:Date; b=NjLnEytdXflaPurAOtzJ01tB1A/lroBDwXIpKnpJysPM8yA+HoEj7jTFSAw3HvoLAw7DtNZoTezBMiCSR0HBKXM7ST5IIfpKl05xBMKVCdcYZ2ysjYmS8eLLcI2+RvLBGl6Ou5nNAnBurbVpox9OLcFuIJJkq5m7F4Vajper338=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UpwkxKTx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UpwkxKTx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9C8DEC4CEE7
	for <ddprobe@lists.linux.dev>; Fri, 25 Jul 2025 08:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753433393;
	bh=VV5YhB374eF+qecpCwlMrXpl95cD+dRG5JpitKu58Fo=;
	h=To:Subject:From:Date:From;
	b=UpwkxKTxPsW1hcm4OimYDCZKV3swY5K1FTvxr7hAr15UyMjmcITUt1eummOa88sM2
	 dsXlezxU6+AxoYDLNUWdJMO6srut2IoIi4y+BFVumtych+YIdMKldLADcgaUEIvZyg
	 wE57nJKChL8vsScyqHzC7aTUOvBHTmsDrRg/SsAFQMtb+7xuJyACDeoEdgdhi/CuWh
	 7PSc+xkLqytabtFJoEt+gjA55RdgjEVJtIP/TOFy9xHbktX9oWqXYpKloNv1wJEx0R
	 riejV4EB0+Nu91bpBZ3jeiV+0YuXo/dMCkyd06oH76X21FRuTGF3qpibM9A83x5Zi/
	 dCwOywVBJSHOg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F2B1C87FCD
	for <ddprobe@lists.linux.dev>; Fri, 25 Jul 2025 08:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175343339357.27210.8134044478818220548.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c8a5bdce888404a741070e8b25b4fe4dbe897952d80b4c6f942508228cd260cc
Date: Fri, 25 Jul 2025 08:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753433393
