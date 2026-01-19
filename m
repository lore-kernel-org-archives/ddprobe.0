Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E4C8138F224
	for <ddprobe@lists.linux.dev>; Mon, 19 Jan 2026 19:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768850034; cv=none; b=RS5Sl5pjMouMVT2bluviuyBOd9V54AXblyBlue9QDPZCCLc4bv7/wpCR4eqXOlMn4i/wi2cFwd3RFmMuhfhB60wPX9/3F5nKvy2JR1ap8ZJHz3Kq0Q506XvGBjmWxehSUTif697SN6qcU76+VUlbCnOvrUOQNNoRxtoyMVzqBWQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768850034; c=relaxed/simple;
	bh=Nv70K6OGoGS61IJSQy/IYvPm2jbg2hZpZQA+fCi2hoo=;
	h=To:Subject:From:Message-Id:Date; b=ES2qu3e2btRJaPjnWf/ZdX8SThZz0kjrWlQQxNFclnFoayxsab/4xa+XE5vBgN9jUJV6l8/JT2FFBq5cP0+yoV0Rc1ibgMiqmYwxZOYayS1SA0zLQxzWE0yZeaNb23HU3jyGD/t+0WPNORewqQqJXb8zbXurRxiqo7MWtfJUqYY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZpdBf892; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZpdBf892"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E08AC116C6
	for <ddprobe@lists.linux.dev>; Mon, 19 Jan 2026 19:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768850033;
	bh=Nv70K6OGoGS61IJSQy/IYvPm2jbg2hZpZQA+fCi2hoo=;
	h=To:Subject:From:Date:From;
	b=ZpdBf892JXt2FqZ/xr48fjufrx13nYsdD/kkXXzKvarK8gPKfN9vXGhDxxtmBmGQ6
	 jJ4K9lX1Qihw7nFurOh6U6AAkZ83J3qGV66BCwB8jpXk9UAVZZ4HA+07yShQC9fEnp
	 44xi4E2Kjix9jo6ULqhVO7rIBkeeDzWAHrJKgH8ocrDW0K6AoKoKZbPkHW6jTkJnIJ
	 EBqIFomWqDGZ1eX1ikE8+z/HxpqRAhepZXGX9cUQtKd50hFarwuASGUb4z6Jlnc86v
	 SghxqQlHtvyBg3twU8yWrAImia5mVGUDVeiRVNiJLlTKm6jX+nIL1Q8mgiU/3C+xGz
	 ZIgoiQH9aBGrQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90B5CD29C4D
	for <ddprobe@lists.linux.dev>; Mon, 19 Jan 2026 19:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176885003358.10299.9492339355430124984.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d9c0d91ea21f8c07da0719bb69c5ee10f3c5b60bfe1824d27b90c7d3f88264f5
Date: Mon, 19 Jan 2026 19:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768850033
