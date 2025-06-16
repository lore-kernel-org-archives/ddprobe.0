Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3EFC81957FC
	for <ddprobe@lists.linux.dev>; Mon, 16 Jun 2025 04:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750046994; cv=none; b=kIuPArAya7poUxOoKrcbSj7b9eqsZc+tEuK+sL7WCJcDAngVX2Luoibs/mhw45g0+3/Cw1h2Aq+KDT+3Zhgwlkz/zm1D1RHeNihWAcTPkIP11MZiRUi+Q126yvBBZxanJWihoSAMySN7Z+RF3l9/0nmh3u/Ae1D0/qVKyjp1yfw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750046994; c=relaxed/simple;
	bh=qtdRMDFfzPPYO602a6772x7T7Hyvbqu8RoXlTB37Jow=;
	h=To:Subject:From:Message-Id:Date; b=TRUXLv5We+kMJoneu+0hV7KouUvW1OHZTzLjVLfyoPLwvd94Yw5ui5ihV+2qqdH7bTSDA+WNb6X9IbnaKHv+4r/JC98J1GVmoreJSoaNVV3WO9IHYka+gVGSXq5tqGxkApnWgKbKnTyNJg0OK9BmCQIuptSKSHlD9c5Us9gW/jw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pGWdyu+0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pGWdyu+0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0E2DC4CEEA
	for <ddprobe@lists.linux.dev>; Mon, 16 Jun 2025 04:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750046993;
	bh=qtdRMDFfzPPYO602a6772x7T7Hyvbqu8RoXlTB37Jow=;
	h=To:Subject:From:Date:From;
	b=pGWdyu+0zmXHf2eNj653wvz4skSRFhf18YQcrWWgrPKpnYJscyZov3sZjGr2Uy+cG
	 NumPgvQsKwDJgcEpvBWxtczuzFvfwutt1UVHDwQnpFPT0T57QuDPepMVSZo6Y3f53u
	 zL6B2dU3XiRJ4lY05tjosiDB9tkXRct5p0AUall3w74rUmKNg7ZcKWuvvtJlLbycGW
	 uDZU/QVOtmBkI2HChbYQ72Ia6PVhqkuzvQQhLyL2kIFr+uBSyWWTiEicGByVp7qMJo
	 nOhulKkM+xkiX+imCn0nDbvb+HP2qrn9tY4Zi3gC0+dFu/bJTCidmq2ql+SkoWAglK
	 gst97Hx8QAwIg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9CA06C71135
	for <ddprobe@lists.linux.dev>; Mon, 16 Jun 2025 04:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175004699359.27758.1965298634237257417.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c9bc625b28a837efedbc12669964f9d0fa466b63adf26136becd6deb530c96aa
Date: Mon, 16 Jun 2025 04:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750046993
