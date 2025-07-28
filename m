Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 234B4249F9
	for <ddprobe@lists.linux.dev>; Mon, 28 Jul 2025 18:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753729194; cv=none; b=k2kDT4q/iQ8e3+KbI2sr9yPoXyYQxPEjkFHdsbdoSgsUxZyc0yqQibH/xGI8UyI75anyElDOkM6Cn+7C2Zl1gC2F/Vk3vr1kR1V+z6HMpepIY6dEg7u3Qr8tuCTt82un/d6aa08nJXR33kI6hkiXANloCDnu9dqweOwIqw/qXqE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753729194; c=relaxed/simple;
	bh=DGCvod82XSOUka/KeHOkna3zBJ1fW4bG8gcbuv8iPD0=;
	h=To:Subject:From:Message-Id:Date; b=gkvLonYk0BrHPXbyRNyM6M5NknAjr9yjhqyHoP01jXRDuvHTkc+oKF76wP90W1R85OnkcRwsIgsM0N8MNvYG6MlndJUGE0zReCnBkOm0UIq/qDLliI3WznGsb9s4yAcwOhqJRRbaqjGGxSvJ55W+gjAPsp0Us2lkYqK93SED36Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rWIA1A3Z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rWIA1A3Z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0C3CC4CEE7
	for <ddprobe@lists.linux.dev>; Mon, 28 Jul 2025 18:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753729193;
	bh=DGCvod82XSOUka/KeHOkna3zBJ1fW4bG8gcbuv8iPD0=;
	h=To:Subject:From:Date:From;
	b=rWIA1A3Z5O+3EwU4WlMaqVmapq/9PtLY9ZPaMHLgxFhP5alW9u59tQOksSfThTrgR
	 RKoXybPLB1sOjMbDJH6QE8pfCpecsajMTV5sEXKWp6yCpf2QzxbUuECoStphp37CxN
	 YWKxddr6GuKIB3U7jmXJJh1AYEJEsccVNf/dtx/ifn6pDTqiprnRt9Q52EaBnKZQC6
	 JszuY+8pvfHOvhKLvJoiKezNN1XowS4Y4aUpR1jN+MVESWp7YM7HpgGsLO2GfDHBOs
	 OFb/so+WWavVOoB7FmMzBCKqm/QBm4HgZa3aDjJ2GmpUatM8V1ACVdD/kfylB+Iogq
	 rLowo5KKqlAEw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F7AEC83F17
	for <ddprobe@lists.linux.dev>; Mon, 28 Jul 2025 18:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175372919358.30333.14982176230240970141.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2dd09b7a4270307850eb8e3a755f47e47ed88cd6b7aa734d161054ad58e955a5
Date: Mon, 28 Jul 2025 18:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753729193
