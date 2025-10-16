Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DADC146593
	for <ddprobe@lists.linux.dev>; Thu, 16 Oct 2025 03:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760584794; cv=none; b=fMWLkhByuOjLYayUVGbk5WGKtjYJjssz3L2LaTw3gbtZqMAJ+33zXU6jn5dCTJtZpS9ZOa6KwBlz4tnXfdzz97wibsqixzFciYFM/NeBjt5BdkojVe/TWe2KK6icrY2pRwXUgMRooU1KExrbJEaAkpLUOr0+yJn3Y3C3zeGWXkY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760584794; c=relaxed/simple;
	bh=Ew4oNKYueRbX8ZvgX1HqpbB5qgmgBr2pfz0rVSzZ8IY=;
	h=To:Subject:From:Message-Id:Date; b=Gjr0UFwt6/mff/W2CJwzmUBe/pWvdMgZ7dIZA2pLaG9H+Srt+fsiJVYDBHPaxzXrP7zaf2A/dvm86gs3QkzmtFtf0A4eRDdNZx4rpS8vaTRrN5yXRU6dDnqH9P5TrwuS/mIoTjHeF0zWG9CoS2m6QzGfeOKevtuasuGGvFAycuY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cwHznMhI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cwHznMhI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A201AC4CEF1
	for <ddprobe@lists.linux.dev>; Thu, 16 Oct 2025 03:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760584793;
	bh=Ew4oNKYueRbX8ZvgX1HqpbB5qgmgBr2pfz0rVSzZ8IY=;
	h=To:Subject:From:Date:From;
	b=cwHznMhIqOQOjQtPqMhBfo5VKKhRZc3JV1Kqhl67Z4DKm9ZpF8JIxWfp1q6JdilEI
	 5qX48cFEf3Af3Jq2Qmq1fiDtBrtVHm7mNn68NnpizhiSa8D/kifz41eW2oRFOW0U4e
	 DhIW2LuzMyf7tx2xLo1E4HQ71LWb/4Sk5BW7EQrZo3T6VcrvD52XN1FOsbXglM73/R
	 /HLssuuLnbpOQgbbFrqCCjd8L6sXxJwP2sgNYCGDLakaOLGUDs4cGehIzIdelPWuY5
	 O+fIDE+T/R835hcBmnVkqZv/sDFgz5p62KmsYgJGcFeXrduTY8Ejlrp9dRCld5pJPW
	 ZaNwpt+yv2D3Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9187ECCD185
	for <ddprobe@lists.linux.dev>; Thu, 16 Oct 2025 03:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176058479358.15533.14821145830387846675.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3f205a4df175cd1423411f3f05d55eda6e5c4ec01c4f373a7792a832915d75d4
Date: Thu, 16 Oct 2025 03:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760584793
