Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8FED429A9C3
	for <ddprobe@lists.linux.dev>; Thu, 24 Sep 2026 01:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790211634; cv=none; b=p4mI+IylKetbFq/7Bmav0D/cpRVHDF4PU/iJZXk1jU1zo07DmU1hM/bQWWD0J3ZKAkbK3QzvGFl8TwGNZjWtZRJprtNBIL33vOXRrIge9oK8xGFtlbYRl4oCNhCGQ4vzWzMPGiFQ/JYH1Z/taEp3f8d/HCqUbPjNmyqcJQ1vQZQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790211634; c=relaxed/simple;
	bh=5VCasIK/rY7kCndVoGE754wkBuMuMEVzhqG3onRtthU=;
	h=To:Subject:From:Message-Id:Date; b=mZuPlpUPv4g1e4IhAPSXRrMBJJnDaut+MwnsKB0+CNTz5LEKML9o+7W6cuB3AOJyLFed9yS5sYhk17BsdpvSRyPyJCg8wU/1vA9cn9qfiV2P74lGGo24H4WgH3brkKiakVFDgNe+xkKoirzayuHyJN8UPQXfu6yCl200sljvITs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ALHAkvqM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ALHAkvqM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DB9B8C2BCB8
	for <ddprobe@lists.linux.dev>; Thu, 24 Sep 2026 01:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790211633;
	bh=5VCasIK/rY7kCndVoGE754wkBuMuMEVzhqG3onRtthU=;
	h=To:Subject:From:Date:From;
	b=ALHAkvqMlae7ViaWCofyoB4dmhRG51X9fWoxquyZBIY6Z7zeeQPAm98GmFJGIOIzY
	 LDKBLVB6EK0zz74Txjum6dX+S8GNuWCYydyHRpJ+sEten41fAm3rPciriNC2TXQSX7
	 7jikknjEbiLhRIm+DjLFhYJ35d9WhVxzhCVD4hefHvjuYpZRhXkF9bPBO/4Oj8w2Af
	 MHvrNJ2vZHcAuM5+bNo29mXHTbXIOKzZUSnPTah8P0ZTDB+GZ+j4lGD6pCLpew+bl7
	 rtokGsibulVc5M9rhhPlqMAx8CQ3KRKGf06iQJFdnDzY6p3GZ7Y7ON8Hpe5YnrrPE/
	 fYY0bwrRZC7/Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B4D55C9830D
	for <ddprobe@lists.linux.dev>; Thu, 24 Sep 2026 01:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179021163371.9381.9981629466620965682.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d97c34871b3f47af953b47499dc3227646e47da1c8d5b98cfb018ccb131d03e6
Date: Thu, 24 Sep 2026 01:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790211633
