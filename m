Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0CE8F1714B7
	for <ddprobe@lists.linux.dev>; Mon,  8 Sep 2025 01:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757294394; cv=none; b=fWgyhIOxSb5j8nKrU8kzoUpDFJGZPk7POlHsC/eia9lcHee9zvcrmvPSeRuV8ytTTVuduEdtCQPJI7TrVJyGFZmmMaIc3Jm7oeoYnfJPHxSH3v49hmS0zAgy4YzRh1SP0y75c4UPzu1qIOi03bUlAJ0yAerB3bJWcHhjmhfLLds=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757294394; c=relaxed/simple;
	bh=bxAa3aftgDnmiRS6FaUi1VwwJdsxvEbOm/I8JAwrj/c=;
	h=To:Subject:From:Message-Id:Date; b=p4aidftqD/SzVQiOz6sNav53zON2vf69xC9APtZnAWdKLQS3pw42rvQGY5yC0JLPX9UI/auvqtLTb/R5+L70Ln/VLPuwLhnsCy8f7ilV/lqasPIPoGizGcBe5B/hwumEr3ctFC5wK9UfRuycIhhGIlzP6citqHCrdUcoHrtSimQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vFP5sriD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vFP5sriD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0960C4CEF0
	for <ddprobe@lists.linux.dev>; Mon,  8 Sep 2025 01:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757294393;
	bh=bxAa3aftgDnmiRS6FaUi1VwwJdsxvEbOm/I8JAwrj/c=;
	h=To:Subject:From:Date:From;
	b=vFP5sriDTcNTMBMYrFUFlO8miJT6b2ByIFrRjC2ib4os9xkcGABdAur0Vazk/0WH7
	 zE7WRxIyhw1TPzr6rcW670/FWgC98iU6VyvqlJzIu1PUyrjk+N6Moagq3PrIDl7T5M
	 Fp0CGUzoZ/OuyaS8x6c1z+dzqMtSUsL6EiQKAwGUh0ViOPOVfwA0KyO/ugYdEyH1oW
	 cz852qOIqo2G8TuppdZrFlxd6Mhvsvb53hkJF6wiaNQwylAnlCP91S70ThVytRjc/u
	 tRAmz0iuM+ZC9sCfSxmi0PpoSnqNDxRxFEgsQ6PnBcpJs4+9zsgqZK6Gf/m2ZgFoe8
	 jgDIAgAs0zhww==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EA99CA101F
	for <ddprobe@lists.linux.dev>; Mon,  8 Sep 2025 01:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175729439357.25544.14351563836963636339.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a78e40ade3f8d563012e75bb96c6094a789b27f0c2c520c540d0f5673efab381
Date: Mon, 08 Sep 2025 01:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757294393
