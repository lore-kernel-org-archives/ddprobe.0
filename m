Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3750F1ACED5
	for <ddprobe@lists.linux.dev>; Thu, 25 Sep 2025 05:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758776994; cv=none; b=PildK26JpTRXTtYaYlGmWHz9M8Qi7RmjsuzSrWR8zlzAX2BkvNI+tYOIWedZ3U9p+LrFb+UNoCBIFbYituantzIF/RaigxScmuDrhi2f60Jra8WhpzD2MLuklQyQflsLINIqa2epOUp6bru0pJb6j9mXelyGeBWMCStVO9Q3OPw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758776994; c=relaxed/simple;
	bh=CY9SePlAXx/+wGJHOKkIRxUd0LfRc9P6a2hW0abt1V8=;
	h=To:Subject:From:Message-Id:Date; b=GTs9NoMck/oEng1YxAeHZwaIjUPkQMuMW3cK/wAr/5bvIjJWV1Rrr9K/kIQvGfAzHB8Ioh4omi3u8X1dNWAE9dei/Hi/z0hJcxEIXjaJNvtgnlJIxNZbfUVI1YF+UhdWiS8lJSSC1iv98eJb8L5KQx3nRxpurYIKWu2cw+K8zKs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hFIkLRI0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hFIkLRI0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5138C4CEF7
	for <ddprobe@lists.linux.dev>; Thu, 25 Sep 2025 05:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758776993;
	bh=CY9SePlAXx/+wGJHOKkIRxUd0LfRc9P6a2hW0abt1V8=;
	h=To:Subject:From:Date:From;
	b=hFIkLRI0F/iNPHlNomOGFCxm+2Ryl2sHBpcDqelNpOLSi02t8/uzSwoxUzWLXfdkz
	 cLP/Q5MxCXd67tmYzRUC8D8DniHYkMT0sZnvUWahw7RpN1SRBHghTVXi7xFpTns4nw
	 4UjwTK1Dnai+20RnlusJl0Gyv/yw5IbmuaGiIJ1zIsi8WGWKebOU7wk4gxLaMRv20h
	 ET0xHKzm3EQBZpr4841dMr1pfeJKlFy7k1CD3vn4XRWaXnrBoQjrv/NrrR5B+rcxdv
	 1Ra7UfQ33pZwXBkP5tf30eETQh2Rwc8LeqP1N0cR52UTgzgNKMwoX72bJl4pHfe+CQ
	 TsdjYQE1JnwpA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92D59CAC5A5
	for <ddprobe@lists.linux.dev>; Thu, 25 Sep 2025 05:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175877699358.30217.8739162824429793872.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f2e30b2b1862d72217355be01f7198735902f3e4a562ddf3458c2d82bb357d32
Date: Thu, 25 Sep 2025 05:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758776993
