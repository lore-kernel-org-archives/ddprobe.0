Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C8B7B101EE
	for <ddprobe@lists.linux.dev>; Sun, 22 Jun 2025 19:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750619993; cv=none; b=DjEhrRhmDoR3NIqBGCBeTdFQal/TK8FW27XQyESDtnBgNEzALa93QjUgJbamqD6w8JRNogUnJRAGMQjJva7zqnLsxuRhgUgvpgRqihBtYT+u934zu8qgAmw+9c8G5JCggHjDBJ/d8I3vxQoT6qwOJujoWtDXbaqdkzHdAN0IbaA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750619993; c=relaxed/simple;
	bh=Kr2zvE8ONE/EdWIAiln2tmRaZjBev4uWMj2BC6tnuKo=;
	h=To:Subject:From:Message-Id:Date; b=aQtzonrGmZOo707qxLziTwZlEeMajVlxkVIHJt1iQ6y4BsedLvSLX5Tb/l4D3a1nwUnF4ByCLPejOkb8xsCM8V1cCBeu7WOKF69cb7+3TnBeGKX+pSV6R5p3VRlrvGH9Cdnpd8TV4rqxllSPSNkMQlbqI6mc8B0/PiJCS06qdho=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jovLWZGj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jovLWZGj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5DEBC4CEF0
	for <ddprobe@lists.linux.dev>; Sun, 22 Jun 2025 19:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750619993;
	bh=Kr2zvE8ONE/EdWIAiln2tmRaZjBev4uWMj2BC6tnuKo=;
	h=To:Subject:From:Date:From;
	b=jovLWZGj8gzKz6WnXtgCbk4q0UhXWMsOT+awtBZKv2MEpRd67rlNf+/wLWe2dM1Hc
	 HLy8Jx3V9ODDsgxY7CV6vNA81RFeoJR3/KO3Dtc6ywm8lbWpWM3NK1+xbhYErH0eOq
	 wdn4OTBZ3q5oi6CtbvKm0G0QiyK4pRBMcWiS+5nNgpWGQuRGqkzgwshZtgV4+TaGMP
	 W+Nv7Vn0EanpPpz7Hj0RCsspur8dyG4nrzpYjRxXjb/sB+0HkmWuUvSHbiIsZuayR3
	 5/o08HZSltpg6GmIOnLa8QmjhlQfk2Eb+gpk2KQWq90WZmMIYCMWo0ZSsDvj496CXv
	 jHUvji9ErPdZg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 955C0C7115D
	for <ddprobe@lists.linux.dev>; Sun, 22 Jun 2025 19:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175061999358.16557.2336890627114713621.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bc1e1884b4bf3f244e341d46bad9cf26d48bfa0611453ba2002cdd67c1b9da4a
Date: Sun, 22 Jun 2025 19:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750619993
