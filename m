Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 51B89396D02
	for <ddprobe@lists.linux.dev>; Wed, 14 Jan 2026 12:03:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768392235; cv=none; b=fn/ROeBwJ0ISFnUjkGHP3Sn4l+Ri6lEXnrjiPZodNThEeJy8TBgZPOWgzcTkq4sbrLDHAqzhdnVtK4MmE7WS4uAveJr/xJJ+njOyMX6pS5ze7D2/nEbCJDenI2MPAPr06Ze7DqAzBfxH+vFEqRGtziqiK5V20qyGDNH5fuHJOJ4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768392235; c=relaxed/simple;
	bh=w0/R5nBSLSH4+7L0EgYUOEPg5/96UMR3eMqbQDL1RAw=;
	h=To:Subject:From:Message-Id:Date; b=V6rCLxka50WFtMaRR2HO+wVQ9vE8qMqZE8Gk0FB7EjHim17xj8QneV6QXrjJ3uHrjT05WxWG0x4EjHimvT5q4TQXlzRqMjJStBw5N/mTsJWOB4pyoxAF9FhjUIbAnzNcYG1FUYHtWUCqZueUY4ztvO/8YmeOkujK5j1xWhBT7Xo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MRV6P0Oi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MRV6P0Oi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A061EC4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 14 Jan 2026 12:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768392233;
	bh=w0/R5nBSLSH4+7L0EgYUOEPg5/96UMR3eMqbQDL1RAw=;
	h=To:Subject:From:Date:From;
	b=MRV6P0OihBnrQARvTc8Z1uH1y1CZvcqg1/ecrK/0cUTRgouYQmuQXxmaV9Bi+pYXf
	 upuxehu9i53clfoN3Exnx6oNyWMqJ+E5kxViPAVPkvE3QK4cxV6vkrKgMrvKimc/i3
	 cgnMq2BQ5BcDitExlI3CmVJ2qoDPPegxQHcv+e6/XhoUaP8yJYHHr1pgmJPSiao6n1
	 wVAWMfHsS9l5N41Hl7WrJL9VDfX9mXlGickXK2kvFGBHvW7Iq59wFUFx+D3MiNXfzU
	 gi+DMn8H4/FlKTajdBLbmMbCa/XP/HOa8jWi6WS7wpHolnIxx8mzM0QbuArDzUbYiL
	 A4G+4MFVIODag==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90ACAD29FEF
	for <ddprobe@lists.linux.dev>; Wed, 14 Jan 2026 12:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176839223358.5069.15756986297925411355.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: de32a5f7c0d30f0bc70013d8f5a0dfdb296a86c1e685dcbbbca1db26c5a458c9
Date: Wed, 14 Jan 2026 12:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768392233
