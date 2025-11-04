Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B49D313272
	for <ddprobe@lists.linux.dev>; Tue,  4 Nov 2025 09:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762247994; cv=none; b=HNzAGNaz4BLZJgGUEFE02D5MQm7F1QcgRuWJATmD3J+TA1yokQtwY7oMP8SxsZScdu0KzZ7sCk7buXHdThoO7uGICAcii0keM6B4sryrl9+J/jsuLxWBflgPbiooALqyEo+4aLn2B/5YLSPj2Pyl9eHZ/aJ2DFnruVjjOODsNsY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762247994; c=relaxed/simple;
	bh=kc5smrbyPKLcKg7bUkocra9Vn+cep5XtUIH4Gh/5elM=;
	h=To:Subject:From:Message-Id:Date; b=k0uaOK3xys+5yqeDiah3V0p35hk6MRdOZWvUb7N++CTrbJMu8PaKsQ3KBZkkAsUmou1UOL2fO/bcnLuc1iupe9AEgFYCJb0mDfJxVOcgepThy0CbJi5z9GMr9fOGhIfdwnKv/84gAnwa7rgE4S6nUgE2se/P6Br8ZvFrOoiP4mA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NlAKnf4d; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NlAKnf4d"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AFE13C4CEF7
	for <ddprobe@lists.linux.dev>; Tue,  4 Nov 2025 09:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762247993;
	bh=kc5smrbyPKLcKg7bUkocra9Vn+cep5XtUIH4Gh/5elM=;
	h=To:Subject:From:Date:From;
	b=NlAKnf4dIArXPz/OFjWh/BhJp9q/yzOJ/1bWc4wjNklyvWVJiKwib+rZcx6lN2J1v
	 kUWmWQzl6ELITeg5ihcFqONyCCLVVyAPjKHpWFVe19NetrrByps3RDomh6JeyVST9p
	 2IBTA8Ivqzc31lKTFY3xPqvF4+yQbYqL1FRVACRRKinVqh2fEPa1xtzSEAi4i71/tP
	 cPeHriG7/aFa7SK7eBNAA2xyR8CliRUKDVdWDoz95BU8VIK003+VuZwAE1eveTJtKX
	 U+PINF7zrhtpscIn9ebRl+hJQQf/or71z29/JiHOJ8SnQgsAQ40calYfvtHywRp3Eu
	 +ULkDyMLyyehw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D1C1CCFA00
	for <ddprobe@lists.linux.dev>; Tue,  4 Nov 2025 09:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176224799363.25482.13307066317653523294.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 75fdf177de69b57181b166353ee7d2d1b1fe92f8001bd4aa0de98ce0542dd218
Date: Tue, 04 Nov 2025 09:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762247993
