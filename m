Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7186C17BB18
	for <ddprobe@lists.linux.dev>; Mon, 17 Jun 2024 04:58:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718600303; cv=none; b=bPfSycuE1mfLSOL75+QKprKHrayO9KPZ2CVXgjH0m9OAR5ubkz4VLhJXJj3Sq33Ief7I5oB2MPGC/LZfIFdl8tJ7nZwf3E9k2mzHyWi65T1T9Tevso6ekQKxepnbzsfsp6qS00Q0TTcKB8dIm2r0EMHQUBZwQFCorIS2i4iI43E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718600303; c=relaxed/simple;
	bh=5LVcYZjHztHpWXVa3fZu6typE2pmAnsjkZ+irA14/Oo=;
	h=To:Subject:From:Message-Id:Date; b=mSQ54DkS6UG2dMd+QjstahMj9lhvpnufTVg7Gx6CHcsS7iNBBL/pQRcCrVsAM0LGDD/RPyYyyeXEAlVZKpbtj0imyxPdFQLGMf/tcZkTvml8Y0HCQvO4/zoqtudVvdMXeqelo+ztrNoIwUeK0sJJw+RtduRLAogieIuGEsRnYYM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CzTpqVpg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CzTpqVpg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EEF41C3277B
	for <ddprobe@lists.linux.dev>; Mon, 17 Jun 2024 04:58:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718600303;
	bh=5LVcYZjHztHpWXVa3fZu6typE2pmAnsjkZ+irA14/Oo=;
	h=To:Subject:From:Date:From;
	b=CzTpqVpggJJIE98eu6rPsU9fGPqSw+QXK7jh81k3xTO/mUdumdViZM8rqjBomnTB3
	 4EFEAr/LSwVW/m16AQ95rrZno4n+WtH4rPMVI4T/6kXuZ72ME7llq5dW0+722WJfTI
	 zB7Q5K9W5mux8C7Ts6HgGT/2PUSHGwh+QTX6uLrHUZ9ReLUeTr9joNNB9rFTTRTy9G
	 8EByv0bN5JoCf5g4N0qAf9ZDL0et1C0PSHvz/zeSh6o/plIAH5qygisxFJ25bLkF8h
	 aMr3bq02y6NNjCY4mnDzEghs4pHdMUAXHz7Q6ohmOImF6YBf8BZiMtowXJ3H/HXuXe
	 VE8RLfUWEXoYg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D6E4DC27C77
	for <ddprobe@lists.linux.dev>; Mon, 17 Jun 2024 04:58:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171860030281.13417.17360441803283485136.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: df2bd316485fa2d738334e6f069901c39dee5da2e749420a0a383ffbf8f70519
Date: Mon, 17 Jun 2024 04:58:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718600302
