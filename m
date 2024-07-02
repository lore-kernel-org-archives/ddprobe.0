Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 50BBC16D316
	for <ddprobe@lists.linux.dev>; Tue,  2 Jul 2024 12:45:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719924323; cv=none; b=r2FLck50lKdlpGCI5bNyqSl7ZRlwl1dLYnEv5M4iIXR0bUN2/qctKW2VOPhgnzphDyHNhy+CjOn4FgZamoYhQx9ECwg3RvAal5WhlPpksvK8xCnJZ7Ynoezq9OdM6X8dUk/N5ye6p183gYzybL0WATgnTqoIQMspph/V3lpaPbs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719924323; c=relaxed/simple;
	bh=2Emt5YHH3Zw9p48baHkax+K+wfQQLYEs7c452wL8bx0=;
	h=To:Subject:From:Message-Id:Date; b=las67ZTWdIxyhJOhIdDFK62JJ8onlccYiRWFke5mCo/vmv99QRdSieQxfg0q6nDEqtkGHwFUq44zcaezCYKyn1ixm/KrpK06+fscqjMQZe1gMzRjIV/UalXQbEekpGZ9WGU+Pq9hmLLp1q1EAYU++D6PUGwoIOU3Bgd4qZIi33w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BVrDOAtS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BVrDOAtS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9F78C116B1
	for <ddprobe@lists.linux.dev>; Tue,  2 Jul 2024 12:45:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719924322;
	bh=2Emt5YHH3Zw9p48baHkax+K+wfQQLYEs7c452wL8bx0=;
	h=To:Subject:From:Date:From;
	b=BVrDOAtSQvSwB7euLCeqggUhydYhaFyIVxiHU0dOEz9e2S3e8E8DPoTVKP/Iz+HZz
	 Jc4eQ649BogYTL5sYFFS20XVciIoRVge0jWiDf+5/aH0LCcHEDY6FV/XXunjreYfCf
	 7xBGGNFCIVe7X1eI3N0HtZrpUdNTjIehrXPN23H0peUELv1tD5W8xvswjQaY4VkP3t
	 ZUndJ4QWxWQ4xIxTIaGmOxRYGXCPeGQ/gfT22z2eaoQfjJzYKWykey+yJj4q72/WZd
	 AYfJud3Xho6YbEmHWHR0qmQCpOzAv0cIgv8MZSElXcUEH2nD3IuKmGIjCqTjumIkCG
	 SFWO0xPGYz8CQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C6699C3064D
	for <ddprobe@lists.linux.dev>; Tue,  2 Jul 2024 12:45:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171992432280.16575.5356605976079331495.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7565e9bcfc91a64e88a4c2f15c13b106580353ca71d7538e3d3a7b4656d66edf
Date: Tue, 02 Jul 2024 12:45:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719924322
