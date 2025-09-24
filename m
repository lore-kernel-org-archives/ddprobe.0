Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 380B1189
	for <ddprobe@lists.linux.dev>; Wed, 24 Sep 2025 22:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758751796; cv=none; b=lXCfbrjCwpLgd3/56Nl+MOFFvO6zBiye3ZobEH0oBUWoIqfdMNnkgujUU9mC+EpS75vxI6Hsm7Ao+bcnvmXhR98OM8ETL21W3Cj4EC3HOBE+q4Kxv0r16Yp66sxMQ0g5DkUmyfG1E5ZKaJeDlhNIYTT2IWnmGobHCfbbSykOe/s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758751796; c=relaxed/simple;
	bh=iCvXDLrtSGrYnIwe0lX1TY4yugWujO2PL9ioX4sRicU=;
	h=To:Subject:From:Message-Id:Date; b=HXGu99h6yEiGD5nyhIk/7qPOqPJvGmrNpooD01SqcX+OWIiWUAlv+hndfI03WBmABR7ankHecUe95HA7lK8Zl5dGMEQrhYv4n3x70I1GLZOZsuBUFYOWYl3Df/inCIMUpk0XJLbIzkeN3CoZQU2dQL3hwM5KH/tUg1NI4cxxOkg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=A2btZBdt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="A2btZBdt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2D17C4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 24 Sep 2025 22:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758751793;
	bh=iCvXDLrtSGrYnIwe0lX1TY4yugWujO2PL9ioX4sRicU=;
	h=To:Subject:From:Date:From;
	b=A2btZBdt3ywJhhS6KjUu5g78GsyJrNH8zoboQzcOp0kAuS5k6Q6J6z6p13GYqkqS1
	 W+bduTrB/tDUjMr5RNm62/cEDgB+0MuzYGPnkTyMgYejoPzmwVCmOyulut8eqrK/6Y
	 gE8IjIYSXcdg+fwDuYv/cUdTVqxATMYSMvjrmadnMTa1k94Q/drikAsdhnbjiWBphu
	 3jH2aZeRoywxdRg+DO1GhUZ91MrhkUHf1bUEHy7BMWh3YL+MxynWpXKptmXhdayeb0
	 2KqtDoZZdxtwf/4YMuxJevzXz/bUSJzlb7wvOSpxDTKD+A5BONfUfPuLWoknJLEpbW
	 hNP8QjHSsCqww==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FF49CAC5AE
	for <ddprobe@lists.linux.dev>; Wed, 24 Sep 2025 22:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175875179358.13840.10952988864483198982.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c9991803bca4e358de8d0d710967c927b41edb7b857007cf6c314e783d757904
Date: Wed, 24 Sep 2025 22:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758751793
