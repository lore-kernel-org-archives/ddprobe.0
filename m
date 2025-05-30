Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43FA24A1D
	for <ddprobe@lists.linux.dev>; Fri, 30 May 2025 22:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748642994; cv=none; b=gNkcX5NptL1UbLWKvHJPi+krk9sx6XGDBgQyvEKSE5eD0EUoiCzYHnxdnE4bvMHJmjAVspX7+xTKPftxqwx2QbQa+w1B9GmQYQ/8E9rYPnMq7jhYRVQaz7eH8xcnMU7tb7T8lgk0crfZYW1PTiNJeb6MqPWKlkrNIcLYaVfe2d8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748642994; c=relaxed/simple;
	bh=bN7yLBmiU0zhF9/ZYaXwhROZW+/IugaJUjnQdrat9jI=;
	h=To:Subject:From:Message-Id:Date; b=K7hjHJc++lnfqzqXmNkKF25FcILisN1GNpr040027jhlFnmRL/iPjWrAJBAQquK+vFQmdaPio0T+yFknKLcBUxFsxggHhfPlRdexGliWeydLmGP363mA5/cWtF+MDBq4Ni+feBla1eJ0WHkzA1tcDCyp86VA+qaX9/WC8jer2Yc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sK16jzU4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sK16jzU4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0366C4CEE9
	for <ddprobe@lists.linux.dev>; Fri, 30 May 2025 22:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748642993;
	bh=bN7yLBmiU0zhF9/ZYaXwhROZW+/IugaJUjnQdrat9jI=;
	h=To:Subject:From:Date:From;
	b=sK16jzU4vPiMj6sNOQrWYifVRBSi5Cjm2uQl5uQPP8GTuplcBHlXnuiXwYEzsOLlg
	 jmUKbffEEoJF5nBQaH1xpDxYZ4aesX2o/rLaxU44Y4PIFNEDjIvpmhJF4H+I034FzN
	 brAj4CXTBMk+rywYKP6hBkiMf+CL/yubk0q/LP2bMRAyMWKnT4H8R8clKtvDmGL78d
	 pHyIYuhtldHB/E3n25bTREzpmh+PNIro7cWNwtTa9rpheQp3ZgIlOu+8De1TGielpW
	 tbb3r1GNjVTcY9rKdrb0c2/LJlPSJ9qxWJKhUNlurhbA/Dgbv18njd1+OeID/xURDF
	 D6fyipanktCOw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F03FC5AD49
	for <ddprobe@lists.linux.dev>; Fri, 30 May 2025 22:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174864299357.13193.12455327923960173188.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c2eecd7703b6bca795572a15a1408dff17cd05660badca058c312186985a5b88
Date: Fri, 30 May 2025 22:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748642993
