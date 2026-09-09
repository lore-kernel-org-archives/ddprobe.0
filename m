Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 354F035C1A6
	for <ddprobe@lists.linux.dev>; Wed,  9 Sep 2026 06:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788935434; cv=none; b=eYOSc2HzYjV+Az5zbW7+14p1yiRipMX2odhUsz/9AyC502SydesDqrTkshIvyiwm8gqvejpMucuIYHzqFYcfT3fMhGeVcHiLx25PkbTfNFCtViTr8joPGCe5zy7jKMDeFkoq0dJGFPxp6hQJhVehwfxcshF1/+VeX9V19NSux+4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788935434; c=relaxed/simple;
	bh=+uUC+8I18b2kwPyYDbYcjl8cw9oHLgtyRf3GbtFRaTo=;
	h=To:Subject:From:Message-Id:Date; b=Lr/SactOIESqZ25gyi5nagCnQvypLBSRyG6JQTd0+iWdKzdd7BwWZWkXCRih7FRvrxbz4vTHLDQ/0e7fUEhPgoVSKrcTFrx5o/iHPfM+WdEH9XcZclKVxhD8tmA/aHMv74cpRSEz7pdxw3IjIIjJBLXXwAa6fH5PY/kMWmTpoFY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fCZFycMq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fCZFycMq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CDEC8C2BCF4
	for <ddprobe@lists.linux.dev>; Wed,  9 Sep 2026 06:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788935433;
	bh=+uUC+8I18b2kwPyYDbYcjl8cw9oHLgtyRf3GbtFRaTo=;
	h=To:Subject:From:Date:From;
	b=fCZFycMqWMhz2wijVxy14eBTpEHA7iUDntHdMXtGza9fpG6m6S4JZmF3pg1IJDbOH
	 LBhWp7l/B6ZNhtBzOx1kLkbTCTRJ/VsImKmP1uToLfivT5LBiIMROHTh5qkO6MRaWj
	 Eaooqh+KPDEtdlT+Gy+CqBAGR9V0e7DiPTnBUeCxXsVRPvh06jBAm4WQBRIjPiBu4b
	 45X8fVpSwi3qO6YYj+SDeK7LUlN0ql7pyXJPSAZoKSQq9oJYZUwFQVwOqIsHJXABtm
	 uwPhPS2FSBMQcP5z6ZYzQi2cWJD89TIzSD5CUheSeDITi+y6QVmcEn/2A2b2ap7EhC
	 vVLGyID6EifXA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB918C79FAA
	for <ddprobe@lists.linux.dev>; Wed,  9 Sep 2026 06:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178893543369.7260.2479425853547412540.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 49df9f4966aa8fc7678ead786b74730f62957806dc7d2aa2392ca7a3fb1d4568
Date: Wed, 09 Sep 2026 06:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788935433
