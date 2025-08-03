Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36BDC2E36E7
	for <ddprobe@lists.linux.dev>; Sun,  3 Aug 2025 05:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754198394; cv=none; b=tg/OMaXHHurf0YYX5Px1HI+Q3c3l5ewD+HXqolzS8NIfdrByOAGp4RQw5PmI8YM+Q8E9Rj2oIGjNcKyIWPBOdjBcrINSfa4y2hUddW5H2LSISzrRINztlzuqc2Lu4GTx1W6OcA56MPVunke4AT4O/yN4wwjWTp7XN8UfqlYjsG4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754198394; c=relaxed/simple;
	bh=lis69qRJz70ahQbK/UNhUT+7xyVquwG38u77LG2zFmY=;
	h=To:Subject:From:Message-Id:Date; b=Z4MINbl+U0c2R9iIasFZB5UaY6LIeb288MePjqkeTTEEaFyayl9/SSx0Ni19FUZl2ckLJ4F6zvlOd2RKLQcolSRBMV3jaQVoT1WkVjsjX8CbXzQPM3eTM0d+I1ygAZav7Hjvo4yPCV3Ownb5HH90iDdMNu+pqrkF8zNx/nIzk/4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RY2TC7ZN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RY2TC7ZN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2D6EC4CEEB
	for <ddprobe@lists.linux.dev>; Sun,  3 Aug 2025 05:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754198393;
	bh=lis69qRJz70ahQbK/UNhUT+7xyVquwG38u77LG2zFmY=;
	h=To:Subject:From:Date:From;
	b=RY2TC7ZNtWeCddwK+G4GqyxTwRSaE5wmQjREcYgyKXAiZMhqFtYQJQNKot0pVtujx
	 weDVUoXiu1JcO04syBtEhdJcBKusXyHZwlZerkl8ovxi5HTXYnwm7bspX2ru/jn8G6
	 9bebVJftLrAlcLPlyJfjYDXsez9M6UZU9wE6y7FmD7tpUwSYbNVsekXDCq05THEcwb
	 o1vMl612RZw1TODarr/3INYf1tv95nYbn5S0kkLVDRHSjg/bgnIODCMLmXHIB1Eb6D
	 dpU24tsDonLaUDJSMpVIAXcLjrBfGwmlSgsORVR6ud2DXMahKXqv5LqCSKpSpdmYN0
	 EYQrOnmsUmNgw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F98FC87FCA
	for <ddprobe@lists.linux.dev>; Sun,  3 Aug 2025 05:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175419839358.18690.4568301604855095625.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fa0db6b8e8515f612a226344e0713e8bf291af985e6d473c2cc9ee5465f2341b
Date: Sun, 03 Aug 2025 05:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754198393
