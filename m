Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 53FE81D130E
	for <ddprobe@lists.linux.dev>; Wed, 24 Jun 2026 16:17:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782317854; cv=none; b=aN0+YlZ52UNY7ZQvi00zlUbEbvLlIoKXKbB7ZHPUt2YwTZ2y7+8cYuG6toWqJWF+b+R72oX2gbQ9+aoyQe7anPnAamPgzqhsemB493z7P/x931NfrLDaqLHyyroMOFJ8n4sjrTVehaVPl7kATh8qUhARelvmKFFKgFggQISfjXw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782317854; c=relaxed/simple;
	bh=wT8v9rCObwWu2i5Jm5SvQxY0stbztzPSfOHGyiAb01I=;
	h=To:Subject:From:Message-Id:Date; b=jtjlVynLAmJvbrjrcWb3a2FYofh4n7n4wEOnW0muW7qzhE4OYLyGM4mZNVlsl72xzpC/vsFkI/g/818Wcj1o/OkRu8SAzw6v7wLJKsQ1zmrEPw+NDlrZ2WkC03KX3yGytb/y9NtrPfKTXamNl73T8N7+fys9hx7nUe3LkYvhssQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UUULoozA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UUULoozA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA142C19425
	for <ddprobe@lists.linux.dev>; Wed, 24 Jun 2026 16:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782317853;
	bh=wT8v9rCObwWu2i5Jm5SvQxY0stbztzPSfOHGyiAb01I=;
	h=To:Subject:From:Date:From;
	b=UUULoozAVpxzRcZTElyYLK2e7yOHa/EzbhgLtnmX/Vx+UHpXEwElSoktsYzIJAZn/
	 RUuhKjxcGX6x/r7lmFY6VkPVHeK3OAbj6yx/whBvHBCWk3CiODMucQ7R/jmwfM9KoQ
	 4MSq1wDhJXVSMlpDnWQVpbF0C0elSwvbatsMoTkhlMfQRJ+haXLzVoBa5PlFQBJL5z
	 Z+AqtTzwvt50038rYk4XxWBj+FvR/6m82VnVISUjvhOuVvvRjrAcXFiIzPPqJh5+6d
	 MlRwirluuOg9ybAONbp+7pl6Z1WSztaewMErnvT212bBfnYOnrzu3gUUBhtmeP3GUC
	 2h0UdYjf8ekSw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B9099CDE001
	for <ddprobe@lists.linux.dev>; Wed, 24 Jun 2026 16:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178231785374.24930.12999998686402087838.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 120dc04b2f7309c75f69eaab818b7beec942320b1101c4f6bdc70fd416717430
Date: Wed, 24 Jun 2026 16:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782317853
