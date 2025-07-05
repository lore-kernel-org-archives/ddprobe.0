Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 12F941A3142
	for <ddprobe@lists.linux.dev>; Sat,  5 Jul 2025 09:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751707795; cv=none; b=lvrA24QzFH3KEYkUnPLmtw0TIbKTi8dXA8oHykwRJfzOcJvL3m1yYeGHmdBNuls14YsAbA7eUlbIZPLoFR9eScxFgvXGNWx7JIgMao3pRu5ZCgpsJgDtp3bd9belUdMro/XqaunQMtulWB4fC/Q12/lL7xRjGVpJIntp6apNF3U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751707795; c=relaxed/simple;
	bh=bAtObFrBhRm3KcoIjgm1pU25kZCRtRiSqgcjgSlsSZA=;
	h=To:Subject:From:Message-Id:Date; b=Zhf6+pPj6wRv1MJxodYw9KNBgAwQZxHrvt0gS1XHAgAo485a2N3VAyafEo3jmuVXeK99DFmfKGb3YLPi3UABZntouzbsQWlq/iux/vhc9FwRPqBBzELNMUO+zwN1sKv+qON1V/XBzIMH1uSI6mG8nWMVKGvAuKhinTx7+JRMVVg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Cik9tZM4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Cik9tZM4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A122FC4CEE7
	for <ddprobe@lists.linux.dev>; Sat,  5 Jul 2025 09:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751707793;
	bh=bAtObFrBhRm3KcoIjgm1pU25kZCRtRiSqgcjgSlsSZA=;
	h=To:Subject:From:Date:From;
	b=Cik9tZM4JlfEkgBynzPzLTUNled89GOjqT1dBQWeu5hCCAiWBMEbokFoqVUaDv60w
	 u8U41o5UdL96we/+ftG5BuQlrxpGbGN9vKnV0rE2uOlVTt0Aih9szoIkRj1aLT+V8I
	 NxHJToJwgrSraMB2GMt42NNRvkicw9bqYkqbDmrNFOuqejP2XFb1PLOsX3WPcQuEAY
	 YrQk9ChlSFaYbOruq3fazl9UXDgY/BBc2wcC+vij3mpliEUALaKlMjAQ88zxScT/Cx
	 EaEl8pLodRghIEO1o2lcON+1YUqDAnRGREnVnwLJ3B9glMDqH70GUckwoo3awFVuMo
	 0wuxsnR9UHOWw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EB82C8303D
	for <ddprobe@lists.linux.dev>; Sat,  5 Jul 2025 09:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175170779357.4523.3067446656166635655.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 75e7e44ebbafb7723b04e6d39dbb17fb3261e7d6ff70b0982bdb1a5a1ccc38d3
Date: Sat, 05 Jul 2025 09:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751707793
