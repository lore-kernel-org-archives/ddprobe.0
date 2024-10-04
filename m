Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D9A95159596
	for <ddprobe@lists.linux.dev>; Fri,  4 Oct 2024 12:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728043553; cv=none; b=hrL1LfIWSWsD2VfXlAowq5bTIEs9/WERCpTU/64NIY1x76zrNwbnUk2DSCSOFdH/I4jYg61bFls+SHfoePfcQSbNv728PziwER0ILrR7EwWtCoO01w6NLAsC30vEYxnGdGnHWuynxnh4nxVQAu4jE2fLzqhmrlzvOsHMSe/tsM8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728043553; c=relaxed/simple;
	bh=DJdlgiGN2N7x2z+cwr3l39qt9BkO5zfXFq7Jvxqjbdc=;
	h=To:Subject:From:Message-Id:Date; b=W0C1qoUgZ0jQZCsDc5yGEO92QjPTdQuwxUjPKhew5AUQu8Snb9AQGSWXzHZGZE/Lq02Jdc2F2uXTzEV4TuU6yj1c8Q6MtIwloS1PlAY0tvPhV+J4K0nLGXXptFE+u4yA9psuXBKeABHuoHxshJByQy3vSTKt63MNNk4eCeP5WVU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=l+/cKdK3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="l+/cKdK3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B100AC4CEC6
	for <ddprobe@lists.linux.dev>; Fri,  4 Oct 2024 12:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728043553;
	bh=DJdlgiGN2N7x2z+cwr3l39qt9BkO5zfXFq7Jvxqjbdc=;
	h=To:Subject:From:Date:From;
	b=l+/cKdK3zW0wDINLodWO6V2gD+VgSy3GAtG0cu5jaDi6V0/sHW2Qbqgureyb941FY
	 SmgnFlauHbpQcJczS70t9E9/3U7+bOyV8vJ8FqcEvN99joZwqUST5yUTPEKDncO/GJ
	 bDLaXETEx5pnT0b70RrzwEFF2+IJqKDerwGG+wdblcywjra9EHZSfudPxbI2tWXpu/
	 qolWkrMpfLhre1mAC5LR30djvsjy2ynmXKc41/5s/8RfY3N0JoScY9eDnU+O26C84p
	 gVJsMiMwOtYh0PJXdxSuzbzLJ8QL/U9OdghLsX05qG5xET/ebZGa/5VDTTdNO1+GzS
	 akbaPIxpBUzFw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9EF8DCFA76F
	for <ddprobe@lists.linux.dev>; Fri,  4 Oct 2024 12:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172804355364.10594.5315025029295909391.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 83eff85846b99dd0adf789ec86d67ad69654a62bb7032331d8852e0022e849c0
Date: Fri, 04 Oct 2024 12:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728043553
