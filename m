Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EAF461A9FA3
	for <ddprobe@lists.linux.dev>; Tue,  9 Sep 2025 01:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757380794; cv=none; b=pSvKhQk/p0lLgoxTHUqzC1NoA7SVpw2l1dMhFco8WftKZWh8D8K6NusGAZ50xhgun4b//xDfAVzRA0t9WrR1N2JI8QtN5tS1gMByOGu6QG9Gtu9pQaqkte/srd/ekj3m0N8bEuejYgoiHvpyX5j9D1BzgU9+GAS6D3u9aiHPMUM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757380794; c=relaxed/simple;
	bh=fFwTtyjCo+w/mwDQRHo7IedEfpAodU+NR99zzk9zajw=;
	h=To:Subject:From:Message-Id:Date; b=n7y/6wBhGNYULN49FrMgLDaj0HVJ4BqqfwiSPPvQw6QJh7QTXcAFSLsl7ZHyBdnMNeYNOrNh4yhU1CCs4dSdb6nHiIkffvMMg66GZdAWaFzrEWcvBBzzlV2FSvM8jXKjyaiYaL7gYxpHXzZ16WSlL1Cnz3eRBuX0SR3mKvatyvo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ebuq7zaR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ebuq7zaR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9751CC4CEF1
	for <ddprobe@lists.linux.dev>; Tue,  9 Sep 2025 01:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757380793;
	bh=fFwTtyjCo+w/mwDQRHo7IedEfpAodU+NR99zzk9zajw=;
	h=To:Subject:From:Date:From;
	b=Ebuq7zaROfQf77jbdBm0T7eFLC9BvL5X27uapp8uYnZPtdj6EqvjC5/rJwFynNrRJ
	 wdrykA97536DxahHCcEsr995TKaJg/cWZ5sorZxhy+84ioyGcU1yIa8csVi34M27RA
	 XpQnMGOnKWQcKbEo5ThLq9DYjwd0xhqU/s25k4UZPMK54gxw7fmbPLgVRuSfqqKgTl
	 lDosbu9eHhndWgtJeDFhGK4xlZ0nTAI78MfL370Q86UZzg0P/tGobQFyWHmNNXh8zN
	 56eIta9of1tQrdnTNqsVgfm2tpQKKDIMgtMOVtBPUHpOTTjwNavxLjbkiXb9NzrxKo
	 RXuwfGR0H88JA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E506CAC581
	for <ddprobe@lists.linux.dev>; Tue,  9 Sep 2025 01:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175738079357.18690.6526758396080968077.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 735084c3f8669eac9f70865b477fa2f70bd85eb2e7e4e31d5b9908571a99ae9e
Date: Tue, 09 Sep 2025 01:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757380793
