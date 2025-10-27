Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D055C258EF6
	for <ddprobe@lists.linux.dev>; Mon, 27 Oct 2025 12:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761569993; cv=none; b=DGsodayIsZ8KMtQPOInMxFWHAwYx9zRTdNBbK9wpYJikhZCmvr9RElaVGrSRF5+DBRuOH24K6K68WCw0dml7+pv/oKr6IwOLUVGf0tJjcYeO7X0ZNFwaqCb7XufQfMAm2Sv6DfE4zvwuheq/G8ZpNlX/JAZv/wjV2v5i6xg2QRY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761569993; c=relaxed/simple;
	bh=mSOFFtjTlI8nTQr6a3fyzxeIEhRETdvjZ0hJImkKw50=;
	h=To:Subject:From:Message-Id:Date; b=p3KAmHqQMQq75VnlzCzCN1CJCWUraWpudepLEoPCCAlaG+AH+VTFYkQDCqPmBNwfbjjsZJYOdiwDYnTRKN8kk2CgzaCU108SDJZUi55gz6hk9DnTbt2OMHtXt4AKzqFLeIZkkqEs83oLcZOX/OWSszhTwDjTuRYvIqy49w4wqmI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hxkXwqRd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hxkXwqRd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2DA9C4CEF1
	for <ddprobe@lists.linux.dev>; Mon, 27 Oct 2025 12:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761569993;
	bh=mSOFFtjTlI8nTQr6a3fyzxeIEhRETdvjZ0hJImkKw50=;
	h=To:Subject:From:Date:From;
	b=hxkXwqRdICks0S2Za09hk+wwjngviEu1bOcXc0PPM6yrK4s+XrIzHQ+ZwihjrcwbG
	 v5Uhi6B7jf0XNqv5mU4NNcBJKSe+ANzxJMptRxxmn/a1XpDoHfbEgSnranOBOn33Zk
	 UtK1RYGYcLId0qt/mW3KuVI0qbH29HCavAMRLYudkt4aW/OWFvG+stIMCgJ7FblgVB
	 WaT48pzTaLuzEGk6hzO9Kbt5voZI+Ctont8n1wjdjlvBXWHopZ+DtySo3ye66ngBxX
	 +C2vFAZpjRbU3vKOTXy9/P+hMaN6th+AAh8ooQP7ukF0nQcc9AzZHjazRPft0VvbY5
	 hdmmxpwI0iCvQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A05BCCCF9E5
	for <ddprobe@lists.linux.dev>; Mon, 27 Oct 2025 12:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176156999364.10195.602683856888501722.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c896f723337a44ecce2beb3c6d62538d61150884ef074539ad65f9af8f8432c8
Date: Mon, 27 Oct 2025 12:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761569993
