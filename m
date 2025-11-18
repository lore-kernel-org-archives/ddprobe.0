Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5F5CB285CA4
	for <ddprobe@lists.linux.dev>; Tue, 18 Nov 2025 04:41:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763440914; cv=none; b=T/TCPNJUkQtEcuc1J4rWSxWsAJ2Hmg9R+MOQk6dzmyiNy3hIEtKYWUev7rqz7cXurP6lHiZq4bt2s+lmkS42c5FEP3R9Mbe0ayaCrW/u5hz7vVpe5ZKuLH2M/bKulTawmOY41m6Y8BFN1c9cmKatPI4RMKLeIlyperJrZe8rlaw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763440914; c=relaxed/simple;
	bh=heYxSA5WZ0/ylui5JkApcwL04obE6jw6/S9KTaWmOOc=;
	h=To:Subject:From:Message-Id:Date; b=NKsQ0BbNkHNaHRNilrwuJ9fJsFET2a3V0Z9t3hTiynTQUuAgOFqNz++5V3IspmEinI6i0R/YIOmFcI+0LpsJ4VGkulFkzd43Rnqmw6WTeQhfYZFWqNtWJHCfpqwgNbc57N8VkCbTQ3hoZD2ed0Q5nXfxoM9n2bOq+gwDkbOulvQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PaXlsbDA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PaXlsbDA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DB3EFC4CEF1
	for <ddprobe@lists.linux.dev>; Tue, 18 Nov 2025 04:41:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763440913;
	bh=heYxSA5WZ0/ylui5JkApcwL04obE6jw6/S9KTaWmOOc=;
	h=To:Subject:From:Date:From;
	b=PaXlsbDA/59uAuiYoClEaz2E8tJlSCrHiWDFY0+QDvCWTTr0nShDdIiJds40eDaRL
	 f0xqP/C4TgrnbxDA5tnbbF/nVQy+PWvyt5Gmvq8/UnP0IjOmKPsTYUFBQM9wYsqr1F
	 70TR8/EqMYMPKRA9v0TmzEHT4GeJnCxNYvgekPD/aHdCWheCR8IEG20ztJs5M/FnAq
	 SdTBp3yU9c7XnFwjjJPW2RzoHgSDyaJKXBiUY6T2YiD+1XWnwRuoHK21kwUDI94ALS
	 OrvWq1EDgxmyXf8w/A/ENNgljg0Fyx9CqVBVLjpb0di/0tNz/OUl1F2iFei2qkWmRa
	 X+xvqs7gD9ZVg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98123CCD19A
	for <ddprobe@lists.linux.dev>; Tue, 18 Nov 2025 04:41:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176344091360.14400.7076080445607173242.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 16b63ea9c983aba7c5e3ec156639235a60e6827974f1d381687e2d9e2afcd5ae
Date: Tue, 18 Nov 2025 04:41:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763440913
