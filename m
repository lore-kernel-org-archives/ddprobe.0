Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D6311DF745
	for <ddprobe@lists.linux.dev>; Fri, 28 Mar 2025 11:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743162594; cv=none; b=NF4MK+dy9uWNTm9G7nQ6UUSSVcgJzNRxTE8UYA3ubGF+qmV8+gGjAIXuIGQUIxUZWEEJRk49SpoPaF81jtHF4PMaroJflmln/lBXNTWt8G3EsGsW5zJ/cPx83PnU0QQAKpdsiL5y0hJv+ah1W5hByZYXr/lvN41OVQuAkygxrzg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743162594; c=relaxed/simple;
	bh=P7ArFjBB6nmfUhAyNJte87bTsfd0X7iJtru26p7hpZ4=;
	h=To:Subject:From:Message-Id:Date; b=Tw3rHOeGwbea938khGW73uocuZdXb0zr/hALwx54yDIphR88ZvYQ9aF/e0paiFFdrcZ3OA6dj36G9aCH9YACALfhLdmnPd5GOrxtFZ/AlV/oF8aDhTCxTOyudPjqBtt59Jldyr2DjBNileWWXy2mn1J0e79euHsZBNA4A7H/vIQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KQThTGdo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KQThTGdo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A88BDC4CEE5
	for <ddprobe@lists.linux.dev>; Fri, 28 Mar 2025 11:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743162593;
	bh=P7ArFjBB6nmfUhAyNJte87bTsfd0X7iJtru26p7hpZ4=;
	h=To:Subject:From:Date:From;
	b=KQThTGdoNiHMO8eXBMEShp8KOHjZ9i5+pxOTYTkxxD5t/+kJnbPSs9Te/xoavPtV/
	 xNIO+oCawwsFoaqri64N7Hz8PUz0hqo/vhyzgeaHAzDy0R6b0Liq4A1z3WxRAmQyBp
	 zC8C8YsCWB2Qmiwen7O7VL305/6tl33NEai8rWF5UksvlWzvlbZKp+FoD+2fqHBZrG
	 9evhXgyMGnqTONHG2y0L6upNWKGZocOKeCPAQm4ZtP+BfRQUTPOlOS4yDx9sV8uEX3
	 2720hTlIeTPBk9gugwLbNMYYnFFgyWQXqVkXpA8t1MOZAPWGIXMvZzrYrO1Ye3BBea
	 AsnUx19PbSZww==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97B0CC28B20
	for <ddprobe@lists.linux.dev>; Fri, 28 Mar 2025 11:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174316259361.17744.9122383876952194148.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: caa211e01a0908bcf98b08bdbd8169da1061e90ebebbbfc817c1678bd2013564
Date: Fri, 28 Mar 2025 11:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743162593
