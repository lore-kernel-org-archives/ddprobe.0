Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 638BD12FB2D
	for <ddprobe@lists.linux.dev>; Mon,  3 Jun 2024 16:15:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717431323; cv=none; b=tBaACEBO6vrL8txF5cCpZqx2oj2QKIuGHvSFjGgIH/ktMQXGgWTDGfVakT0jCqr/LFiw+HOnwMgGsz7bFnEqBAd7jOpD7rQQdS07b/FcJ0mCH87G6KKWae0a9wl+wc3VwE92L9uPto9BMrn0/cr0qfo4BR772t5TdwYlsEtgyTA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717431323; c=relaxed/simple;
	bh=CpVtpqxyJudN8r+4PE3HmpwPF/XQ3VcqfdNYUGXbDQA=;
	h=To:Subject:From:Message-Id:Date; b=DawhYGBf4Y5NCsziFoSa9Hq1j74FEhEkA6PrQh5AzLyCDN9JffrDP4NmhXy0suDy8SHISChdQy5Mfzrv5m9rlbAUrCsWYY/orMjmyUahT0EMCcxstSJJQTInEHucOEQlz9a9XiFRPYfMosJ4Wk41oXH+hVJIuzE9FlQph4c2GM8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EWg/uFrY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EWg/uFrY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CBA00C2BD10
	for <ddprobe@lists.linux.dev>; Mon,  3 Jun 2024 16:15:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717431322;
	bh=CpVtpqxyJudN8r+4PE3HmpwPF/XQ3VcqfdNYUGXbDQA=;
	h=To:Subject:From:Date:From;
	b=EWg/uFrYaop5L8qO9io3otla6bnC+EXo3PrYa4sq1NuwaB9c07LnFxGPuhjD3ohRg
	 JihU6S6xK3inY7pOqexHz6mbwI3iSbQ1iQDr6jwSJ6MHBgiSccacgrbnYKSwDPLJJj
	 7lGrBjAseZrqgg7fwLaco+RatjYm4jS7/DN9wsYOjjA0Hv8D1TvG0iuvAPwqCJddqD
	 2xF+rdNpXP+smVTSknNP9rPbsYdFOVOzYFfgbF12XtkUmPy49MVyYc7DbaC1Z0za+J
	 BtysBTsBKctIbwVr/Vf29CeB+lv8a/W35i4b11zjZnlixs8j8eL+KwMLfOTFIrKu/Z
	 u6t5xdRjC9M4A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BD2F4C25B75
	for <ddprobe@lists.linux.dev>; Mon,  3 Jun 2024 16:15:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171743132276.12724.2070747919516808692.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 52f7fb3f0d604f160b2e581c38206d1c10bdc8e94cf0c20ebfc110329d07831e
Date: Mon, 03 Jun 2024 16:15:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717431322
