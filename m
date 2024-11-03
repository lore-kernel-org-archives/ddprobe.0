Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B3F6A31
	for <ddprobe@lists.linux.dev>; Sun,  3 Nov 2024 04:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730607354; cv=none; b=JjDfAOTZmagJMlDrnmQdcV2Q0pS2mGRWnRAIGzwNaOII3fexhaHHz0Bi7ehEWZTjk7it/tXEYB7IyAeRn/wW6hhgnmcpwdk7As+xYl0B72Py1zqOau4guOMYglUeDpV0eDWKwOBDFwECGa/gran4VGfGSSPPXLBvVPcO5HslZG0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730607354; c=relaxed/simple;
	bh=z/qJCPZzPaor0d4tuswW1JEBKMvjmivybwcKQ5i7t3Y=;
	h=To:Subject:From:Message-Id:Date; b=YA7gP3FI1XwntK4ub7X0BdL0+0mmOJjlL3fAQSUqYpQO0rxE96V5ep0Umg+YT0hPkWzF02ftnt0s4byX3cGgTT1RTa6Mz37TW3ZUWvNtEHDknXx2vz4QxFPiRUkLwH0oa5l+iULTQpRxltoG/rF5XFoIGIPT3F3Ez5xhF9ehprE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Wl+VU4eZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Wl+VU4eZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF314C4CECD
	for <ddprobe@lists.linux.dev>; Sun,  3 Nov 2024 04:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1730607353;
	bh=z/qJCPZzPaor0d4tuswW1JEBKMvjmivybwcKQ5i7t3Y=;
	h=To:Subject:From:Date:From;
	b=Wl+VU4eZio3GcvfwZhzpvccZc6I7rlrHWjTC8Lo2epaquUwreabv48b4uownBQDZo
	 Qcq9HEpHKv3D5PdhSvZ2Pz7Zd/ezKJGxfP8XRMO+M6+jBk0Uh/rvpvYt064+i20zOb
	 2IBr6p6eJ7OiUN37a5jlm/ZfxOhqXHIzEdo5liH/uiub7vqfR+A+C2Yc2ua/0RsbG6
	 iB6TWO8KAVuMuWZi/3i6K68eA3vAGaHyolGyaD7pqpIYFlsKgtS0/2kWC60T9xhq5B
	 Hhrxz+K9O1N9wQOA/OyAoy9xRcZn34TkIxSyWF94xAXes6Rd4+2klyVITw61h0c6cr
	 99rS27+bAO48Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A290CF9C6A
	for <ddprobe@lists.linux.dev>; Sun,  3 Nov 2024 04:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173060735360.30849.11463782306984794435.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 80e1403fff7b187cbbfc8e88fef33279403e7ae99463af6ba06e7148c0d7cc79
Date: Sun, 03 Nov 2024 04:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1730607353
