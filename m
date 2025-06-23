Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C2C21EF394
	for <ddprobe@lists.linux.dev>; Mon, 23 Jun 2025 10:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750673994; cv=none; b=U6oAteRlRVert63naOQR8ozybEAFFp8QelcY3h3+PiBbVpkzinJjwpu09kQ7y2q4WmZAFAhQa1MUmnmxeOeMkOIDCG7hSmAA75wY7P5+huRkio7Wy00WMv9BHJScw9UOd9zxSBkwI4WUV+F0hMTib5VrTGyRUR5TD//2H7gBeB0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750673994; c=relaxed/simple;
	bh=v2Gfd8y1Hl3mp8kaUj+dewQTLXlCfJUt8+Edmtee3tk=;
	h=To:Subject:From:Message-Id:Date; b=LJRIdpDjABuSYg2EwsPEjbbhht9Acffj1729Rf0JBNUmuabv4R7PjJyG4VBYkgQv0rFLzrItDl3QtIAcirD6Dv03RkOWuTI0uuq2qWnjKC3TpaM2hKxIj7zBLuPwSEgegWSTMvANu++DpTuMSVZgOUusjC40Rp5e5X1M5zmOkFA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=omhxlwLw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="omhxlwLw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F4E0C4CEEA
	for <ddprobe@lists.linux.dev>; Mon, 23 Jun 2025 10:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750673993;
	bh=v2Gfd8y1Hl3mp8kaUj+dewQTLXlCfJUt8+Edmtee3tk=;
	h=To:Subject:From:Date:From;
	b=omhxlwLw1cBOb+UG56+wNAp0ajHz+KmJhCgjmxWI/nz/LQ3kPK2YQVUKQ2glDyHrf
	 I66QJUB+YOgGkcmuwmZ+FFpjNgXBMe0v48L67Xb/PvRJnEPNZRr65iY9v/qjvYLcIR
	 lS3HOznMXUSSRA0uHtzzSjQknDkb452GfbU0lFXBDm9ZQMduA4S1wM6ixgDE/aMX2P
	 Dr8AZ8wT8e/wRMpk9n1SFUVzKri4sBRuUZYUV9IvoVaGHgC8Lg6dbsZf9Qm26pJgeC
	 uNJxQjSfjWqNbS+M8nxeErrI2Evdegx7DpAVWwEIQkWmezF1UzSF9DYcjgcvOIjQEN
	 SWFhKZP/iua+A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F64CC7115B
	for <ddprobe@lists.linux.dev>; Mon, 23 Jun 2025 10:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175067399357.20659.8572555378205433406.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6fecae7de5e5269c0d7eab0bd60ad39b8ed15d312c362cf6f1829f7d07a02717
Date: Mon, 23 Jun 2025 10:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750673993
