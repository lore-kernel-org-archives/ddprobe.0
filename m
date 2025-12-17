Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F9762AE84
	for <ddprobe@lists.linux.dev>; Wed, 17 Dec 2025 02:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765938834; cv=none; b=uiYqad31zC0bHtbyHfWZY0Y4lwjSWCdup6PYU8nTQFZlj6rr5ytjSGWm124h1bbGVHlMKAFamdGuYd4/3uOt9yRqKds9bjPPW9ZMaZd+G5TYOBR+GeHsOcMeM51RJikB+ck+KMyOdFHK/OVvfzUXhWweu7n0/lKBvBkQADze6N4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765938834; c=relaxed/simple;
	bh=MGGziQaD0xSgo2ARs1hB6dXYyhT+KMxdxNkYSng66l0=;
	h=To:Subject:From:Message-Id:Date; b=lvw/G4A50b9W6irlPlf1X7OJFdAqb5QCwchlTEQ/OLxQt8tB5jCf+NPM69Oxnut9Ebl8Jl7Bdogtbjtjx22a9gq5UX2Bxdh9OQb6vK4VL6hFpfAXkBb/BKleAtF2AgX2jomjFMQ0yzpQOSLItxLa23aSbq89OZv4H0MRpm83oxo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=txWnt/PC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="txWnt/PC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A65ECC4CEF1
	for <ddprobe@lists.linux.dev>; Wed, 17 Dec 2025 02:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765938833;
	bh=MGGziQaD0xSgo2ARs1hB6dXYyhT+KMxdxNkYSng66l0=;
	h=To:Subject:From:Date:From;
	b=txWnt/PCLfwitkeOfFcr4trLBNa4DrruvWteKSZR/RlFp5/r7EDg+fmD0Ah1/+DEJ
	 JT2qhTVhg9Wr0iV8uB1oMwMLyY65ZCi9f6+YdumrZMSEPijMkpzLe9oveugftYN8G1
	 Gm/WR2e296I7MtdMNiNXemfz6GVlDsLZAS733ZKZEzrODWxS38Kfww9+6NVkwYglOn
	 NAl9gSLjrM5QdKD+wM/yucnytj0xFdcg4W1D9FIqt3mIJPa0b0YNDF4toUmKt4yXZ7
	 jXSJ/63yEivEj4nLFa0pU3HmFxgO3qJlhIP8SNDjKqH5sWB06ItgqJ76PTK+XPG3yg
	 RNQ+H6wlrFBuA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92F0CD6406C
	for <ddprobe@lists.linux.dev>; Wed, 17 Dec 2025 02:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176593883358.19811.4803283468149874127.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ea4c8918faf123ddfbf0a1f3df89fd11232f29a01db61bed309b6e7e0b48ecb3
Date: Wed, 17 Dec 2025 02:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765938833
