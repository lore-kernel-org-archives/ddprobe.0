Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 14D4723BD05
	for <ddprobe@lists.linux.dev>; Mon, 29 Dec 2025 19:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767037434; cv=none; b=SUwhTTe2VS3NZvcMCSVVuTej5Vqbebb1xtVuOQ2fp0DB5AepRErTHHzLSz1lReMqUW/ExM6skvqR0StpbQcttFnQZW8pIg1DUWNRBvvKjLz91CQzbWUe+3lpHHx/C3KST3/Tzh4VBq5PdeAJu3cM1ZRUYoeonQdEyV+eLOq09KU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767037434; c=relaxed/simple;
	bh=nr1U9B3zVtdL4itFGxS810usRz/FoChM+FvUPu5zCWE=;
	h=To:Subject:From:Message-Id:Date; b=rb9cIPeLMkjsB/TBxKLY8wKOOZXxCLN9QI8owKIUhbzLx8eq0EpsigKQlxZkai8ezt7qWIbgs6iL0LFkUppp6WTml6tbvS8C5BKaIYpb3cEiM8EEnNBx4iwXN7VP1XKZPyeDLzBsWDyjo6PzZ5F9+pwu2FsRrj/xuJqqpPWWVRo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UcTdpxIS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UcTdpxIS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9BB39C4CEF7
	for <ddprobe@lists.linux.dev>; Mon, 29 Dec 2025 19:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767037433;
	bh=nr1U9B3zVtdL4itFGxS810usRz/FoChM+FvUPu5zCWE=;
	h=To:Subject:From:Date:From;
	b=UcTdpxISTyFlHWg5VqYnVIoGDfKafFqQcFIfL8Tb8rzbB3dzBneyyNQBdSUnZh2gS
	 wejNwtKnFJmU21VV00Z2dxyw2IPdWw56LVWZVgxMOLCrX3GTdKgwP0SFjFqfbMvCba
	 QfXEZURLkiLOR0Wx1VD32LtekP9gEMurMRrllQxdpP2KRSXysMe5LScbRTuVO4CKXk
	 AFd7BKvo8S9P3fJkCyKIhlvF2xWd2kvBQzfGWaF6m2+CAyXmFwJdpgN+bnNo5aOTM3
	 zQyXx8doJb0dZrfFRmQnUOVRl16fQlCFYKmf817dVZWT270fuKXAergbnC5xog90D2
	 qECd+N7WG6F/Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FDA1E92FCB
	for <ddprobe@lists.linux.dev>; Mon, 29 Dec 2025 19:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176703743357.14585.17243531198581193507.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e85a64fafa30b14b39c40ce14d159a8057d3ca4902481440c411eabde652b58e
Date: Mon, 29 Dec 2025 19:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767037433
