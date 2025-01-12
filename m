Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 399B34A35
	for <ddprobe@lists.linux.dev>; Sun, 12 Jan 2025 01:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736645754; cv=none; b=WIAd4Ct4QcokCSXCSW7ulkviinXPxLvN0cI1C9jiqwsjjNSfoVXDoT9mweEWkBm1fU1c9cYi472kJqJVNwK6EoVOLBpOIorM1PuD5bakiVDItz/HjCZNxqsLuW0mya+ym6e9HZ2hqq+nGxIX8v4i3SAR3MNfkkoz+bmn0jmz5ug=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736645754; c=relaxed/simple;
	bh=VgzwTjWsrQZaJDF6NwS7pC081EUbSMa7rbPXoaKwetM=;
	h=To:Subject:From:Message-Id:Date; b=VDfEjNKsEqlo75AVAEYRSULika00K+eMfKpnD4IRR90uO8kIO3Xa/ZPThSFmgk58wu79kYtV4AoV2lRsLdby8L1jiLDiqsToQpqpSmmrivgdMqFAmFWBTehtZd1+qk2lVoAQJS+wuIgsGkKgcy/DcsEZlqyBkNlixB6VEkaCQlA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HovlK52O; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HovlK52O"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BBC33C4CED2
	for <ddprobe@lists.linux.dev>; Sun, 12 Jan 2025 01:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736645753;
	bh=VgzwTjWsrQZaJDF6NwS7pC081EUbSMa7rbPXoaKwetM=;
	h=To:Subject:From:Date:From;
	b=HovlK52OUFOzYOrrMyhhyQCDWGk7fHdjTKOzcXfCCsONCLt1YtZwppfJ/i6NCaQfM
	 qGoXK66grSG8oHkYdFb7ZNN+SWa61CVF0XrocdM77UWZwBJnqULBGLRy/c7OkdD3Lo
	 xXO5Kgm/2BVTX7WZ4fcRkxAeFR0eGD5e3f7MARleSe4v8CXEc/Mkno9zHeqO3kD+Fx
	 iupVZvZcAzPn21pFbq6ZEhpAXDfy+htFOCzUiNIj2I4855dS2wlwB0XdW9IsUcg+Cf
	 ueV8q/6uMqVqCkG9ZVeGUo9Ws83nQoH+cBJoaxOJTq68GF7SPBE2qzp8sysUjcowe+
	 qjw884+etQhUQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C281E7719A
	for <ddprobe@lists.linux.dev>; Sun, 12 Jan 2025 01:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173664575361.28532.10986835089589548044.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cdfd0717b7b8137851e0441c62fb9d4dd1699df288b7cbd4aa6f88af8e4a60e7
Date: Sun, 12 Jan 2025 01:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736645753
