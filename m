Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4168C2BB15
	for <ddprobe@lists.linux.dev>; Sat,  8 Mar 2025 17:28:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741454934; cv=none; b=Hc8D+j27TY5Xl/YTLsKwkqZPPfXixlZHsnUwHAKDL6tbk9hGVv6MSMxLYc0nGCwBokTQgEQUmPC1yUbTEiWU/rXYg1tFk/5WYRU4hkVHuxU8HaNovrcGUi7hEdNsHYvhPESNcYi7x4n15q0Y7qef5xrWcWxZE6ntHvR8MdXG658=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741454934; c=relaxed/simple;
	bh=I/oQCeKmVHBWZvJ7E7xafez9/2qQTt11GvuDv0+WYdY=;
	h=To:Subject:From:Message-Id:Date; b=dPMvl7WWM5kVpGmZeDoIdAtkYzjzjMDB661xWi9TsFbtHegWMbjX4h7/xRvaKHcYZ1529LtmGiaUNuTkM48JeupKfNIaJ7We2lrmsl/1tud1FG+t2XPb2dDFR+OMjrZVT3UR3BvZIfjIGT/ZCXg20fh7TDi/8uETV4PQ+0wVgfs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=s0MQAdHp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="s0MQAdHp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2F07C4CEE0
	for <ddprobe@lists.linux.dev>; Sat,  8 Mar 2025 17:28:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741454933;
	bh=I/oQCeKmVHBWZvJ7E7xafez9/2qQTt11GvuDv0+WYdY=;
	h=To:Subject:From:Date:From;
	b=s0MQAdHp34d+lj8YRu06KdZYCu8JlsiHkAJfvSvZoxR91R55GNoQxa7S5lnmL8qmB
	 ln/aaD5/zN8PfhB6Rdgf81HJTSWX1qgR6AelKdvAKQICn/ia5xAemSYSVnrWgkscw5
	 CtP8bxJUhR+0Jy1ri4p7L3Ogsl21sEr51IcQH3uCY/jJVY1CoHA0ol8seRRay12nhJ
	 bj4BId3xARBm3yw9AUg2Ev2Vm6zG4HAr2ST8c40jOZuuaGo+ZsqMC5A0yWyU4vxANS
	 Dd9ZrtouHWKENhqGN4VNgpeXLXRk8NDXmtuPpP4nSyue0zOfsCQycUqw4vhhl/Vkdw
	 QLBKKuD9JJl2A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A25DFC282EC
	for <ddprobe@lists.linux.dev>; Sat,  8 Mar 2025 17:28:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174145493362.20591.16130567283866501745.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e63f4017b5aabe11f0e7cf7ba8eb9fad2bec1b769e295e1fe1b8cb81d31a3f4f
Date: Sat, 08 Mar 2025 17:28:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741454933
