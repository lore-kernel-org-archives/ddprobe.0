Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0B26730C62B
	for <ddprobe@lists.linux.dev>; Fri, 12 Sep 2025 13:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757683794; cv=none; b=AZyOOHFdYyFQNsWszYTyRmnIvokydooxCVgV4+OfKjxQrgHn3mObXT7/XRjYp2xN74mByhOIg9zZB8i+YREz7QOoQNnop8lqLf8OMeMkHkA1pqu6ywjfsOrQTcqgBYllLAMcUzjFC1lZXw1DllXUWQm/azDH/jRe41UuBUddy48=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757683794; c=relaxed/simple;
	bh=zm7AiepPKYQ9VLMliERLA7BUokWegyccBvYiBUleptA=;
	h=To:Subject:From:Message-Id:Date; b=d2noQWdin6rfqwJEuuN1qhlr/ub82IsHcTai6i89uNF5EHq09TGblxEiXrthhGE79WdB7us2MvZ3K0yPP+IFhP+ZkxRqLTjtTbPkwH8w9HFKjJ9ogz30U6O6iOJi8fuS20xD9zvUrKx0qQFO43wgoViqMJZRqI+zdYo5i8yJueE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iur97eEh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iur97eEh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A071AC4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 12 Sep 2025 13:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757683793;
	bh=zm7AiepPKYQ9VLMliERLA7BUokWegyccBvYiBUleptA=;
	h=To:Subject:From:Date:From;
	b=iur97eEhS7VXi0FGBcyVA2u6nTLB6niqY7j1Gsb4ErlEAIRgHAlMWJxQp/KpqirzC
	 j2xZagrtubevxr74ZGpxY9SONhzhDKrA0GT94oTiYBe+HtnGTlhGP+R3nfmUDsZ5c8
	 ZewPxOl9M0UhcWL0dK0bEsDurDomogY02m5DnT/ROJHpvSvtzd/KiCh3kYg7L60f/+
	 Wdz6rVBmYixBJxiOI/DDVHuCXgk8gNKdYm/bjHqSTVxd9qsDP483BdbiW58qpGKPjs
	 HRfj5TAkSQurRGv092tAmf0OUu8QTZqTx8BmI2kJRrTxK5s69Uecbqwuf0Z9lDUSxh
	 Av74EyWYeOXAg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F4D7CAC582
	for <ddprobe@lists.linux.dev>; Fri, 12 Sep 2025 13:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175768379357.15260.2113298809661956902.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d83fe21b9a3b58bed726e342d740906eb2d080f9baad256b01a9e0172a9e962f
Date: Fri, 12 Sep 2025 13:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757683793
