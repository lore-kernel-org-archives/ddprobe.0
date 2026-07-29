Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4784544E64F
	for <ddprobe@lists.linux.dev>; Wed, 29 Jul 2026 10:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785322234; cv=none; b=sOlY1+g2Y2awaRLNA1x+rzJ8uuWM1kvrqBiuxmwfXPjE05zL/xfeXWDsbZwk4lk2dkUVpwwhTUxsyUPhyZXobDKAmsvZGPlAkyD0tK9aIZ9ew5CASqns5g41J5fFHKRmN97wdfw5yxx6KbhZ1DnuxhBljZ3EiGXzO2MJELVwUFU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785322234; c=relaxed/simple;
	bh=0UVnjacX7aHRcaQJh9OTcjHluQ4GT+LlahAXrhtYVlM=;
	h=To:Subject:From:Message-Id:Date; b=o8z2t/xDCp5YOtQbJM6d0FM+IHqc9l5c4zUtL5p97jz5OABABW86bhkoN6U1+RYdsya3SfVazKpzbw+SJNuFlYZkCg8KsE1eQs9u9d0ufl0HORrlIFhEFSnMxzWVO0QLg17BUj6oJ01SnRsXtgDEGszCRbf6G4YnUhwbKmpzAyY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CARUvG97; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CARUvG97"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA52CC2BCFC
	for <ddprobe@lists.linux.dev>; Wed, 29 Jul 2026 10:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785322233;
	bh=0UVnjacX7aHRcaQJh9OTcjHluQ4GT+LlahAXrhtYVlM=;
	h=To:Subject:From:Date:From;
	b=CARUvG97pw6Tw4M/k7Y0TcINFl4hcIXt9AFBraPAapPnu2TVxpU/DM7f/3UM2n/jv
	 weTzax2FXtWsBlxc2g61CmxcV0j778vo0caXXO0HgK/g/NfxhdHQm41YN50+AdSyP1
	 prVbQcl9tK2X7aTGrubFRCulx9OEImuq3qsCo9HftKP/exHJ/DiFtMnNogTtx3PGct
	 7ZVwpqRXDHLo6GCk9CegA68RbphSwWLAGe6PNw4XHoeLCN0Ng6PnCWze/b/KdfbfVM
	 bCAyR12w7CCyMxz6Izw5kgQTWKck25Y35xmyq5nTjExPITm8AcSGepADYFcatcX6DZ
	 RwKKZf+B51vbA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9184C54F51
	for <ddprobe@lists.linux.dev>; Wed, 29 Jul 2026 10:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178532223368.24320.11693559982106480097.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f01c9e671fb967025ffbe8e3b9d3bbf22a7f14e72d172835d9eae639efd5febd
Date: Wed, 29 Jul 2026 10:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785322233
