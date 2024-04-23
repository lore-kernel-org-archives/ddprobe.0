Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4787C28E8
	for <ddprobe@lists.linux.dev>; Tue, 23 Apr 2024 03:00:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713841223; cv=none; b=cMdtxNCVvh0WXwKwdiJ7NK7evOyBoLHfXy4jdjVb/cVe4cIPCPGVTU7DeNZLaDdoKYMr0PUnnTVVtYRpMYnbBArChS/a9bA4wLLF8YtJHAvyIYLbL56ai0uN9gIXzpAenGeL+j1BP+jVISEg7OwELtLMGshDzkB0tKoGL91i7Hw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713841223; c=relaxed/simple;
	bh=s195bXilNQ8hC/qxR23DuEMVMLZ4Oz/TpC9W/6KhZp0=;
	h=To:Subject:From:Message-Id:Date; b=KV4IXON1k02bEKBGl0VoINdRBZearAhWNJ9JBEguwWtBkNa7tbIkLJhDcIIQ7139qtr5MlSmGzD724T1xa3p7uhaGMk1TVnpNdvFyC1QUwn3dR6B6y3nA6CAQFmRN4hSc/YTWoMuYjMcdZA3BgyiWeoQNHPWK3+fQ3t5az1/NXs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=s8KX/ju7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="s8KX/ju7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CDFF9C113CC
	for <ddprobe@lists.linux.dev>; Tue, 23 Apr 2024 03:00:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713841222;
	bh=s195bXilNQ8hC/qxR23DuEMVMLZ4Oz/TpC9W/6KhZp0=;
	h=To:Subject:From:Date:From;
	b=s8KX/ju7M3D+sxF5Ifgr3qK0kOOumGs9COZAtegWBWdCBB1HzbfVc8ZPAkJTIVB7C
	 cLWLoRSq1Zh0iIgRjecDhF2a7QDDpjDBpqedk3MpUdgzDCAfnbIJHBOlVaFgdcoCY7
	 rh9h01J9DIdSj7lQpokNYDVUnYP1SQ0nT8mqXpSsK9AjkV5yDPk0pzUNj2xVF12Uca
	 fhyVXGe+aXmTyZGDKtMQbUFhj+XcoMF4F789uVJTcBfVOfiO7Tp2tie6y2LIx3n3ON
	 T3EyLbDNLy83iXiBuC9EkQFeexOVKsrz9Fa4lKb698nVRtSDg8PJ31+xft0I1GB0G4
	 GvloaT8vXcCZA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BD716C4345F
	for <ddprobe@lists.linux.dev>; Tue, 23 Apr 2024 03:00:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171384122276.22338.9571125137788289239.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0710e7440a4e9a88b0ee03aed6482c03162d979d899f5784cc4f06a2b8bd129d
Date: Tue, 23 Apr 2024 03:00:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713841222
