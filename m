Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44B7C30EF8F
	for <ddprobe@lists.linux.dev>; Tue,  9 Jun 2026 05:44:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780983874; cv=none; b=uQK5IAh891XCS21iGM0+5eNprCmq3fPIPVvuq+exVRfjig42viCCzi+2Wh5u6Lh6RY/OIwnqnnh7GhAHujnrbApulxlx3EVU1Hh3CsnhWU3u1wF+0uef/t3XkD936qxxDFZVkHDKmb+saiqX+cML3Z+LXqvLHL/alQ/rZwp9F/4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780983874; c=relaxed/simple;
	bh=9E9uHWJ0qXEFL3quD1mER6g5XFVxj9oqvGqhSEcG+90=;
	h=To:Subject:From:Message-Id:Date; b=Vj3OclOiT5Y51uzOr/lVbv4ApvOx26PuregZEd6KWRkF+Akvpb0domyq5IJNOL4i3/45tmKEnHNfswiekRYeECxiPMJtZzkB2xGDqfuXZyIve6cHV1s07jm5cG+fAQW20sbe7gOitqqdFIs5DQmJu/SpEclJTx1Obp2rEUNxzSE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DLx1bCYc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DLx1bCYc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E9078C2BCB4
	for <ddprobe@lists.linux.dev>; Tue,  9 Jun 2026 05:44:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780983873;
	bh=9E9uHWJ0qXEFL3quD1mER6g5XFVxj9oqvGqhSEcG+90=;
	h=To:Subject:From:Date:From;
	b=DLx1bCYcMlZyWgSFeaygosc5Ldnhv17WKwmZWS8OD0hg+159M18zvUNKMIvqq4/e3
	 ZilNTAuTsKwXo8v2EiKlXs6DKoMGZQuBsJxFOLUQHlb3Rt72PU15v3Th9v+iP4YGCd
	 M1bACjzUtYB7bSWp6r/UE3pB9UebpYCaFoUu21QBtuMMbVXXM2mczQ+fdowHJluXsc
	 r6R8tT5+m4RvKl27yfTvytaKyXCgpkHzjxYlVt4aA5IsCH7vlJ6Pkm9I2vnP1jqMpO
	 UQypXczC8F9BflX/LFXVpnafmpWZ40vSjSSrEfHruFEj+GN/3Ks4NbRFHLayUXBR/l
	 g6+yD94xITUww==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B3407CD8CAE
	for <ddprobe@lists.linux.dev>; Tue,  9 Jun 2026 05:44:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178098387371.19239.14991008604328876113.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dbce23f0dbfb5893bf6495abc350f65aa2ae6a52a5ee815407f46478370b6b6f
Date: Tue, 09 Jun 2026 05:44:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780983873
