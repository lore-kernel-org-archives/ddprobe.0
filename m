Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D33815278E
	for <ddprobe@lists.linux.dev>; Fri, 28 Nov 2025 21:32:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764365574; cv=none; b=HtJimakFkANpEHv9yeWWJ6XzTmB5LU7FDh7qR2mY6yMb/LFw/nQkmvyRhW5AuL68PPQ8HkHm5hehQxgT4PpnPJxRWQ9GYoJEfUwmyiZkTTON8IQBrfr5DQEQRtpqv0MlnCxvKAWZ9Mz3NBc93rapuUNqDOyxi8TV9vS5kVIjeQE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764365574; c=relaxed/simple;
	bh=kDpkTHdlO9fy4dt/EwkDjRouyPSx81T8dcfZmFAEPLg=;
	h=To:Subject:From:Message-Id:Date; b=du7SZjSkwQqLb2TKt8jjaETx4K4eRaazzaW/zAEndUZlJjMnI8O9LHWZ5czwrtCdQQp4BTkvooO6e7aSwp0PKqMnTtPCZtam6qJOOQpki3bWB7N4ry8Ke9h3MhuRUh12QVyDErZt0ZXzhTKayZO4btUIYT2TKLEHJr9D7Zb/JAk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ug4ufGT+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ug4ufGT+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9DBAC4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 28 Nov 2025 21:32:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764365573;
	bh=kDpkTHdlO9fy4dt/EwkDjRouyPSx81T8dcfZmFAEPLg=;
	h=To:Subject:From:Date:From;
	b=Ug4ufGT+9YIJDl9Ta1kAgRahwkdpV4wIM9QpoKgSbkrEIVde46CWsItyDQEqjt7X4
	 05FRv50I8nZexxWlD0O1EJ3IfRTP+Bp1Tptr1+5A+/CteIhsSZEGZbd8XGhp/n/EzR
	 z9ESQdgxJf3Icn2GrvsbSTsFOLC15LGYG2gjhUIlaoXjSrS5+0vXmHc3ToklCbzraE
	 7ldT5z0rmTED6gvopz5V7X7zKpigcLlGD4KkuxmCgSaioS331sYjgJqXk4YBThCEIw
	 s7iNgVZuMgmGlZPDqVkUSiJssP8JfrJiTbobGQazQEHI3x04bkam3J1sQRzA7Ubfvh
	 DyQPqyASnVfSw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 970FFD116EA
	for <ddprobe@lists.linux.dev>; Fri, 28 Nov 2025 21:32:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176436557358.27764.8028047858815506344.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8bf4d08cbe6bdebc18f57c24c7c7c6577c8578e51608a601409229a9800497a2
Date: Fri, 28 Nov 2025 21:32:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764365573
