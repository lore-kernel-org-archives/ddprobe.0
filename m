Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D0231E4B0
	for <ddprobe@lists.linux.dev>; Sun, 29 Sep 2024 08:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727598354; cv=none; b=ojJ8lyD7JLiPpPvGS5/uVGwHv/EieltVrDFbaHZodZlDHeRkmCSBfFUsnleP8WJU29ppDjXxYn/oTLKeAViWyF0fNzyCOosh4t5rvPzmRR9bePgSj1lhYp9NZoy8lbD+D/UzgB8vRSaDZIepK42K0RkuBbrUcIEKfPDVtnPHnLc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727598354; c=relaxed/simple;
	bh=88WQCbMh+JtFWh7javREimhbLSBEg1ykXjgc4jxYEKU=;
	h=To:Subject:From:Message-Id:Date; b=D2Uy64yLNWJsE9Tyh8HqDugN23f7dFomu0de2eiWpS3ybp30pPsTB55m2XqKHroun6nY6gNlOO6+D4rZcPlsH3sQGv7lBSxUuAxTYxvJrnfn+Lh0LjspH6BkLflSs3ozg+oo6pE+/i5PIZBJyphi2G8MLFfo88gTNq4gMEmndZc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=K1bAQx20; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="K1bAQx20"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A51B1C4CEC5
	for <ddprobe@lists.linux.dev>; Sun, 29 Sep 2024 08:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727598353;
	bh=88WQCbMh+JtFWh7javREimhbLSBEg1ykXjgc4jxYEKU=;
	h=To:Subject:From:Date:From;
	b=K1bAQx20pT5njaOUKgSNGq7K8D4h8U6B6a89tRu8SYxGm+qKUCwSXyx09hRLefqiq
	 74bhpGfpxQW0wkWOS9IxCvZ2fH7q1QEAU4KHuMaNY+ipQibK55MWH3gORoVlwjoufv
	 oNini2wMVUfB9dyKrEEp6Jgvu9pp771GvdoFL/CgHHDrS4MHAAeYigcDPwiHmV+CZa
	 rD0T9Ud/8mX4QBsMX/WQLuFANfp9Jcni+X/nGYYNPB8o34KeB69urW7ReFoWrQ93hj
	 nvn8mrCsoJWibUjYDWpXW1/kHcrsXpzAwlAh/GpoCC177THFitslGUo3G1LtMq1Vqc
	 s5Iqbc3pQzICw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 984F6CF6495
	for <ddprobe@lists.linux.dev>; Sun, 29 Sep 2024 08:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172759835360.17020.10291971400828916491.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9d6420e4b607db696ca55a02195324092e2b9103a6abfe22259041729f6878e7
Date: Sun, 29 Sep 2024 08:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727598353
