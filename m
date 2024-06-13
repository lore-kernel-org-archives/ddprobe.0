Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 777C957C8D
	for <ddprobe@lists.linux.dev>; Thu, 13 Jun 2024 20:08:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718309303; cv=none; b=aMK59eSi2Nzjdqtui93U/evd/bf/waO9ayZOIo+dSdAsKmGVDEocnYOHUDTg081reTFKGm7N+eqtPUo5fUR/WX9yb4VZu3C/v23ilpE3z3qWNfuVGU7cL6SXeKZgZpxVAM3d2r7DUXaBfCYZ17I4wTU6tWzc0GdilPP287fkdUc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718309303; c=relaxed/simple;
	bh=sSv9cp1ZmcjD7MqBzcK7Q3v20r9+Bui86w3yOrUB/a0=;
	h=To:Subject:From:Message-Id:Date; b=MvzEW+icb27hq/zoTLemBCIVlUPMzglYWh86+KAeUVbZ6xtGoXzZSh0FGH9yn+0KEjV4NNxA6krTtsiRgv95VfJ4dlFqerp5V5Zo7OPxMtfskVJSZXROki9HDP1rpHkmyNfW/YJ55R6S9uLdwTxMuAJ7MdDEcxgyrRx6OrRHguA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hbHwh8v0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hbHwh8v0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 010E0C2BBFC
	for <ddprobe@lists.linux.dev>; Thu, 13 Jun 2024 20:08:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718309303;
	bh=sSv9cp1ZmcjD7MqBzcK7Q3v20r9+Bui86w3yOrUB/a0=;
	h=To:Subject:From:Date:From;
	b=hbHwh8v0MVsZlwvVas+GUWy8IiYTYctIIJA4L3XntOXPLWYeA1RJ71bK5ZHKVYzxn
	 L/eQoiPFntniEiny+NfbuDV4akHIKibVdcKWpRiR+ay4N6qwgiun0mm2KIwns40bgV
	 xnXllEneOEgk0zxe/6ARe9pUlYDdDx0FgD8cFxJPOzuD7sRTPzPfFplEnENY2KWAGa
	 GKYFbwIy+Tto7Eicm9h1HYvgx0kXCW/YT7D1eXhMRzb4cj7xGcbS1KbOHm9R9JqvQq
	 dOZtVh7tbhJwOJ38PYSAUWxsin0g/PZF4dFH3utEYTuflMkAZ0Qmope/JgUkAbdPev
	 nmL4JlTya0bZw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DD22EC27C4F
	for <ddprobe@lists.linux.dev>; Thu, 13 Jun 2024 20:08:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171830930289.16058.402321268802330728.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e03f774243b7c809efc0fe7793d851228e74c737097bc7cb6411b210986aaaef
Date: Thu, 13 Jun 2024 20:08:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718309302
