Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3EB7C1C2AA
	for <ddprobe@lists.linux.dev>; Mon, 15 Jun 2026 00:06:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781481994; cv=none; b=cOcwNJI97rZNlS63OiK1GN9ipf9N02zJc5AFC6uRuvpLuOOyc81swMsFjpCEKniC3nxjQL5Qpr3tjlpaFFkhofs/FGxVl8ykNzfU4qT1y4J4Wch0A5JRPMoLAzoXrT824x19V2U7VIrJyznPeFTrUk3Dn3KaYVPKYs7xgYERZ34=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781481994; c=relaxed/simple;
	bh=OaGsyuCLd8XkbI4ErbC1ulHlymGMO+hB6glQ8TwLXbw=;
	h=To:Subject:From:Message-Id:Date; b=SnSqMGQrEzsOQwa+dp/hqqSffK0iR9+S2M1gkOcs3Tm1xE9rR18qDzyWXJ+vKeYlf2cLZegVdSiglAOMJNkw7ao9MnubVXzUaN+uuIZJ16t9ePV/ajIS3cPCs2h9HVZ9sHWK4lyCyXPXE2IrTCMbNFrKS2LUS491dBLQy8TTM4E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Q4IAwohw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Q4IAwohw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DC2C6C2BCB0
	for <ddprobe@lists.linux.dev>; Mon, 15 Jun 2026 00:06:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781481993;
	bh=OaGsyuCLd8XkbI4ErbC1ulHlymGMO+hB6glQ8TwLXbw=;
	h=To:Subject:From:Date:From;
	b=Q4IAwohwDp24E6QGe8klN/7aIZ8XR0sIUK2Cq/92I336gV0umiL5vySWSNjJe6Rz0
	 +RW5/+UMEnt8Qx4dMXJ3cBVErZmeiclZ2F9OeQw69ekoEcLXmujr36XX5iEImYzgED
	 uufm41ErztbLmfP5Xeg46S1mnF6dflSsXhvhfvmqRqE62QOumVkHFy27T4COguocDx
	 8vZBOgl6o/tseXgXm3uzMQtgkUnek3josZ6xzh8OgiwKnPq7XeC8jUaDFi2ws4gobt
	 rw8ZrSVHoocyMp7FJhMdaKxCL/vnJZddly6RyK8wJqsOy35wfZ3gWjdDDdxk8eVBo1
	 lUsV5ignCThFw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BD49DCD8CA8
	for <ddprobe@lists.linux.dev>; Mon, 15 Jun 2026 00:06:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178148199371.10962.4021289216222821328.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6fee6e88c991edd2461639a3d012263f2301b7faae9da578c91cb82ca8e6f87a
Date: Mon, 15 Jun 2026 00:06:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781481993
