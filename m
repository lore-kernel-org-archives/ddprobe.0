Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3232A30BB8E
	for <ddprobe@lists.linux.dev>; Sat, 29 Nov 2025 11:02:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764414174; cv=none; b=IKsJPuh1G/0wA2IXucfhv7ONCq2GQ4hUrwBl1vEahbxgXZu0qswj+LcyinqanxqXyF0sAgIICBD3Vukwqo1c9UDySSCMjwzG7L65NFCLcbr1Xi351HxotJ+3UJbSd/DuhXfMUkRkQbSl+q6Jkg75/rzo7kcSi/lX5ybeHWLutbw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764414174; c=relaxed/simple;
	bh=rARE5YksqCy2Nc2PVreryxhmtcmCGKfx3jqY+jCjQFA=;
	h=To:Subject:From:Message-Id:Date; b=eNu1woCffQ0R7SU4JA99CyFpsjw5088nGCoFRq5jNrgOX9ki4xEw62yq5lH6bzYOtfF0DDQS4qOGi+FCe9YykKgIMILiDygfyrpUHdYodNPFlvLT2dtvZWcqUf6P7lPh+idCtc1eenqPCzkquxteZhoQpPBfeFlHaU8FHUUMCl8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=asCbw+xV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="asCbw+xV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC879C4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 29 Nov 2025 11:02:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764414173;
	bh=rARE5YksqCy2Nc2PVreryxhmtcmCGKfx3jqY+jCjQFA=;
	h=To:Subject:From:Date:From;
	b=asCbw+xVhIc/8e9mMosdcTXr+DkzKzA61vVpUMJWt7m5KEhQt2RWamT/vA8yDbLvB
	 u4rrHmLzgh3W5x0vHUdO9V3V06ZLiyUwxxImcKlC4QiNijReT5DL0EHLRKOt5mS15F
	 2mhmwIHTXj6fozViwut5EsEVSgbbrzvvd2JefkJ1usCeQHbW+jWNA1HeV+rfCGmn97
	 /Co4/upUyNu0fsQFDK6e8jD5UaZm8RPrsv38/HMe2IXD+hkvAwEqPN1Bmu/YZv5ssJ
	 s8SJe2BsIEXhNyL+C/RR9GiQ7OUhLUhCwRqAaI2gA+1LRE4LpcBIe9r/S7Y0zypu2T
	 HNPM/zDkGP9CQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98904CFD2F6
	for <ddprobe@lists.linux.dev>; Sat, 29 Nov 2025 11:02:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176441417358.15363.16376634351977462068.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 223d379fac8dd53569b034835fa7d1d72407f7960ca429c17ae7da913788c546
Date: Sat, 29 Nov 2025 11:02:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764414173
