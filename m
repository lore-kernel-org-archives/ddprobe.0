Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 477281B013F
	for <ddprobe@lists.linux.dev>; Wed, 14 Aug 2024 18:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723659954; cv=none; b=puhXfTpl/jdjZl2Jyc3sVfHHRvu2BZ5UXI1xa4TDC+pRkTrJqt11IjC7RG6+GiSG325gMrtqRnPwTHoJKy01etn/C5AUXUREGbrm78R2ciPt/WvwgA6Qw1zi13JhmudxvP7j5vBssFRhamx1cTFwIw4jOqwjl73u66DMs3/C04g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723659954; c=relaxed/simple;
	bh=EHV8R7Ou8jWtu761xrddc9q8BlqRrdE8QX+3MLwPdi4=;
	h=To:Subject:From:Message-Id:Date; b=VOFwqqy42Ca/ZyDL+yzbTnvL3px+Y/+lI2A90wa2Ma+2LjZARrQpLLp6Ytya+XFaAPEeFnPKfNyDXBTFl4MsJMqSwLwlNYj6ddztG/y05W/05VwkjLKrjKiu73xoh0zPBkB7a+56tARxalOnFUZis8Cfk1GcWGp2xF1/8mPOYDI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hkQczE3K; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hkQczE3K"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BAE40C4AF0A
	for <ddprobe@lists.linux.dev>; Wed, 14 Aug 2024 18:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723659953;
	bh=EHV8R7Ou8jWtu761xrddc9q8BlqRrdE8QX+3MLwPdi4=;
	h=To:Subject:From:Date:From;
	b=hkQczE3K6pXQ3p71g1tOtU7MwY7fhIwLgC79DUw3QY5+Muq8rhThn5UI5ptQm54fq
	 eOOv8optRKtdEwVH5m63oRnJICLiaeY4XPuIpq9XlpZqSiaXuwBj4zKJC9VSsYsqml
	 vmc2uhL+YJWG1MtrFxhXj79kKsNrHKN1kPq3cVW82iqv5jSWXyFid06mhIiSfHQO+A
	 lPa3bbc8HiTJERKgJ+Tni4a0bLuQZ8ascxawfQtzZCTOVhnT0gC0CoPT4wqXA9WDCc
	 p6/JzMByBpdNVoRs5vwhnfsw42LN1AREhoPuPtlC8qTuz270B2FErq6je687Cs+avw
	 LTcMRl5PxBMUg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9B48C531DC
	for <ddprobe@lists.linux.dev>; Wed, 14 Aug 2024 18:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172365995368.21223.5905298535818244852.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 138fecf80a096b4f45ce058d49efb14bf0571859111d171225b068576ce2124f
Date: Wed, 14 Aug 2024 18:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1723659953
