Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38BF5635
	for <ddprobe@lists.linux.dev>; Sat, 28 Dec 2024 08:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735374354; cv=none; b=kjQQhOeLIl1UB/fSWOZS3r7fa2zXla0zAsXk/KsGi7TGG7FtGQVOEoruOYAkRHAtLIwcF/OwTgTSGedVqpMvRoP9U5DJ9UADxjmUsN49+fgYKSDqY7xJ5pZOgqvKUAVeXTzdEztwCH23bqUEJde/KZjEmRz1lfMZn9lA8Gn0UZ4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735374354; c=relaxed/simple;
	bh=FQSgd/Kk5uAJ5xwkYHM2OY+iKmDLJgNJYu1f2TBNrmo=;
	h=To:Subject:From:Message-Id:Date; b=pBpx8cjpNlPhvy6OEIGGLaL40FaZ5x+ULRjT5W8zvwqbSk4+ZcncHmojPgLaElA4EOebHUQGMnpjmWqpI4z58DJXw9mYSqz/1zY0fnqx4wOOdgTG96Zesghu4Xh7Ji1OybkqGRCsGcW/muP0DmKPZeqEF4V/s+swRg4gCk5m3nA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ggQfZ/nH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ggQfZ/nH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1410C4CECD
	for <ddprobe@lists.linux.dev>; Sat, 28 Dec 2024 08:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735374353;
	bh=FQSgd/Kk5uAJ5xwkYHM2OY+iKmDLJgNJYu1f2TBNrmo=;
	h=To:Subject:From:Date:From;
	b=ggQfZ/nH9TSn+XkzjroR8uhwaCjtVCitAAJQBfw2HJr2s/igASiF/6nQF1zRedM8v
	 gB5XCVC5iXQYDwH0Mp9kEHji8mDnrZwSYCRva3s1IYGB2jzYRDpDPWirlvPQo5BKhp
	 XyS62OQ0DNw/mJyInDQLYZq8xZPDvuZoWwXY5yO5oEIyNr+frSvzWNeUff0qJ/InpN
	 hmOPffyanchbG4XedYofYYlW9gBdN4E5ZJ1Mrc9g8UtV+sRvSdO6019IYNsL2VNImv
	 sO99Z9LxuVA9U2dabBYceT0vYFVx865H6I7FxKeC9AGM5ly6Lz2LYbD7rMAcN5bTUi
	 c60pHWuvyVljg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C2EEE77188
	for <ddprobe@lists.linux.dev>; Sat, 28 Dec 2024 08:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173537435360.5565.16486534751740354947.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9acc8a734ed40e6dbc264d8d2de7e00648eac4209010468f108c240057fe73d9
Date: Sat, 28 Dec 2024 08:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735374353
