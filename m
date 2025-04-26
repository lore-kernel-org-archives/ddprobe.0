Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A8D21C5F05
	for <ddprobe@lists.linux.dev>; Sat, 26 Apr 2025 07:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745651394; cv=none; b=Bim96SaAx1obQ2SVWVgLt/aGtWrvRlSbEb7xE7Si+1mO0xR9J5x51jpmzjNQX5AZY0mZHxLAITx+0GO1sPMvqmwNLc2TG2tSKxQ3PvsEZ/X7rmuOgW630LSgdrtqMjBO8GIWT+pRZgUqYeLcmD0aT2GWjRayJuJ0RPf+hZNtNL8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745651394; c=relaxed/simple;
	bh=BxubCJLjD0mKkniLhOOJi9jBhbKpY0fZLhH5AssZkCk=;
	h=To:Subject:From:Message-Id:Date; b=KzWsWRTBveHdeLPjrSE8aSMxNCxj9eea3O/GvfhcZWJO9+yoMx+u+rNzIoB/RHoydqF+EO4KzaQPLWeaKK6SWJzk2fHBjCTW4wazd37xk9RXd6ebvltjNRiyNhDfo09gpxrJOruezOJzxXcBDJzMMLw208wCVzUi+3c7YcqAaew=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tmkcvR6B; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tmkcvR6B"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A091EC4CEE2
	for <ddprobe@lists.linux.dev>; Sat, 26 Apr 2025 07:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745651393;
	bh=BxubCJLjD0mKkniLhOOJi9jBhbKpY0fZLhH5AssZkCk=;
	h=To:Subject:From:Date:From;
	b=tmkcvR6ButYkkZoCcbny7PcTfUmvIPhI7ht/dj9/+T/EuRuBizDGqsBpny/LdyJwP
	 7Vh3k40DximZmB0wvCleUAImnz70xB1CLnUsDzpiS+PDY6QbrrlNKnCWdIIYuhQPFt
	 Di0etcViQj6KGwQb+pDkaq5SKv4v9dKXaf1CvGBNEq2dC5g72buIZvBwKeRPRKwK49
	 zQEeh1hxaS0w7aQvmBnvVu3lteJTDJgL3igcRXo0/PjZreNCOvlFUzT1F+kq8egzXt
	 m51FSgP8wFrjzTSOJp4+xNi9HWV3KmUe1Rk35jhTSTtFO8ym9ZJhlNepGaI0zdvjP0
	 vJc4MYfj6lzfQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 931BFC369CB
	for <ddprobe@lists.linux.dev>; Sat, 26 Apr 2025 07:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174565139357.4827.6525546558676654618.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 24d3b3eedaba0ef97160b08a89c4d04cb44f520a73454c27775864ad8bbb8b4d
Date: Sat, 26 Apr 2025 07:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745651393
