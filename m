Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D3BE1C2AA
	for <ddprobe@lists.linux.dev>; Sun, 29 Mar 2026 00:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774742694; cv=none; b=rtftsG92nQBFUyiDmL/3WnbmGM8PW1UTUgaek2+eKc4v/5q1Dq5ncQEPeveX6Gvsfw1m0vDtBufpZgdqTr0llOG38WoM+AGi5nJToO800vBQKZ1x5h36UuTqvlpIatyrqtid51KAZ/2BfsfsC4DwpZ869zioyqUqTBLG9Bq0ugk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774742694; c=relaxed/simple;
	bh=OzIZeivmZrZxwfoBFwB62ETSBiPJFP2QpTsu0sAdnqY=;
	h=To:Subject:From:Message-Id:Date; b=L/d/5+w/wxXtiBGhfnT+w9hcfJ2CDJZFk6ILrvrYTKUk836T/2wDXkrTWOEAMreoXzJeL4GflCEBJ7WtCIBoX2Fvtogw8ihqVhDnnaUFiFKyvQbw2tOojp33gZSLIfUAyui5s1jObm0wbWzdAwHk/toLLc0kJRfbr/ez7Gt/JpI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CrPDfcjw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CrPDfcjw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8BBEC4CEF7
	for <ddprobe@lists.linux.dev>; Sun, 29 Mar 2026 00:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774742693;
	bh=OzIZeivmZrZxwfoBFwB62ETSBiPJFP2QpTsu0sAdnqY=;
	h=To:Subject:From:Date:From;
	b=CrPDfcjwFo6Z6ZbQ7OmLniX0cLEuYbBI0RZam5cgZHTSVEljOhPj2/Hcl7fRfSioz
	 CBpqla8xIP8Xi8/lCNV/2kXoLUBJeEs0O0R/PNcCcTGV6K2kn3Cw9z+uASbUzDYee1
	 RFoyASJfWF659IY9TDMh5sUBdEx5Mww5F2d/4lz1/gSpheUrRiQiOT5m13PIRMSe/d
	 zRFhxxAUJqRK3+pZwPZIsUBO6rQK4ev66yE1gyMXsquCISEwQ0QEIu7BD2YWMG682H
	 /h2X1tyNJMZwpIDblv7qDNI9VNdY5t8uu8XCgWgdh7AVPFcwUXQzReRXxWag7h83g6
	 8OJaFboIRM3Yg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 965A610D1489
	for <ddprobe@lists.linux.dev>; Sun, 29 Mar 2026 00:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177474269358.5209.13609002741430458083.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 59ffe588691202c6cad80b0a5f96c5a5286d2e4d7e724d063f926be2641824f4
Date: Sun, 29 Mar 2026 00:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774742693
