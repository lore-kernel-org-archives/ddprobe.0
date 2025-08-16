Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2693672622
	for <ddprobe@lists.linux.dev>; Sat, 16 Aug 2025 01:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755308994; cv=none; b=r+tL4eXx2k226Gmd2nZtnouY3FaoWJsYQ9626avnOTAiGRLzwb4rKfrcgoEjGzANl3Gaxaqe8LaGQZVq41K90XtHP/k93CwfBM0y0DBhlVWf3o8logipXfcys9iVAwmtkGejAwsenx7b4M8tCcyf8RtvBAk3ZA0NQVE268zQZzI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755308994; c=relaxed/simple;
	bh=6qRJiOurSLBWNdAdZSS6EZT0tRoe5NkeE9IUZoQUxmI=;
	h=To:Subject:From:Message-Id:Date; b=Yq6b8Q1K8U2/6u0rGcmubgCQ7ieoUa6+Ohtkp2K4P2tYz4c7x1pwClYkwx4o3yIcryyoaaWftst7ao/LKqFiIHA0o6dmhumpgP5t2v/Hg5ZswFILmC1uOKtmF7DuWmvZtJ7ZjDE1paTxgBeb70hdvmAc9d2xksALsl+QhUYt28A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uOszjqxZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uOszjqxZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A23E7C4CEEB
	for <ddprobe@lists.linux.dev>; Sat, 16 Aug 2025 01:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755308993;
	bh=6qRJiOurSLBWNdAdZSS6EZT0tRoe5NkeE9IUZoQUxmI=;
	h=To:Subject:From:Date:From;
	b=uOszjqxZB+ENLwTtV2aboi9vi/pq9u1hQF/imyOdt1Hpv3s9DQWyLcDIJJzUpJ6lV
	 fhTPdU5yBX4E4+jqo9l83E3ARHAMjE8PL6TIyFezwx3vFJLzkBNKVyIYw1FXL0b8Pw
	 DxYToqYYdONScZLUVzV5wM2VOO76I0jxSP9nGGNY+Ze8rtJGPKEFJSGxJZ1cu6k7bj
	 lWgacZrmiZSmQMh/vH0nMSWViy8TwuhfopBrvjVPZ5i5NjUEx+rc1zsNRKz5/LLatw
	 Xe4LiFU9nAtHpUtl4bcZl4sUpCvsCtQxgMvBqAbZinZRchroD/tSOUw1HLk4eP6VSH
	 tp+cAROUXJEfw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 912D3CA0EE4
	for <ddprobe@lists.linux.dev>; Sat, 16 Aug 2025 01:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175530899357.29186.14625896168100304802.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2c3ff983e01378296d02aa38e8dd40eec9b55516f61376b8c3100618848f2bb7
Date: Sat, 16 Aug 2025 01:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755308993
