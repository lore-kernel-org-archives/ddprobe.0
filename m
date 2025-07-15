Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 229EA26AD9
	for <ddprobe@lists.linux.dev>; Tue, 15 Jul 2025 21:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752616194; cv=none; b=YWm0mctKallUPnZNpm4VID0ITlBfxoljSaQwwoU+Jw7s3M0JUhKkIBZsvjemNuCQDfWxERxzaUkSJs7iajSKGN80OpsDh6oIalrX/5gDCRIl7UNWiBbXctmImxL5r/S2ghkqz1EXuZ9VHABU0SZOa0vRGSZBBhrNB1F9QJMcpq0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752616194; c=relaxed/simple;
	bh=qZUTg6vVQQEvXUeFbHcEen1+i3u8LTs2uZDDQRW7dps=;
	h=To:Subject:From:Message-Id:Date; b=j/JLq5uimXsIODLbpgpqYQNAezGNMmRQ7hv2JjgeE08y/sghEb8Vz9Bfvrkr6R8AuOt4utlukDgENZ7MHzd903tkIUdIRlyUxYnS5aRPptCohMrzr3a3aSt+XPONHRyeMFZOfjQ1pIiCVg7+rgvH1bG6eu7iWqArhldWUO09Wzk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qGCi489Q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qGCi489Q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E759C4CEF5
	for <ddprobe@lists.linux.dev>; Tue, 15 Jul 2025 21:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752616193;
	bh=qZUTg6vVQQEvXUeFbHcEen1+i3u8LTs2uZDDQRW7dps=;
	h=To:Subject:From:Date:From;
	b=qGCi489QJf4ePyjwZXeyHkO79r/27VNaHLuAK3FB0g236ZwSFXZBgev5Ay39s6nzZ
	 qj1vVoneGy/AkFU/2ME7zYCbzWGUT/EvFPwdD2NZodr9JlBJSqwo9fD2NvEMl7IEDB
	 1f8+h4ghzEIfl6tvfH4bTOlUoQMNQkQPnK5uWkFrdgusqOblansgwfXQaijd2Dvz/h
	 n370r/cI8F92H14RiXzVcRR04bEQjHKPKd9QClzRsaa28UxX4tx8/ZCNbQ8MMP1V23
	 WWwWRpOWcMRB16NdWKVWNBM07woW7SpcdrexKKVo7te3/hE5V+/eN5LArCd2vteBxc
	 7uAw4Yd1g/bQg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EE7AC83F27
	for <ddprobe@lists.linux.dev>; Tue, 15 Jul 2025 21:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175261619357.30171.9249167708801273400.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e5ba93034c1c1a41c1cf5e8a3c84e4b4bb0f8996d447e5003c485ab1d9371e37
Date: Tue, 15 Jul 2025 21:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752616193
