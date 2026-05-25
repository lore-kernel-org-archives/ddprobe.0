Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 07173379EDA
	for <ddprobe@lists.linux.dev>; Mon, 25 May 2026 19:22:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779736954; cv=none; b=eqWMq1T0wBcE1bx0BkvKJ0iOZWUzkkGVNVdV7OyvimKY4MWoHyZ2RojvE5MUtT7B8+54X77jpOEzexqY+UobomnFbOpqVV1rsSiyjwf+HD8vajFv/Ls7r5Sb//Osk0pHTP7rSgXjx640uqqDFCOUaCjX1X8Ie/o6wwnghHidMsM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779736954; c=relaxed/simple;
	bh=V8r0fWV2wadm7QHoaxt0AzVVc9DqlismLyQQGHU/Oy0=;
	h=To:Subject:From:Message-Id:Date; b=E1/Bt0BmebKY2aOCiJhKOcXwtmXGtpq7wrSY+/SZjwRwkchBjfQLdgheUop7DXAGc3ifziClnBDH6ChpRH1O53DO7/aPL1/hWmpbbhBVYJY0ZDT6FTv5bvyMA058f593tD6ks01zX1Q1gIv6ZePeXTFQac7WBTSU1/oJmAewoeM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Yi61yL+d; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Yi61yL+d"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B61C4C2BCB3
	for <ddprobe@lists.linux.dev>; Mon, 25 May 2026 19:22:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779736953;
	bh=V8r0fWV2wadm7QHoaxt0AzVVc9DqlismLyQQGHU/Oy0=;
	h=To:Subject:From:Date:From;
	b=Yi61yL+dcKK2cdZw/heNRmfx3cPet1UP05yh369w/UPM8NRfG1vltFv93rWUGdN51
	 TXKJCPGnnpRvDjYAe+yfTa2G2gzakM3N83tWOdlC7UaZKoU3RgkoIz67HIj9cCZtBM
	 7AN9q1kJQGSzoB0lDsulAOwYJHt3rEousBppqw1gEFvoDXlX6LjtmIBccge1Y4hj/J
	 L5yNk9IE8GF/US5d3HLCZtaWiZk+KLrVY7TqSnk5bE0xVMUmzguyJa4GjO9EuqNB1G
	 8vBrpNdZ1Mc+G4NCrHlWwoIF2bsejD9Xb1FbSLdQyZPerPAy8PQ8rzwHufoD43E64E
	 TPA0FRkzDY8ig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9654CD5BC9
	for <ddprobe@lists.linux.dev>; Mon, 25 May 2026 19:22:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177973695368.23723.12190977631753464463.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 518f23114efb925e00683d6b4250a3a2abe94acf4eafde11410e5bbf465aa8a2
Date: Mon, 25 May 2026 19:22:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779736953
