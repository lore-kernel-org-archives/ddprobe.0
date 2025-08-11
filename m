Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 17E8C246783
	for <ddprobe@lists.linux.dev>; Mon, 11 Aug 2025 16:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754931594; cv=none; b=e2h3HtQByo1RSF7mgy2yuGf2RDDncUKn3GLn6GrggEa4BmcBCWFbjpze0dNfItlwjRsbcFM/HGsxhJC7DoZJmiUqUjgcEsP4guml5oNwVj9Kv6HCAoRmaOTq5lcZWnbw99HWAlBpcCyOJ1G46PmwcoSVdPnirnI8AeUpAuS1GaY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754931594; c=relaxed/simple;
	bh=GNkVG87zyohQRGHCsa51DJWjGReV23OpDJaQOECzFgw=;
	h=To:Subject:From:Message-Id:Date; b=eTyF7pzotjBwPRF25f5vwIJJbrot55ttkEZTamWV+TCq45/EgPkPtXgdkC5jcTg0mMPfOkOGfLEAUxC5oQ94JPU9aiipz+kMW+Zt87ZKBLUI3Smn8NqkD6KxQyVedUmCUNU8gcC3c0St+Dzesn+k0hjGzScMQTjDFXfoPOC47lA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZU+xGSE3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZU+xGSE3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D279C4CEED
	for <ddprobe@lists.linux.dev>; Mon, 11 Aug 2025 16:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754931593;
	bh=GNkVG87zyohQRGHCsa51DJWjGReV23OpDJaQOECzFgw=;
	h=To:Subject:From:Date:From;
	b=ZU+xGSE3RZWACLJbWcWYCFn2589bVBF8hO9R3d9+L4wvpFbFtj5jHY3X6FA1yx01F
	 yD28J1jXIk1YigjKhK0PAHBpcRQqy1tWCRP3Ep7pn02ME8+GTBwhDB24hWdC1xesQ8
	 6eXbOJ0uQ1wia0pM/kYG13QPxmdnyqxosDgganls/tPW/wiT0aky2f6jHhhdyyiFES
	 Rg2y6bjTgioXKBZOcmb242fvVnC59sFT3VeGyKJwWCHgS8YokM+ILKbHEFOwe0ZrNG
	 2amwLnWRTHM9obPvgWcj8cFIvUr//xMtGEmRmXb+HvtqLdLa8N/GMHYsGu4dY7gRow
	 CaKoOkPhE5zgQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8ED3BCA0ED1
	for <ddprobe@lists.linux.dev>; Mon, 11 Aug 2025 16:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175493159357.7826.1886498340130809616.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bd7629c4a3570a6988471e6028f78bf2b16070acb5da205f573ef655f15fa3f0
Date: Mon, 11 Aug 2025 16:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754931593
