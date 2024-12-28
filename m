Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42C42282ED
	for <ddprobe@lists.linux.dev>; Sat, 28 Dec 2024 20:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735417554; cv=none; b=PvO1l2jCE6yBONbmnNiE6atbf9RUyTd0p9+NS8XfEXds2wvWpPb7nhf+VpdcN44jFls4UDUAdcQIPUX2w3yme8rlkyAn7gx3RteTwaTXNh9vF9XzfeQRizbB1poq6gDfwoBZbLniQAJx6uI7ma/1LfTlCTo/+c9L/1wH3n3G/2U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735417554; c=relaxed/simple;
	bh=bIiDSyDyoOjlDn7Lz7252lIA+akQHJQBk/bBXUbCUdM=;
	h=To:Subject:From:Message-Id:Date; b=dXslyS+EalRrdpJLR0Z6XvJkxZREvqrSwE3piAkqJGtUahUPzc+VnjKw3RNrGshU6ZSunCxK+AadXsNuxqPgR9H4xV1PMrP94qo1wefq/7ajbJMXsQj0puJ67aoapUrv1T6fXjFdfcSXurtgevxt+avqxSUCsJot065bEO5Vl70=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rgdARkgy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rgdARkgy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BAF86C4CECD
	for <ddprobe@lists.linux.dev>; Sat, 28 Dec 2024 20:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735417553;
	bh=bIiDSyDyoOjlDn7Lz7252lIA+akQHJQBk/bBXUbCUdM=;
	h=To:Subject:From:Date:From;
	b=rgdARkgyx7bgc4O3wWKAuNtngXxNluOVS32QzZ0/JrVhlIG1Zw/mi4O41NaK3AvLf
	 V7rkTSmKLGUdyQDrm1YxQNj8LDtfbRR2pqDfE083effwi2DtggGVaneNwUQ1XYOyva
	 SjwfjZVjx002UKlRi6x07CPXLouRMupQnn8peSzkxEJ9bwRFSjUa/rJeGtut02TRjD
	 dlGihkDFx6EubrUudex9ZhEaoWT2+n5R+mCuvxuPnLKulVUVCyN3f9gRX9UcVjC5Vl
	 rv2kYnt/I4Rv9RBlCB8qxMhsNgmpP7t4k5Blyke8vrxC9/s9idUdS1QHlzHJY0EfZQ
	 aK7PlUV4U9gZA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A508CE77188
	for <ddprobe@lists.linux.dev>; Sat, 28 Dec 2024 20:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173541755362.21289.14222220068658251603.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 49f5563f437782f1bfdba13157b875c94a1bd1cb0033547c041f9202f869a043
Date: Sat, 28 Dec 2024 20:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735417553
