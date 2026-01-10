Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FA6233DEF7
	for <ddprobe@lists.linux.dev>; Sat, 10 Jan 2026 11:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768045434; cv=none; b=KJPSSxPpv5h7aHY2r0q06h1F6xb7Tqglc6jKYlTYxbEWDJ+zv9F5VRPyLRcRa1YdrSzIaSbqwI3bVWrXLTmdyoXwUpG7bd4nBpDF78yrN71LRi4NVNG3eMg4HH/U5tPK8gqV7AAxPJrxsLLK8we7WpxjQaVevZEUEKMuxgeA4Mo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768045434; c=relaxed/simple;
	bh=Qz/zUCDHcs8rFy2V+nEprmY4PAAWYenFizuPveUL0g0=;
	h=To:Subject:From:Message-Id:Date; b=QvPxV4xq+2l9mvJjveVURxDFr6z/CJUD+pXfd7mw5h2OdDi5njzX9jqIbapNCntyjymCh6FatrDrC+D6ttD65onFoZDcu29wpA/jm7KDEzoBz0V9raNgZgMBVjSStKeI9U8w0gjkFDjwtCDSUeNhwFlKoB7bseH1XGPyiKL5Cu8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pp0M6il5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pp0M6il5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5D15C4CEF1
	for <ddprobe@lists.linux.dev>; Sat, 10 Jan 2026 11:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768045433;
	bh=Qz/zUCDHcs8rFy2V+nEprmY4PAAWYenFizuPveUL0g0=;
	h=To:Subject:From:Date:From;
	b=pp0M6il5I4Wn97EFlh8+2aVDOvWGyCaNdpGYJ4nWcFtgH4b/7U6GttbPkeQ4FtGQe
	 Z9n3ezKDD/Yg/I3koYKwSUCOc90u1cc1CaDJp+LfRNOzvdmiiw1Jf9y9t1F+bvhTpx
	 StdDSuicbg7OeFpLaNdaKfGvJH8cxT8Q8GR/H178BYPGIXknVIEHoKZqX6tUdjWaI/
	 2PZVF4pRd/XoJlxTRTLAgTieXAVUwhIwg1LbXpKXu81N8/pJZeVnpVW+wvsGS0Jo4Y
	 DsIEAoL3jRS7mdldATr/NornlX6bWw3wurija3xxi/SVetmMaE4ycCSZWD53KKaj/x
	 2Z/NFqyLTqDyw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92424D277D9
	for <ddprobe@lists.linux.dev>; Sat, 10 Jan 2026 11:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176804543357.20370.4549173139544512554.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c248dee7312fc40fcbf48f91e1485e731e314b293f2a3496812756d6f9559452
Date: Sat, 10 Jan 2026 11:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768045433
