Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0B29838758F
	for <ddprobe@lists.linux.dev>; Wed, 29 Apr 2026 20:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777493854; cv=none; b=UcPfcSENbp6tHtl45SeiO2N3k2VfiVV8tA4sE2VMpcU1Wo5Sy18I4NuYun0hXZMmcQZJVqF3glA4mRq09xE6W74bDuH67ywBNroO/G8VuCGBhnipAkgSMqhh2cQeknGxj6M2yxtMPw+YdhwjSFC+DXM0G9rJq2mVqIZK2D7rMo8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777493854; c=relaxed/simple;
	bh=oYVAyWK6ZsdX3rvsISyUh8jwW+W8KXKVzPkDZYLuacQ=;
	h=To:Subject:From:Message-Id:Date; b=H3eIIZtFYmU5U3xkoS0jxGiTD4BdCAf1YFOs0zm1UxEndo1P7ToGYFZO9JGkdqFvWBwPECMRztSucG+1LVONK1oPnZkkAplOlZm4b5XG7CCI2Y3krSQCUbyW/MBpTrbmQFytTUyKFn2VTSAdFRXqbSCXVlKmwPUqVSlIDWA9QYA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HVNU3cN9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HVNU3cN9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BE1C8C19425
	for <ddprobe@lists.linux.dev>; Wed, 29 Apr 2026 20:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777493853;
	bh=oYVAyWK6ZsdX3rvsISyUh8jwW+W8KXKVzPkDZYLuacQ=;
	h=To:Subject:From:Date:From;
	b=HVNU3cN9dcE4ZDxxekQ3GjlVsR7lCMYPssOKjhdZcyduQXvswthjyeU991OodeK0z
	 8EC+HSG79NX/Pym3fZCjZnQ7CY1PtytaqAvxAa9mJE4eJVYuBAXl9yp5QX8pGFbnIA
	 pq1iqmwdn2oVocNXEL8TMFjzD5jfRX5r+ZZ4Atuv28A8VBVMk6olnPmaot9u+MMl0j
	 P6JavOJTvqgOZdyO30ZgBjcmXrM/u8v/vCcgWk0tH/j255oLI5PSUxomg8QU9tbRD8
	 SrgQP4SOOCaR/mGwSOC+qjUXYEL9M0hZ3prKPYpKqvKTa3GsKLvf1enMSCJut3le40
	 Cq6vg5+j7cZoQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAC52FF8875
	for <ddprobe@lists.linux.dev>; Wed, 29 Apr 2026 20:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177749385369.27663.13709124172869691582.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1f867c018a170465843d6cf485f2ce574287afac29d6b73328109486004b7ceb
Date: Wed, 29 Apr 2026 20:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777493853
