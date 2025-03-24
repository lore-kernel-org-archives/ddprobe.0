Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 525372F3E
	for <ddprobe@lists.linux.dev>; Mon, 24 Mar 2025 04:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742789394; cv=none; b=QrzdjUgHyyyQb458/ulgp92Peg1iceYR7prGCr9poQChbaSQ3tAm23Hxuw8B37IG6cdmzpfRrpkeYnm8PM32ZASisjm8HGJoR/5qmmottamSYI9Wpd7Y5ZaeBOHeX2wWDrPy9WHXr6X8hEvo6dXpgbqNQK9GJWFXvC+vuFOuqlg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742789394; c=relaxed/simple;
	bh=8eV8zrvObsGj2roe7jr0/6NAlRnqbAhdu7mE3RCL5ys=;
	h=To:Subject:From:Message-Id:Date; b=Jl6Ln5Uc7B5lepuaWDhpiKSKMf4MSU+6cdkTdPOfofswrZcfJZnO7oba4El1CW5j22ftj8lGQHIwwSD1rWDLqg89pqXiBNJUcjyz5l9a4iieW71F7dfyWqynnZgjNGpf332/MgWvaswTImPGoUFCEbUOUVzegxR2C4CY/wRfp0c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Q8rEmPUG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Q8rEmPUG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BE4FBC4CEDD
	for <ddprobe@lists.linux.dev>; Mon, 24 Mar 2025 04:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742789393;
	bh=8eV8zrvObsGj2roe7jr0/6NAlRnqbAhdu7mE3RCL5ys=;
	h=To:Subject:From:Date:From;
	b=Q8rEmPUGIfuAx5RJItUQr+nMDuOI80UOag5MSQjt+ErUHU9Rj9ZzaT6aw80cqFIWt
	 vBfiJtmmRpY46cGm5cZk63BBmfw0jDIT0O9gpKGGPunJFK9asZtn9K07BDWRmOeQHy
	 /ffgyhuu3D0t3k9Q3e6na2hSXPHuyW7RKeooqpsECSDkoOrn3IiCIxh1FBdia2Irrm
	 NwVOZoSnNo980RZtALhrPnU9wYeZlgxCdWY2drdsIxZeTeHuovOZ+QitddCim6kyan
	 bYYrNdUarKSWZECsCsRcmkbY7h9YIn4SK6gnPxyVBNyB//18AMZAdwM1ra1NOo2M+J
	 TO25bedFYQy5Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A371FC36001
	for <ddprobe@lists.linux.dev>; Mon, 24 Mar 2025 04:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174278939365.23658.18429055466238050430.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bca39309c370d0111ef919471c732111cd16e856de4c2851045171fe58ea3a66
Date: Mon, 24 Mar 2025 04:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742789393
