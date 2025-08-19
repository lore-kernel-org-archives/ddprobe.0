Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3205B3431F4
	for <ddprobe@lists.linux.dev>; Tue, 19 Aug 2025 20:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755636594; cv=none; b=otNjDg/nHjan6JDvv4dbIrUQ+sId7jBPuzPRKbhSoT6n0eM07vSZuyGS5GTdM3aCX4DLNwVjpoVu03Y3WEW4XBB/t0QX36OuBuqVbhoTmKHFdqkJzx7v0PlIBJ8ak+SAIGkP9/FTw6dvnuyYFCnlXj7umoSleCvLkG097rKog3s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755636594; c=relaxed/simple;
	bh=2ywCy18LJAGPJdk/e5s1Ec0rfOw3d7gOwh5BUYzpv3k=;
	h=To:Subject:From:Message-Id:Date; b=eBQK6EO3T4LuAkeolLbeTbrnfhVP5jGOiFml6N07b6NlTuAz3J5FsnSuaIrrZxgFdVEF2UHpd+Me6YHgi+QugDKMOxAKEYxY8eJE2yLzmw8/+mNeTclNzGlE0faiRILguG/YaXLCJ97OnlEUariGHc7ZzF1sdEqSpvDX0kaGRUw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tsICgIaD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tsICgIaD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EAA0C4CEF1
	for <ddprobe@lists.linux.dev>; Tue, 19 Aug 2025 20:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755636593;
	bh=2ywCy18LJAGPJdk/e5s1Ec0rfOw3d7gOwh5BUYzpv3k=;
	h=To:Subject:From:Date:From;
	b=tsICgIaDwjXeDMk805llsKjLWdMLGKFC9NAVvMrECx2YH2OPv6REn+NfEl+FTG6eO
	 Z0pANbbO+ABegUjcG6BBakRDwnfFcYpoQcSYn3Twm1dy7KJ3NQJgbZ4lMkuz03BQiV
	 dA4+O1wqsriHhqyfV7P5XoNluINQvpGf9HPQxTacOmxYtQljsnsCCagsss/vbZ7a5a
	 W0Q+N3w/3IMnQPqJ8lHY0/e4GizMVu0wEpeWKphYteKYQswmxBdZHgw0DOl64oLnxs
	 FWO73yv7rZm21+WlkaqcFAHRn83gBCEo1ECtmOPN0g+qfpk+e7B/yWSYzXnYHcZCCT
	 P7OXSDijRRR+w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8DFF7CA0EEB
	for <ddprobe@lists.linux.dev>; Tue, 19 Aug 2025 20:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175563659357.19107.2425700641154731373.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2f20e3953ad516808a61153c065401a0eecd81e8b5cd5a6f56b31739e9e20d8b
Date: Tue, 19 Aug 2025 20:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755636593
