Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6BE1D199B8
	for <ddprobe@lists.linux.dev>; Sat, 18 May 2024 09:12:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716023543; cv=none; b=g9JGPbTtYuL7ruDkHr74RElYRcZxYw6zTLwGOo3xdhXB42jk6xb62R0RL2vB6uGikNFOgXsOjOHUfKknrSgfSBRfGtRJwn40QgOn7kOiB0Ox0hI2HsZZW51sDFUyrB5kWiA/Xm7JOaRPvOlRVftWW1yVngzGinIOP+sYk1TceE8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716023543; c=relaxed/simple;
	bh=LIgWuV17u2EG/LGE2QFy143iik8EHd2Lb0fD66tHxHA=;
	h=To:Subject:From:Message-Id:Date; b=VWYp1T+DcKAEb0/UG9Zxl8KGWfOP2lSsmc2Zo3xnIBhBsRrZ/u8dqM3lqaYVxG5Bb/iloOpV40AHPq/gpeyedhN60cabDJo9ablHgZvfCQatdbRCOVU7xDnQURC2fk5ezr+zrGoguHwVx+A1t5B9c0bCShtcYAbvtyY+VJFU0Pk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ScBXpFcf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ScBXpFcf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EDA5AC113CC
	for <ddprobe@lists.linux.dev>; Sat, 18 May 2024 09:12:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716023543;
	bh=LIgWuV17u2EG/LGE2QFy143iik8EHd2Lb0fD66tHxHA=;
	h=To:Subject:From:Date:From;
	b=ScBXpFcfVw8LCA5xTIEWb42PgEStJ2mLCchS1pgeSE0wtllIuNTOHO2T0OEourf3l
	 IpDa2Tc/vPok69UZ/ijOVSvNfUMVoBlGJexf+EosdGePrx8G7W52k6Y0JAkyCUUUGS
	 gn17hmuSQr6ovv5z9fYdhXm6526vf44J61k3ecJEaWKpDhrJTJpsFZMkjJPlzx8S4b
	 IzWZ8ZarZftS7/tkh8CDFOF0ym5G1ljnKL+PSti++2vL85oqMuPEOP9KAGuBYepoil
	 f2BIxaqID5PgjHAOMZLeRmNMPiAS/+l1kM9iXmy7LLO5L6D1wr2Cfb6fHHArPfNwDH
	 kYXZlNMnFcN/w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CA683C25B74
	for <ddprobe@lists.linux.dev>; Sat, 18 May 2024 09:12:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171602354281.18412.13273112525267509186.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ac380fa974fae2bea7401b0651ee449b02a7b56a4eb3b2107fe0346f3db113f3
Date: Sat, 18 May 2024 09:12:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716023542
