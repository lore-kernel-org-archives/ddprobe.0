Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19C8B2773C9
	for <ddprobe@lists.linux.dev>; Tue, 19 Aug 2025 11:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755601794; cv=none; b=aU0CJguweeHGbUvUZth1ovwQ7UWcfRhWgJie27/d4ULM2GmIH7oJZOY5jOr06EkUnBDbB8CzNsdWKwm1Gfid8vMd/F/Madxg0GH+0Hno3eJSSD696DlwR/zfIP660PsAB+GzjFS8vpjQDdcX4r2wKv00FpMKI089ZIF7xBOIbgg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755601794; c=relaxed/simple;
	bh=MD1ceITEr7YiWKgs2IuPhg8vaEhJORTHf9vMh7RMXa0=;
	h=To:Subject:From:Message-Id:Date; b=Fl4rGDZ0KHm1ChAw1MpMXddeulJcbe6FLSmIoO3xFQEacwSuvcY5g9maePevLfOte6aTcH6O2kkbm+iSkoxzoSpvZFi13YrS6fvVzFe4fix2SJWbGD+pQERI/waZW82o1+QPhQkaIVhKE80MJNVkAkNS/bISoJwjIaGWs6SmJk4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=r4VsFkLQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="r4VsFkLQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D62FC4CEF1
	for <ddprobe@lists.linux.dev>; Tue, 19 Aug 2025 11:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755601793;
	bh=MD1ceITEr7YiWKgs2IuPhg8vaEhJORTHf9vMh7RMXa0=;
	h=To:Subject:From:Date:From;
	b=r4VsFkLQ1zE8dJ5xaMx+ZaOd+fpHmzQevWgBv/Z3I77PyZlhhxB0u54G5zo9SGJvF
	 VtYyrLSiQOmr+GdG1xySPEaBC3orTVNdaA1JYEl7rNN/j5p3XeSfFafyjkE8k2KwQo
	 /0pnscX46+prljmchykiq+lqhbeStoJtyXPn+yQR06qgDzzTITPjUF4CuQJAMvVt2Y
	 mS0BNoZVsoyrqTdDD2hEMcAoFDahxbrg/SDzzf7/27GrlYzDnvlQFULfDp6L8p5Ljs
	 HQdl6zULw4fw+byu0jRk9XHwdhAXlsprPGWZXolLfP8S5FEwz7avtXogAlEoNW5Its
	 N9xhK7y8t8J5w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E8C2CA0EE6
	for <ddprobe@lists.linux.dev>; Tue, 19 Aug 2025 11:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175560179357.11585.3308172998098536480.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 536e2f8c9d1a96de86032b49e9598a27ee5c148b3b08738c18e000f946234689
Date: Tue, 19 Aug 2025 11:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755601793
