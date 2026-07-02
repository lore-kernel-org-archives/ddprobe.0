Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2546444A71C
	for <ddprobe@lists.linux.dev>; Thu,  2 Jul 2026 08:58:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782982714; cv=none; b=WI7Nm3ka5j57Euu2QVTbcTp4+sflXtd84cf4qVtDQYkgN50+xXn+HP/j1C/vaPh8f7ejUv+rWQEIWOXqMcWlec7VC++HkS824tl3EmIW2XCEw5uYNvxb8FEpoW+CebwJYrnAvl/ZSmqcHBPHfM5y+tViNR/mDRnVJgbgCMV+j/I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782982714; c=relaxed/simple;
	bh=124tyBLkL6OAQF6/q+xmzYk8tIl2Le8a2+hZPnwbWfU=;
	h=To:Subject:From:Message-Id:Date; b=qWRU8S77JUj6gu+wuUQaRl47Ss4t3RJ6F6qjjSIsx8neDvkOvUChRxK1mtxZVvhdbvSvqYIVfpYDULMsFmUi+hVICO3F1+k1R6A/eUp2wsQe1CnrlUcsv4lwe/S+ZQK56U3Xzm43gVJ71V9eRl0WJ4nVWNXGOQ+q6+SsQyufE5s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=m2EgyS2N; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="m2EgyS2N"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CAB81C19425
	for <ddprobe@lists.linux.dev>; Thu,  2 Jul 2026 08:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782982713;
	bh=124tyBLkL6OAQF6/q+xmzYk8tIl2Le8a2+hZPnwbWfU=;
	h=To:Subject:From:Date:From;
	b=m2EgyS2NuLIUj5KeGSHQ0JMVM21a7o1Zt3v6WI4HokqyXylSdJuyRHJrYn4wGkHeS
	 NDen8XEgbGP77IpSSRmHeNSIC4YDI893adrQ1EUa0Dg2xMQS8TILi9k4gpZFqbpw8R
	 fwtGSeb48tPL3QcJTzBv64Qk61TlJWSqVR3prFjGYGpXNbioOc6E/q8I+q3O+Dwt8V
	 8f9cjDXRIsQsvMObdouKe+jfMZae7N1xR+iv1TpFoZBqjg//PFjPjWCqTnFyS2onrR
	 Koq7zC0xYMNcqK/kWO6XHHJPAg1jRGu/N+twLlyuLncGlDDSttmSKh5NO5mbNyZtDY
	 fNUsXaSO2QMog==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8F0DC43458
	for <ddprobe@lists.linux.dev>; Thu,  2 Jul 2026 08:58:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178298271368.29366.13995372347750067679.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7ec500009d85b1c41a31cda6f5a46bc71356d3f9068a895a64b63d48a6c68d06
Date: Thu, 02 Jul 2026 08:58:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782982713
