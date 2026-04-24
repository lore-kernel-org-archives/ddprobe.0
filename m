Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21F6F1DF261
	for <ddprobe@lists.linux.dev>; Fri, 24 Apr 2026 02:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776996454; cv=none; b=aJHKX/qF5eh3Ymb9dXbvHhlLMkrbNnjtPQDb3bEhYqTVZry4gz51s8PZ5+bysxpgOkU4VjBMhqXl8v6DuG7M/LNOaKfT4kRJFbCLQiF40t8livdIih8GtvjPxKyYWuENAZwCuwIg+VcSvTyihPY83864kvg679wzdozHxtdvmaM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776996454; c=relaxed/simple;
	bh=7rxQBxCj+DqIcyrWhuDJOb+KZoAwzTLBZyOttRMu9y8=;
	h=To:Subject:From:Message-Id:Date; b=StKxwYt4AlmZhI/syTazdD+2DM2umsBWv29zAu0qWGgispGdUuWf7OJd8qvK5cXr8NlFJSZlvjLv75TSHThC8tz03sTFduXtk3eMVJrRkK+9BuZM1AusxZb69+NcftdkSGUzGZT3HwK5Zr6JwXpMtfglpzUCKy0fHEBW+OyFovA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BJqHfr8i; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BJqHfr8i"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BCC0FC2BCAF
	for <ddprobe@lists.linux.dev>; Fri, 24 Apr 2026 02:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776996453;
	bh=7rxQBxCj+DqIcyrWhuDJOb+KZoAwzTLBZyOttRMu9y8=;
	h=To:Subject:From:Date:From;
	b=BJqHfr8iHmYPx3IKkDzKAJNzaXkD6m4I1RS6p0AzRYBtZavwlWPhNlnl7DSjepL8h
	 Lz+/bkwrWawyNsi1//HGUI3cAwqZF9PJI2XavSDiDXr0TTsT0+z46mc0VQ2m/oWX5i
	 b+aZygdA0qArfMeyAjdZ94OnZ+aQ+NwojJeXE084PJfb7B1wOQsaOGxuNcYAZAZa0Q
	 M3lC9tRPzo23SQzbLyKZd9AzRIdfVubMWo1/oZ7iWUT0k7bBjNRv7iRR6hxuVsz7rd
	 8c9SaKUhqvKWOPVkt0fQ63qH1RPG/Atb/XQjqznuoE8aMQx5F0Nmi0ZKbiOrl7wQPX
	 tnpts41CvVoZQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB8F9FDEE59
	for <ddprobe@lists.linux.dev>; Fri, 24 Apr 2026 02:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177699645369.29559.3400082265909951253.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 905fe1b8bd120a8df9e016b128bcc74eda6898338a585b0c7a9b77fba16f0d45
Date: Fri, 24 Apr 2026 02:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776996453
