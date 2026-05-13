Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9944F3603D7
	for <ddprobe@lists.linux.dev>; Wed, 13 May 2026 01:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778636434; cv=none; b=m3PucxBaOjRtyBh7iYQfFky+ACOmJ1Q8+TBcSgW40qj8sHFoiSKCK5KmkTzWuw9qGiZq+iVmc/CBxWpYBy+27JSbmpGUMTGRb7Nwohn4eFgRqsmyfBBT14+3zli82r0Dpxuo4r8SbNJS+KDzZQXKwwIaK//8j1b3rg015JsX+I4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778636434; c=relaxed/simple;
	bh=/ZiTOqAUdDzM3A3SnBGR7/Ya2GJGgkQwFQRuaZsgaQs=;
	h=To:Subject:From:Message-Id:Date; b=SKg3/DdFIb4E2zWdsw6rqbbUMumEIx/WGQyVWKWdSZQ1VLcWB2cTXuG2YL3RdfUtW8whl+2mr6YonXqbfn4cvIs1thPrHwF0aqaAKQ8paGtMIN4L9QfD5hjjabVBXJVvpyo1jFskNWFbEbDUwbLfdP55uxwQ0i6BvucG/c5xpvM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lWQE727+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lWQE727+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C17E5C2BCB0
	for <ddprobe@lists.linux.dev>; Wed, 13 May 2026 01:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778636433;
	bh=/ZiTOqAUdDzM3A3SnBGR7/Ya2GJGgkQwFQRuaZsgaQs=;
	h=To:Subject:From:Date:From;
	b=lWQE727+bfhbyMkjEU1ayVpAozVOe0nYlLEzbFdYHry3hPalWSz4GnV+Al3dsD+m6
	 CdaFHVQ3y9d8I7M3PQYkImJs08YwPx2/zv1nYBDcCHmh5pvw6W4uDzeb4/NcUC1kZO
	 se7vJI8rObtOHOMUWhXK8iEI3rAZS94W10BSYiOG9bDoYadh/MYxz26BXksAn6djbh
	 w8aHjBNLYQaH3eZogmpbZ5W8373DbDgePFq3/2ZPm2XkyinU4Ag4B0QEKNDmmLMOVI
	 bCoZoPeL73/dzme9D1UAI0gYHrFHbirK8gxJjoo5lUC/SzvlshITfuQQvsbsBrfWnX
	 yJsgdjzGFQPJQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0E71CD343F
	for <ddprobe@lists.linux.dev>; Wed, 13 May 2026 01:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177863643371.16840.15652950873314013068.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4389af0c860e6c5c3fdd2dd3e7896a52ec9d2e03297b6a1bbbfde0d41eab7ede
Date: Wed, 13 May 2026 01:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778636433
