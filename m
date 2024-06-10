Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38C0C7868B
	for <ddprobe@lists.linux.dev>; Mon, 10 Jun 2024 10:47:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718016443; cv=none; b=hip4FHLzQgHfkRFcxZLpOzYD7SDcW/2xd//0OijKs3SSuetzAjDgNtS9+AHxKAuLh5MHMEzgE49Mf2ww5hDCcQFGwL9QBEoeUJ86MHpSLJEWpyWW4fw2aW0CXiZZxL2thvmdA/8CwT7oi7LoLck//uLeaaotRZJwoREnyefunoc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718016443; c=relaxed/simple;
	bh=mUBVx4MEP35TUC2+QBquqnmHU7JrWwenxiIMbGmlemk=;
	h=To:Subject:From:Message-Id:Date; b=YykiW9Q6hIi3KFLFLrb6jaIFrLw3IU2aqXdxfhYtEPK4qszj8PfAA+RNe/AAiTeUGP1bwRyqjLsJbpWmnIJ8lld1PpSuvlB23r6whDm6y6Y17as6ZlKeKdkmRe6w80pN0GcNGf1k5SGLe2BLjnv+l2wxvjf/r+nBMjOac5WywW4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mbxrAxoZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mbxrAxoZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD7C5C4AF1A
	for <ddprobe@lists.linux.dev>; Mon, 10 Jun 2024 10:47:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718016442;
	bh=mUBVx4MEP35TUC2+QBquqnmHU7JrWwenxiIMbGmlemk=;
	h=To:Subject:From:Date:From;
	b=mbxrAxoZV3rIVcYh5hwP2PkL3903rwIOstrbJatIcfHwW24MqtP3fgwRP++ywJWne
	 LvTyq6NYwumD08BNzKEf+e1oa6i0Mo6212KM4xRA8ruyL2h1VLQiEcnOiLAXBfIVLL
	 hq96k8/JJ0GmzXH0whRpjMM0FLrGghNGY1j1BMiVmxVmaEVv8NsLH5gobK1E8Eg5Qi
	 8jEQSVqaNKynh3HpyhC2aws/m65+6rvNw8ISg7690op5qiv2DK8PRCEq61E1BvOWCd
	 rlKZW1CPA/5P6dnlx7foE8Vh2+Ulj1uMIIX9wMNs0+gu3N+/VXzIGRpnGBJBYZ5w4f
	 E7slo7jyPGsmQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BDE57C27C55
	for <ddprobe@lists.linux.dev>; Mon, 10 Jun 2024 10:47:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171801644277.5029.14979185753109445837.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9784ccb5ff056a013dcb7348294fd1c6c60eae29b341599e756bbfa85a8c2c47
Date: Mon, 10 Jun 2024 10:47:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718016442
