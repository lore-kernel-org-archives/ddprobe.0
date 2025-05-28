Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 341283B1AB
	for <ddprobe@lists.linux.dev>; Wed, 28 May 2025 20:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748465394; cv=none; b=ZmDCbienxow3+A+LedmaWEEqB+6X6qva1Ru8uwCNML4wc0FicafEZeBmXkitDOZwC/4Cbx3i+XoGIdKqxloccKJiKNjpO0Tb6jevSO/djzvP2aTmclFO/lOGtPUvpItYjwJPBPfM2qb6tGfHu6/8G0QA5lbpWzedxgQjrh3AOo8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748465394; c=relaxed/simple;
	bh=9bOD72ISpign4mgttGDc+hw4LoKTdIkoBIRvbWDHEWQ=;
	h=To:Subject:From:Message-Id:Date; b=a2rSuRbg1UHp7QwIWJZkkxlcp/Otq1Je+soHTnkPnEjQJWBMcwmfEO7MOzy/DHwPmHa4bzK4bQLsn5u21KU51qKxkACbI9foZfeY68YQHPBHsZaVSlnS6B0+VWx26t1dFLX+jPktDFZqZJWxFbBvKkPrc4nZNunz6IGyMjhAR6Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=krnSy11o; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="krnSy11o"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3A97C4CEE3
	for <ddprobe@lists.linux.dev>; Wed, 28 May 2025 20:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748465393;
	bh=9bOD72ISpign4mgttGDc+hw4LoKTdIkoBIRvbWDHEWQ=;
	h=To:Subject:From:Date:From;
	b=krnSy11oHxfXyMe6vDz7385+OaRhNnTdBLvA8hEXL8ugvzy9g+hdDhv1Qa9HsEmVy
	 D7Hg9E7SNoedI08L6byeZ1J5MK2GPWz97SzGAMhHpq8F+0pRDWC4kS88kESaTDNtZ8
	 mQJLMRX7tOqNEB2MP2MilzGyvZ5UFAWEAd3L7BMXFbvv25rIrgb2dKbp3wJXMN4Km7
	 wHvUmt3Y2vwEreHZBHf8BoEVhpSN9WvPR2JY4JJJxBbrnKsj7wYhJaf9oRJ8ETAbRW
	 +xfx7I4RluAQxLBuLnOToOtL+81mwybTdBShK815uMSujE7w4SYyUg7LuoHydqPPcf
	 1CxEuAXdqI8bg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90F4DC3ABB2
	for <ddprobe@lists.linux.dev>; Wed, 28 May 2025 20:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174846539357.26951.7404294641411909316.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 324796af26d94ba1fa4c8a2a040210053ac183992c609cda60f9969dbfda4939
Date: Wed, 28 May 2025 20:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748465393
