Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 181EB35C1B6
	for <ddprobe@lists.linux.dev>; Mon, 11 May 2026 11:00:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778497234; cv=none; b=BB+G1QQdIaWgNHyc0ilYUAMH04sg9mk1AiAjdCInMPJIWNztwRfppyAmP1nNZSfb9vpu5obW2gAroS6KnEIeZbwf8JpcfRJU+h1uQvFEgTn+pRn+tOj7Fj0jKo9zHkkBbsqS+AjEytRXx6nBaEzm76lWmRhrvZDkNoS6+xgUtyU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778497234; c=relaxed/simple;
	bh=zElbaYQ/ZZiiFXupe9zYyQO5pc/lt560UfQLYEL/Lio=;
	h=To:Subject:From:Message-Id:Date; b=eLE5gdN60x4CkJEi3sOn+EvF/9SLCpKoT7UUtqe6yJCNItZHymWL0xXFU656EUEdQYCBtND0ZWWL9fD/p47o57m/oS7VT0i/i8abO4SphfMPgCMr+XRCHmd32u/2LgQ8BFog3qCzRdnvldsAF7sr/joKYF7yl5+hOdI+DrVaQGM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=e17wVqHB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="e17wVqHB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA5CDC2BCB0
	for <ddprobe@lists.linux.dev>; Mon, 11 May 2026 11:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778497233;
	bh=zElbaYQ/ZZiiFXupe9zYyQO5pc/lt560UfQLYEL/Lio=;
	h=To:Subject:From:Date:From;
	b=e17wVqHB+vuHgate42o4Ci2cIDAktR5mp2JnerSeUJemKpawlrNI4XnhOIUcWU8ev
	 RRHeQFSmLBS8+GJOie5U2gaXcPcm8vccJwDxQ6OR+uCJwZw8rKxU0PbgBIgPwmA33h
	 AadTkMnh0WhnEzQyCe94y/oxS4Fg3PZKaMY2PFuAkYeOJduXkMaOrNjaPS2QQ4AE54
	 WGyg60rXNDwIxGV9KpBsHUlBhxf8xpqNXLG5W8xg87ZNF/+qX1Iozg7oJabr+UU543
	 OuZwT23SrmQH4I54eZVD/7nxEXXJVNAHzyhuq/bmrf65we94qdGxFYYaROIXHJKEW1
	 ao4EYz70c8S/w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA7BACD37B5
	for <ddprobe@lists.linux.dev>; Mon, 11 May 2026 11:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177849723368.18196.1093776349090008955.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 34fd12135ce2c72c01c67b442b7589eefc53b51d6af2d6b726decffc58f5d47d
Date: Mon, 11 May 2026 11:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778497233
