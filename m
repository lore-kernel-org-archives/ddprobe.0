Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 699605660
	for <ddprobe@lists.linux.dev>; Sat, 29 Jun 2024 14:44:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719672263; cv=none; b=glUq2bSqgC7KfUvHefVjB0R9g4IBN1XFKhTnckr0A2NqFYn2OC5nqGYIo9A55pxTdnEiXUE77pCN3HW+ETPl00UK4W+D0KiHnePtg+oHQF9adEppPIkjcAj49k/IBTbCTWd6GmrCg+Kii1wcQ4TYnEY4XYGZ8MbLMIrdKInd8Z0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719672263; c=relaxed/simple;
	bh=RiCpi9IjGUGKeKm8ePDeKfrvqTIH4G5yQI65NnPeqbE=;
	h=To:Subject:From:Message-Id:Date; b=QqPDol/Wq97S+6m02hA8uqn9gWzUaspXDvFm5nOEs6J1Tf3xOY+0vNJ2K70McB9O8G+I3xppV2TMyYIWO1UIgtfhIZXOlNvJz+dfZZV7+ik+lQ9TKAWGEzy3dzMOvEACsyEqGHFpXmcnx2EENqlnl3MTDQeANtS4QeCu0yUqKTs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=V1L6GgyI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="V1L6GgyI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DF6DBC2BBFC
	for <ddprobe@lists.linux.dev>; Sat, 29 Jun 2024 14:44:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719672262;
	bh=RiCpi9IjGUGKeKm8ePDeKfrvqTIH4G5yQI65NnPeqbE=;
	h=To:Subject:From:Date:From;
	b=V1L6GgyIcSF2JK2Rn3lPZ2LYq2iWsrn6RSEQkCKfBAZ1Fdm4xtsfRPIz1SG6J33+3
	 bLggZjtxSSQSg/IDNGmuW2+vZJQ0yx7wbAiZqnIUJ6xocvRrlkVVzcmV+zOLS1rpTJ
	 BpoOvfhBb+b9xSjh4l99VDnSvodjgo10odtQbVhRU832FrH6L4DZeJSCfMw3ZNKqNN
	 mpw3Ohn7II2MSIUfHtCp2ehKol6C2yhJLDNJ1RMrnZCDSszd7OQyjiMmPRqYjN5Aoy
	 ybkByVihQzmt/ztbHigxaoTJjRgmOrlqxvMQK+CT+HxGQQkZuA/cBFTZ9W3xa+X5c4
	 6RQTfoq0OomoQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CD1D3C27C4F
	for <ddprobe@lists.linux.dev>; Sat, 29 Jun 2024 14:44:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171967226280.3307.9372778276783434286.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4f623f6daa21698bb80ba33d7a3b1379da8dc64b5948b694f2bfebf95b0cf9b2
Date: Sat, 29 Jun 2024 14:44:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719672262
