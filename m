Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 745D1440627
	for <ddprobe@lists.linux.dev>; Thu, 20 Aug 2026 01:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787189434; cv=none; b=POHMTJsadP1lM+uvqmoxehIhKlKa40kKYPo6rlCxNGFVwxaETxqMx24RGk3uAq9om5UqgrnJXPdBiYQ2T+pm/AUstsG8I3F9zcyQcQ0j82KJds7z26k0U2tByh85EDIGSuUPdpSzmaMr7tPd8CQmF6/C5TVocS05ZkOz1v3z94Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787189434; c=relaxed/simple;
	bh=5oZX7Rbdloz6X5Q3j+e2zICRlV0MR+vLKgSxes4sH0c=;
	h=To:Subject:From:Message-Id:Date; b=CoRqK7IWKgSLJndFPLGFv+8XhObjJVhsp2cr+ZtGMtC8ODYI2irPrSzA8zxgWyc7fTe+AP16wTOmMeSTEf3i1aOIWlGUAofvFuH2EOGtcazfWTBonPzph4qdkgY+tIyUvnyApRKoqqOeF4G0xjH+aHyc6fASKbIHZp4fdNzg22k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=o67psnoH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="o67psnoH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 025A9C19425
	for <ddprobe@lists.linux.dev>; Thu, 20 Aug 2026 01:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787189434;
	bh=5oZX7Rbdloz6X5Q3j+e2zICRlV0MR+vLKgSxes4sH0c=;
	h=To:Subject:From:Date:From;
	b=o67psnoHZkkpvSDz+0fTP+PF9g2MLznybIVzZlZxeLLOGdm1IRVOuhDHhI6/loHaR
	 9vFhtA+m+TTbwuABhYqTU4bALFhX5pwlG0t57Rc1w8gNBfX8Sk1zehLbNcWDd/XQ9n
	 HxLRDpP/FV55hg5lFlA6E+6Yto+cFr+LA+ecj8C02Z6AT+QS73Zibewpuf5DwxNhCl
	 qvghQddbroV03v62JUQWn+wwg6ucIr1xZtmSLTx+Zgu3RZAMO42DEJu+1SKiaoFbcs
	 5EDoXFJwWsjNOIT/oEO1UbLxd6kpg9/l8Y2QKzK4B6C5aZYu03yHm2amTHjMkoKAes
	 /BkXmnktD3S2g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B99B4C5DF88
	for <ddprobe@lists.linux.dev>; Thu, 20 Aug 2026 01:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178718943374.31575.10209591178274939482.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3fed2dd91a362a17a3c5a9ed1e735ecae5750413ae8da65ac58d6fc408217b1b
Date: Thu, 20 Aug 2026 01:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787189433
