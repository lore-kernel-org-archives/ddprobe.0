Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 593BF2F3622
	for <ddprobe@lists.linux.dev>; Mon, 13 Oct 2025 08:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760343594; cv=none; b=ZARzTegO6cVm1Gp/qb5hYHRAh7vlosCdfu4Kjql/n9uzFAijJYE10MCdKV+UPXMgKwpTbDyDZMIVnDVRxbuK6Krj+TWLNelMYMSWYE+HYZrRwQUes8CAcbZ12pucjvkVIpWKOHwjQDk4bOQQEA/SlrbybwEgccyo6HVilbc29XE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760343594; c=relaxed/simple;
	bh=m/fZOkgcBoTL9qIBwr9j129Ayr86Nra4anP8N1fHi9A=;
	h=To:Subject:From:Message-Id:Date; b=njxoNSA7Nly+yRsbuxiWiivg4VeY/lac32Zt0oInwzC725YjujWQv6dNKwnuotUUK622FMMnEjnjpzoHA1hbKYq2T7j81Ydh8hbo3t34WlASD8sRjJNCLBsUQPJ/TPB/IeA3BR1yVbA0p4L/QGCai+S6Na0/B0VFMjjHhWChJ/A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=r1k7csIA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="r1k7csIA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F925C116C6
	for <ddprobe@lists.linux.dev>; Mon, 13 Oct 2025 08:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760343593;
	bh=m/fZOkgcBoTL9qIBwr9j129Ayr86Nra4anP8N1fHi9A=;
	h=To:Subject:From:Date:From;
	b=r1k7csIAwmHjNaBCkFfzS6UpK4hgkyPNnnx6FzhddTySaniZ0g8ifziOgFpM4KLNy
	 AFY2Y1ggqH6wEudDBNU9g4ssIawK17s/JawCku/+kvGtwqaE3p45XGiUHqg6ASFhgx
	 VWAFrRuibTHk6BkNNZhceiRZbXESKV4jMzrguXfpJWkAHSkCXBxTNjmYCQIMIUq4ZN
	 SiTQJ0mb3MTk/imsrXo6qa4yiuLknycES8wn2gGyvSzVZ2EaP/S7AqTuaa1mdAYD/M
	 k3IXA7AP7kyrhB7LjFZXwDzTpWHQb8DrrH1ARuMKQySouzPsVvGuCF1SSOxBERPzKH
	 f/AfKuzUNWcKw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 902F6CCA476
	for <ddprobe@lists.linux.dev>; Mon, 13 Oct 2025 08:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176034359358.29601.6124864453316297341.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 48403aef82b1a8c5a6471ed39fe38893bcb63bd1f64bedc53daebf21d43e6163
Date: Mon, 13 Oct 2025 08:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760343593
