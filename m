Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1962D86277
	for <ddprobe@lists.linux.dev>; Sat, 20 Dec 2025 20:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766262834; cv=none; b=jx4VJDDNQ13D6HYHEvNjLNDvks4kXNLMLZjnp2HzwX7fjBEm/M2t6fG3KPlUXElojjh2KDdII4bVHEVeDFurQRsLwF31pV+Fb0yQVsjxyShd4SJ4wt2nm6k//SJSJ8xdZruizK3o+SOEUdPwIncQ4fZOcRRtHNRGHlD+dU0roTQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766262834; c=relaxed/simple;
	bh=BQX2LShK2B234JF4laa/uckvRpDpj9xyoVFC3JcYXhk=;
	h=To:Subject:From:Message-Id:Date; b=ait5tAAlaJieZzNY71zyqSldpRXGpdvbZJP06atE94LPLNYtYO6kSz9oyIYniq2jWLRHt6eqXMq1B6Yuw8ODz2mLtxR8Z7fSGVj+uuiGF9HiNgH7Pb6sXkz69TJkw1UMLVLfPZG7/jgZsdLe2N93kZrgybQ0/UdCIfcQTAFhT5U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZYB8GJXK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZYB8GJXK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A729FC4CEF5
	for <ddprobe@lists.linux.dev>; Sat, 20 Dec 2025 20:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766262833;
	bh=BQX2LShK2B234JF4laa/uckvRpDpj9xyoVFC3JcYXhk=;
	h=To:Subject:From:Date:From;
	b=ZYB8GJXKqhUnEfstZht1MVHdgcmUSvOY2G4Qr9dsXstrnLRjyR1GK3zDnBna6n7OV
	 P6dcgw3UpTVy+zuzO68D3g3vnmvl71S+y0QfjsqXzmy+pSO8MrA+pL6jEteOkcZRwT
	 C4iGCQ3bz53Zx029yuFCCozsJ1SQA4BOHnVvaYVkZRwKxUspbNc7091nlK7S9C3qOR
	 dVM/PweIZ5o3HgF+2Hi2nXdduQeCK+jLeJiIUNMH96DuZp7jL72eP4rn9PVVZhpq4i
	 xp49Y/2Ma5V398SnOBRrQ7+u9A7v0qVHpbnsCjAY8sRFU/Zr1NZmj559mNEzk7wWoO
	 gFlhszNBemCBw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 937AEE668BC
	for <ddprobe@lists.linux.dev>; Sat, 20 Dec 2025 20:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176626283358.29662.14310430901008245936.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 277153567263cce5f8937cd8a3240d69bb306d7eb82c1e70ef563447daaa538e
Date: Sat, 20 Dec 2025 20:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766262833
