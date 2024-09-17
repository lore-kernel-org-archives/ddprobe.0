Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 201AC27470
	for <ddprobe@lists.linux.dev>; Tue, 17 Sep 2024 20:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726606554; cv=none; b=olg9dEO4RlvVsFP3W5L9qQ6vK51zctDFojpXl2F79o7kGXUxqO5U3bLXYncN/yjwfcur1+0UhNRTXIOioTXAlsE+jZQ2HJlwz9X9nmyEWrdWo4WRGWSfedQ2K3EDREzvffPhl3fLgLnL6qgvDWc4yO8w49M29Ls6T2xeZT9pZ+g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726606554; c=relaxed/simple;
	bh=zFeknK3LBZRpoRTaHzIc63ERG662j9s6b6cMoq4wARo=;
	h=To:Subject:From:Message-Id:Date; b=OEV7PlYFb6ZyZ4ZJsVml2FBzXN2JAs4wQOWTpYwDU3oO/zpfh380QSih5EEnvJfmMtWjn1mu6dFqQ84IjmmSNeznpSPO3d5J3FFi8ZnEX7TQUdu3LjmlL9Qt3HWuHED3WbS3iJ+DPNHQTRjgwoI2vNIUk54etGpy8m9iZ6cOEAY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=amgm6nOO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="amgm6nOO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A063AC4CEC5
	for <ddprobe@lists.linux.dev>; Tue, 17 Sep 2024 20:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726606553;
	bh=zFeknK3LBZRpoRTaHzIc63ERG662j9s6b6cMoq4wARo=;
	h=To:Subject:From:Date:From;
	b=amgm6nOODOgZXSFR9zOGD+C+s1NgZFmfN9Zp/P2PMl1rlvtCDPEbYAgUywZZQcrpt
	 OakMG2hTl9ODe43qw7mkWOh94nfvQBsRGqnRnuMN4s5pGk/juL9mkyD83wRdVNbVN0
	 2ghgyztNvDtESmeYSBJcWqqfmqhPfh+RaRro/x5I5eHXtP4vUymVOVzBR8UnBRH7Rk
	 SO5x+1aDd34GFpjdfJcbgx+x5MhT6nUPO94YTXpUh9HBW/e5IkJxJSXUu4zUC+NhXe
	 TKD9iCKWmxalO88aPzT8O+oEj6hM9O5zQWPLp711m49l7VqQArdQF6nipEMCHbNCi6
	 Xt/zUlSejMY9Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90CDCCAC5A0
	for <ddprobe@lists.linux.dev>; Tue, 17 Sep 2024 20:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172660655358.31204.14415486318885809929.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 51ac5130d4a5ad55c7ec87385a90c825f4c4f8b25c4ce4d31461b892828ab0b6
Date: Tue, 17 Sep 2024 20:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726606553
