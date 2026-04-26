Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2628D2C0F6D
	for <ddprobe@lists.linux.dev>; Sun, 26 Apr 2026 09:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777196854; cv=none; b=s1Rf30AxMbkvwdjyB3A7Et2bhaZSUocUcoZdlxfCQclo70Cx1WFkXlmHUdEevyuswHxKgCLBIvTkpSknSu6SmmDvNXaANtIR4Ivm+bq6isWFZxVZjKcTbZzo5bapgIncwnl80mn2Ij5C3q+JrayzaMbe42Xz68E3RJndUwIgM3o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777196854; c=relaxed/simple;
	bh=6nq/N0MGRlR6dp39b/hTw8VKmJd5RfNB5My0KaYcHck=;
	h=To:Subject:From:Message-Id:Date; b=Lah3cDneti0q+PiyTf1qMSpQbp1e/tZCFdK+qMT1UguoClG1YkbhaOzTcSYVBEBF36KicrAmJExof7DQzE1LwYhCHOqnQkwq411HRx6Awuds8wElWzMsN40an4oEWP7INVse4CI88w8ONAihBR79Zcwk5Nvvi+veCGuD6zAIEJE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Dbv7pSV/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Dbv7pSV/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BE3DBC2BCAF
	for <ddprobe@lists.linux.dev>; Sun, 26 Apr 2026 09:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777196853;
	bh=6nq/N0MGRlR6dp39b/hTw8VKmJd5RfNB5My0KaYcHck=;
	h=To:Subject:From:Date:From;
	b=Dbv7pSV/OiNpFHlxqwgrRTn3ZmgF5WOzn0+3xGeEt4Kh48A7tiKGDZ2RMrDb0emcL
	 wvIndg6th7wSbJRhVzBZdkYXNn8mgSMtJY2WpEbc8jIjBDpM00yJhh0RB6Rm04icIa
	 cIPuZ61aGkFCqaJuWy2S9Z1hFMrBTU+edhDj+MtOQH86siRlLtNrntISXLsrgRQJK4
	 R+lNGRvtoDRtsXF3H2FP8KALjuXDFecDgZ34uIlQ6nsIyzEQxNVXjT+cTf5/Dk1lFp
	 7Bm9bUWqMeQEXtIFeC3etg8vqw15j61XJzqxAT0B0cUGs/ekliD9ZG9SIS580FNNlK
	 x5tH4GPLBtszA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC65BFF885C
	for <ddprobe@lists.linux.dev>; Sun, 26 Apr 2026 09:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177719685368.16535.8327346885795924951.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d70a50efa07cf15a4123a7dda292d64daef593dad3548d3ac9a7139cb22041b5
Date: Sun, 26 Apr 2026 09:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777196853
