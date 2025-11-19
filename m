Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 91C5F240611
	for <ddprobe@lists.linux.dev>; Wed, 19 Nov 2025 07:21:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763536914; cv=none; b=aK1vM0VfQVR4aOfxHBhKUOah8dq+/fM4S0ddAPzIYFMsFg+KEJeKRbj4CW8sZJ3WgEVxJUPofD9VyXjFimh8P8u6fxEpeVCiAAb1EiuDbUeyGP2gs5P7j5h3I8zDR0b7uCwZf5ceJJCfdXssIrlzW20aXUukIklOuN9UZK44p+E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763536914; c=relaxed/simple;
	bh=aekbXMtnG9OBo+rS4Z9Uwu+tjzauS43u4ZGvw+uz7vw=;
	h=To:Subject:From:Message-Id:Date; b=rT6Hk7aXQzK2xZS+KS4KKcTkxNUEtdImh+Y7Ptmx53Bqag8OEDlNlyDxzQZBQLTpYKRfZBznz3oyQm3CfWunqybMctPU4bnUkdbUEgt28tD8Spelyut4kVUI/8B0ZMeuJmzWqR9civtsenb9eWOE8oUlUl7p7a8WYI9d12rmyPs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=roAbzUIP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="roAbzUIP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E9A96C4CEF5
	for <ddprobe@lists.linux.dev>; Wed, 19 Nov 2025 07:21:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763536914;
	bh=aekbXMtnG9OBo+rS4Z9Uwu+tjzauS43u4ZGvw+uz7vw=;
	h=To:Subject:From:Date:From;
	b=roAbzUIPxSCwLaf4K/1OJrkOMYTJxU+hpYaPfI3dAlR9d5OtaXPynECDF4Kp3Ykpj
	 rj0SwudSBlbdatJk46KDphqdDfmfrSVatBzD8DBEaQ/Mpq8HbIIp43+TcWMt1mPyFQ
	 PfAu6QyaPdC/N38NIbw8vSDeSzcFypFuROZ3vi7HG/RTblAmiqtcCCj3Ec645lJfZ4
	 cNTl5Ljd3JhHQB32/5GYFNx/xvS+A4/Nm7FeRFvN/SAKKjlKdCogUnT9GoGoktOKC4
	 dbDkU6UHbV7a4jTgiso3Jy1vYz1CQL1v++d/nEOtrRnjz6ConWIWkcfyNtnHIHATAo
	 Ft7iw4Pn10Vpw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98C34CF2567
	for <ddprobe@lists.linux.dev>; Wed, 19 Nov 2025 07:21:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176353691361.20548.5823467106417304734.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d03782495f355910661bf1d43a022cf10c8a9be608fda24e083d0142619cca42
Date: Wed, 19 Nov 2025 07:21:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763536913
