Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 433BC2063E1
	for <ddprobe@lists.linux.dev>; Tue,  4 Feb 2025 07:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738655754; cv=none; b=NZmcmnq2/YbCq3HPJAhQRdER+Ej/RSz5w6UWpJItwhi+wFUs0WoLbsYqhcTnygDFIaEQb2kpH6krULYfflOOz1zaJ1EmhhO1szQq3p1380vd3W1Jmf5/El6tYJhge5ZkWepFYuSu1Qrho71gCYqKjAwjJj+OLjMMqN0MMHB93Co=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738655754; c=relaxed/simple;
	bh=yBVCmHhgKtoCjHFrLM9i+wyoTq4fs3YXkKHgRIDDrhU=;
	h=To:Subject:From:Message-Id:Date; b=p28tikUuxFor9tNaNo2XJPyUazwA1dyZFTkzJcSX60x8r4OI1eyLOXndDEL4J/i03JvUbRZb7wCsN9REvACD3+rVE/BNNFegeIp8xCbrrgsjcpywRDnyU3vzQ4mhZz3KJbM5jQUDzYSAzd2ECDpn5iDsvRhecI1y2euz6M97N00=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oYtWO7vY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oYtWO7vY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE3E8C4CEE5
	for <ddprobe@lists.linux.dev>; Tue,  4 Feb 2025 07:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738655753;
	bh=yBVCmHhgKtoCjHFrLM9i+wyoTq4fs3YXkKHgRIDDrhU=;
	h=To:Subject:From:Date:From;
	b=oYtWO7vYYtqaJC4Nc+hAvjRS7KI2y+0BKRafo2nOFw8DAh753mOuiUuFEoj8danPW
	 nmMFUfic4DgOaE+wKSOOZZOHEUKnLIAtrefelxUvBi0z1PmW9iUdTwyQffwZf6PjF2
	 4feFUF4YOfJ1hx0rRVIUQaPF0MA1qOFTWpjWqs6th+Br1LivPH/vW/Esi/dBG0/XDC
	 cfT5Z1FBZywBoYUXYP/Ec1PpsmYfjDwJVo/yXTJGiEBmoBRtwSeYVkoV9WVpFR5Dyf
	 J5xzmPnXJ6RrkYVPoI1Jv9bvMm+zDMx0ZaILL1s2FqEbys3sF1NSk9//DCQRKsCN87
	 IPCKgiIazifWQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98F16C0218F
	for <ddprobe@lists.linux.dev>; Tue,  4 Feb 2025 07:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173865575361.21678.15237462288838572294.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f1c189c5b3aa6cd426e14ac1c8335e31ac68c977dc7c880fb5c4baeab1e95c51
Date: Tue, 04 Feb 2025 07:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738655753
