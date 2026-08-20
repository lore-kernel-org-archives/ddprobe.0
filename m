Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 83A0E388390
	for <ddprobe@lists.linux.dev>; Thu, 20 Aug 2026 05:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787204434; cv=none; b=sny1Pi7XAC9jpd7fMC8FZAvCw6/q6MxnWah81OJcTa/eTvlff8icFHIW9VZPrwT444QqOlgB2kLGKTXR60wxFQROmEegO6oHYANmm3/v3sNRUa+ioLNpLa8sD8MHwQ78pGo/4MFmHbHxtXF+r/S8++5ZjpJJX8aK7wzpq3ZckY0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787204434; c=relaxed/simple;
	bh=zY20auHBibZya2cq4I4t8NPaStUmclwy1058wLO8Zfs=;
	h=To:Subject:From:Message-Id:Date; b=bk389kyNV3gkZ5f148h/0MhRe05PpjpE6Nyeh4orfHgwkmr7rY3+Yjl5gvae7ZdGuw1bXyVWMO1sEc3ujHVZsH/30k6wQnZ1vX8NEggETuSwGyvOmK98BLUkb17sJ6mCF2gZAjTyywjmZhc17t9uesP005n/CjHva3qqTNVtq0w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=B6IcDbRk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="B6IcDbRk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C550DC2BCF4
	for <ddprobe@lists.linux.dev>; Thu, 20 Aug 2026 05:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787204433;
	bh=zY20auHBibZya2cq4I4t8NPaStUmclwy1058wLO8Zfs=;
	h=To:Subject:From:Date:From;
	b=B6IcDbRkWvcht8CF8GfA2UpbOtjfLEVQSJ1NJCzxFjhdp4D6NLnhJTSDKzltAZCOF
	 dzHvvFDCTcdQaNBfetP9JUPzNofjEhIk5w1LLJgfmw617lUeOYoNsmFTfpvLb2M9xp
	 bomxpdp8w9u2eX5HOLsthxP5l77Z6HHAaVIZgCdIHdA83h6qOAN5Bs3wswE1fBTrBL
	 qlBVTrgER/tUlIILlSJdqJTdsvPEF/qXy1p/1+aW09MN+gR36geup8BscY3rtM5sp3
	 pHUuDUn4MtIBFwHTXlESk98NE1HERnskysIECK3PdqfGAgYbBwN3TMJyi5E2RuBwO0
	 muFfXOURAhKDg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAA87C5DF85
	for <ddprobe@lists.linux.dev>; Thu, 20 Aug 2026 05:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178720443369.21575.3302623914630425449.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 70aeeab2440d21fd40b1ad61ce7a6bbf1f685fe3b7a7a1aa8be866ab100c4e91
Date: Thu, 20 Aug 2026 05:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787204433
