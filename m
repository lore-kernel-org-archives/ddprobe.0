Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 268C51624E9
	for <ddprobe@lists.linux.dev>; Mon, 30 Jun 2025 04:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751259595; cv=none; b=VaDsofH9FI3HvRuQkzwNs/ypvfurMaN5YXIdYxY0JrfugB6PsqFko+oPi6uG+WeztZSBJ66SV8M/eFS/h11zZpTBlRlfNO3vV+YWnGSduHnO54KqB/zzi3hKyz1TJ7z5ZoNqUlhQy/pSA+Xki8QrYuc/q4lxiMBq1X235j612tI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751259595; c=relaxed/simple;
	bh=v2q36S0l7s8ZseoD2T9IqC0VpgH8P2vs+Oo5GD+vt1U=;
	h=To:Subject:From:Message-Id:Date; b=TU3EHIInstjRpzt7jgJ5Lwiaout2WXGRcLOPebisMddshV5CHYblxFu1qUFKdRjb7YO1+TA1eesNyIq4iU+kZ0h9h64mjN51dEjIudN68PaPEDXz+D97dAmvuNwzfDIQcmrVyvcO+bp3llFqipMqXsEDi+MGfJwUfE4oIf51fF4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=a2vrBKIp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="a2vrBKIp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1129C4CEE3
	for <ddprobe@lists.linux.dev>; Mon, 30 Jun 2025 04:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751259593;
	bh=v2q36S0l7s8ZseoD2T9IqC0VpgH8P2vs+Oo5GD+vt1U=;
	h=To:Subject:From:Date:From;
	b=a2vrBKIp1P0Zc94zra62inBn9tnBx/9hvTv7URuwBvoGda/8d0rzHiqUkc4D5YRE1
	 Z9gTlC143DC7NfBDrB1+YhlUIhJ9WGsmi/nrpbsCHtREzwJU2H21C73bfz/hKchctU
	 eJll4FTfCdnU97ow47GEj5pKJaBAEHnoxgyw0bPLR098peZtJkp24qbh3+/MtJ5RRf
	 ma17Hvj2onkAbKegYfc9ivM0Gu7V7R5ei6kJ/LyAR9lfjy9kax1An5A4l2nUwomDgu
	 TunhgdJ0rsDUqDykXdmfcqOzhupqCfd99X8VMo66fl9obzDlWc1hk1njX518oq/siH
	 VgXmZRFyD6efw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90832C7EE2A
	for <ddprobe@lists.linux.dev>; Mon, 30 Jun 2025 04:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175125959358.23651.11479695224720604347.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f57ab96a78a0630a0c44a09477d313bb11f50d4a71d511e819b297b92f5faf11
Date: Mon, 30 Jun 2025 04:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751259593
