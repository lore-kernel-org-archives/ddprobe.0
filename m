Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4BF8F207E14
	for <ddprobe@lists.linux.dev>; Mon, 17 Mar 2025 04:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742186394; cv=none; b=M8QEecWWlJFenY1KbJguFIfO6uq3wWtfZbLqcMvqYXjNqa7bb/X/cZjZvUESGiutobXfsiOoMS21Ov+tgKxpbxdGyUtpHNFOisXvaGFLmyGc1580owSHg2wZ3Pix0w/acwyTFj7Zd/Vogf8HqNYijX1MRVVMNH6odrRIRNlx3Nc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742186394; c=relaxed/simple;
	bh=VUMAdKnOtjHLaijgrNt13sOfOY1h09o4iOXf0JIuqqM=;
	h=To:Subject:From:Message-Id:Date; b=nDtTKdqJksHMaeyqzuV3PaJw7GFHnf63XH+7JsiL9DRRO3qx5d84bREQbx4aHvmtbkdUAh3k7qXt3XUXr2yOVN7uqosrBt8D09bc5yqx4q0mrIEgWpUI+gMATAJgLTFy3Ocv0OGGSNBeHybqGN9xcc5vql9tPOgMOEZ/8ItPiUw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JVZ+7vYY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JVZ+7vYY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CCD30C4CEEC
	for <ddprobe@lists.linux.dev>; Mon, 17 Mar 2025 04:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742186393;
	bh=VUMAdKnOtjHLaijgrNt13sOfOY1h09o4iOXf0JIuqqM=;
	h=To:Subject:From:Date:From;
	b=JVZ+7vYY7wOyyW/fSpWIm7vIBzaop4jft99YC8eWigcWuRhCpcPLcVzK5R0+nR4/p
	 CfUAGZJsT9jTVDfZUlM7BVIAv5LjnjjRj9Rgw/kPcVFQ8w0/1GfPA+wHEhT3LjSrQB
	 VMyKcVwdgr8VLasLLG2oeS7dBdLh1fe/rA0BRSVZvhf5GNDi2+RY1262wTix3tMLw9
	 +ZeyAZwOQpxsUWaMiLMDHIImG06ftJDt+/HMk8LrEboW1Rs1WBnZVUCmGdy3KKI+NS
	 S5dKZinMYEodz1NJ5jIBMg1ln9cOQ1H7it2KRrDLDpJpQ7aDok/Q9rzdLJFQresmkm
	 6F8HUYisYlkbw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B3385C282EC
	for <ddprobe@lists.linux.dev>; Mon, 17 Mar 2025 04:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174218639371.20359.5988328861551670872.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7f7ceb06098b2b701b747ff727f9986e304e5ff49cf02339f2a24a4430e659c6
Date: Mon, 17 Mar 2025 04:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742186393
