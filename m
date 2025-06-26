Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 218EB33EA
	for <ddprobe@lists.linux.dev>; Thu, 26 Jun 2025 01:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750900196; cv=none; b=urdYGvaPFLUJ1wCscknCWOLRQwnRcktrX4GPqW+Ljku/MNJfGkM/LINveKTvmPWSmK9nsr8XIutl5Qe9AmKrqr1ngf4tEuC/FCLG9ngATIezpu4xlCavaYekKh9LokVJNhUdJtiJoSVI+Ko/mvKy7/zAn7P5WZfeKzu0Oj9jmWs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750900196; c=relaxed/simple;
	bh=JOM+sYeEkfU/Ale9CvWBrDIp7Rs3H9mwuq/MvNIhEzs=;
	h=To:Subject:From:Message-Id:Date; b=RYIqzj3whMfqHzpwgIPfmCRLQ0qEXEgTEPxnmW+WK7pBwvpaMNmGt7KidlzOymSCnvioJlvkzqG1i/4nkqNsOL/EHgRZM8GTjwowvDfzEnSefd7d5OHbphh5Ek6CUBuFE0y5IF58Hhda3Zq7+F+qwtpRfI0CAZ2hr4heLUCLwJc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WqNK0+tl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WqNK0+tl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3694C4CEEA
	for <ddprobe@lists.linux.dev>; Thu, 26 Jun 2025 01:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750900193;
	bh=JOM+sYeEkfU/Ale9CvWBrDIp7Rs3H9mwuq/MvNIhEzs=;
	h=To:Subject:From:Date:From;
	b=WqNK0+tlShLADkFIvzFUwncKuzNFOSpmVlVa0qODt359c9EkCr1fku5qIYGfAXk0f
	 rN0lIwC/TBrXZ9e9nKzeUCE+zILCWi8uGmGmGJ2RxuJoBmF8UEVldOWSit1BWhyUX3
	 R1NFW6tulABUsx1t/BOdKKjORLKTpPkgXRYnY1K6vt+GTcc0Bcad7T5Ai/T+K1bwIX
	 84FYrcVA7x/QkBm6K5WV9BmMlaYHq/vyZbeTql0ZoNXVC2fqslfdnIOJi4BhW4GzC/
	 48USsW28T8koyd6aNXk5+rwThVmYE9fIAQ9SX7ZxcAdlZ9bl9M7gnqH22xgf3AA2/8
	 FdesDT8CifKVw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92457C77B7C
	for <ddprobe@lists.linux.dev>; Thu, 26 Jun 2025 01:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175090019358.16499.7890795750096161592.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 67dd5abec6a5920568a5f3f807378682b6c303b482fe090d3c2992cf469a216c
Date: Thu, 26 Jun 2025 01:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750900193
