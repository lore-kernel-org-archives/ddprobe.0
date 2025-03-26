Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DE810145B25
	for <ddprobe@lists.linux.dev>; Wed, 26 Mar 2025 08:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742978393; cv=none; b=dK6wDR5Q5TkhXd0Ozh/gqRUwMIK8/PLaOHt2WDbcisYpMvS8S2ceoiXcFGvkuzLCb+9WlouuD4XVvY4O0FpdhWAREKxGBQMjlx37c+w1i62FnoexynnvFgNqk/ah5dx7M/qWrixRxdMvO3a1gyjIyy5q4KZrejjPa5mesr1HYew=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742978393; c=relaxed/simple;
	bh=DJOG0Fzvp0zg0egOpcuF0zav6Ivryi2cO8pF0NHZNWM=;
	h=To:Subject:From:Message-Id:Date; b=pCs/PoQJO8W/gOMSQt5BE099dzAOEbIrkUmcRsqbUBEbN+FKL9dQaTLRG3EiN8X5Uku0rIZTFwfCNtr0LjG5QX5cuGbvA1lEbfq0S7NQn9tj6+5g5BHuyxlnFGSkW6YavTR3idLKZEpFRDzWAbq4YVqzQDlRLM6AqikoxfhnmWM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ccHSK6m4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ccHSK6m4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB54DC4CEE2
	for <ddprobe@lists.linux.dev>; Wed, 26 Mar 2025 08:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742978393;
	bh=DJOG0Fzvp0zg0egOpcuF0zav6Ivryi2cO8pF0NHZNWM=;
	h=To:Subject:From:Date:From;
	b=ccHSK6m4QFtGSM4tp9DO/QZ591jDiuhvrHLbPHyK7z9jfdto12PauXUYG8sCPqO64
	 bB8segNTOgElgBH6JDMMoJtDL1MAfFHkK5mS6DcYucYMTHCttaj28l8Pr+j+kBk7qd
	 GfZ8OKHwpDI2WVIIPOxXE4PoWfDlvgawERR9HiHjLi18s/pRrHyGJ2GE8fAVSthiXi
	 wtg91M7gW2zXajs4I+EBhaXYywZzmKl4fplAchJDylZiqfPnon2jK94jdEEt5EZxlh
	 4NT6+X2AUdNoA0pKHCIl24l5W1WVCLAazcEqQaZWEcIczlvIXQ4h5w2gxd1p9/65/y
	 Gh7H4GMq6T5yQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A54D6C36008
	for <ddprobe@lists.linux.dev>; Wed, 26 Mar 2025 08:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174297839366.22918.5112425738786081655.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c4f3f385e372ad7d1268f7a86cf94f5e98946ad299bb0fecc9c8735d34989ff2
Date: Wed, 26 Mar 2025 08:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742978393
