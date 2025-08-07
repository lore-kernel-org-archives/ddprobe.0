Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3EBF643AA1
	for <ddprobe@lists.linux.dev>; Thu,  7 Aug 2025 18:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754592595; cv=none; b=GyNItSjkmMxeMDJjc4+S5aR0rXKzGpmWlc0SFj7PKJs/g0o/MXirO8hGXP8LhdOyDMa5YiEUwGE0QO9zhvjuLIi7M1Ie7bOvVcSTMqupUn8Z92OxTTBzW9FrGXCY55R66g7WWDgUdsxtW5TPQZMHehdRIT4C21JWbWs98tlUhbs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754592595; c=relaxed/simple;
	bh=ZbpJIk+SyHJwDM4HCXh3gFrz/F8B4KPAhZBNvSHUizg=;
	h=To:Subject:From:Message-Id:Date; b=NM7wmjW7VI9aSlLlYq2nictNH0sZu06pJsHosIcZO61AL4LBCcedgrwBlEuaIpT5w6adW5KHd7qPvzOXOXcKhEvKmBoFjJNQHISiGG75OVzw/8L8uSWn/UFjwJ2WUJQIccZ+w4LVQyyQEbusYD4PTer6RGRaf1XZHrm6QVt0ZgA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GFtzhBm8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GFtzhBm8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BBD60C4CEEB
	for <ddprobe@lists.linux.dev>; Thu,  7 Aug 2025 18:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754592593;
	bh=ZbpJIk+SyHJwDM4HCXh3gFrz/F8B4KPAhZBNvSHUizg=;
	h=To:Subject:From:Date:From;
	b=GFtzhBm8bH5/p03mtWcueMMuLx2LEdz8aqtHbILP1kRd1c0H4s3R7fkdfuHYXTdPI
	 e7vtV+ArQzL5Q9nkuJHbWCSK3MrCnfAw2wma5S6xdpqKKBeZKx+lLiLOmiudlNr1x/
	 /qN/YjQzwACklNQWargOuVgXGakTBLTgCFMvTatyWUxututmmrTVb1g9NdC3rTpgW5
	 fldUXUhBhGoZcFSoA4UyvZ9p69aAJPwd92HqxQup4A4GNhxRHnAVF9DeteiPoGQUnu
	 L695hdJQBXbS503pwKvbQ3dcweg2PLzsW/a4WVHY7DEGRf9KP88gS0b8kGYyyl5zSV
	 e8BbxhGQUoZtQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C813C87FCF
	for <ddprobe@lists.linux.dev>; Thu,  7 Aug 2025 18:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175459259359.2860.13786922976032898076.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3046ff449f7242b2a08270ac6fbff1d244025e3a034f0eac63983eafd032f933
Date: Thu, 07 Aug 2025 18:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754592593
