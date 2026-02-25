Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 301D533BBA4
	for <ddprobe@lists.linux.dev>; Wed, 25 Feb 2026 22:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772058894; cv=none; b=p9G3VHS+XT3PIG1EWrRuOxFIzatkbcc2NRlBBKQqd5JmexOQ5wdMyVONCFaAPiUimsGtU4S8mhvoaRruEu+S0kvcGlmyiwK+zADk1Y6i2pKbjFmAUPQoKISE40cs91r5a+glDaLz7NM1j0y55wa/SC6SkclTjHxA6o5kazls+S8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772058894; c=relaxed/simple;
	bh=+ZZfqsA/gTSPeYFXdUTnVC5ukgpTRGOSF3DpQrXZ6Qw=;
	h=To:Subject:From:Message-Id:Date; b=qxLTKQZzSh39vvUkxqVugx9nVtmsTjjFy5QsuTnoaoCRKluFPEdojA4upYNG4DnE1rgTM7ZxcT3X8N9fTYQjZ4RkDRU3PablQQ3HuhmsMPQ25oUw22RN11n7u7O7RTKoPZw435U0sBAM4Psh3HqeCUwWe9YuhG9WjF6vsqEmU0Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mh2GelM5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mh2GelM5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC5B3C116D0
	for <ddprobe@lists.linux.dev>; Wed, 25 Feb 2026 22:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772058893;
	bh=+ZZfqsA/gTSPeYFXdUTnVC5ukgpTRGOSF3DpQrXZ6Qw=;
	h=To:Subject:From:Date:From;
	b=mh2GelM590JIS2d8ajA7QG56+y1UEWL6G5K3wD0YdL7tvW+rimpzfiAiSug2YQLdS
	 fplDKY0TjlM6ncWVA/bVWe84ihvvy9Jeo9hss7zOWPXXcz4PGvUmcnnavCd6BjjJyW
	 F1rLB4n5DzVvpnzbIk26IEhAfweCYCGWpaKUrdsXLws1kS5O4rhRXA6R7WV2PFkPi6
	 vSixBVyrvFbpesCGtusaussYTPupVNNnRBSUxBpnz5rdavJGe8Sw5lS6hqLt9eBmqd
	 UH8R+ecevOxkKS9xHHy0s3apMtC9zA5RounPmyLzKCRO5yDSBgofw6Um23IbYIAltI
	 BiLJYWMz7c+SA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E242FD45FA
	for <ddprobe@lists.linux.dev>; Wed, 25 Feb 2026 22:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177205889360.22688.15017425884609613429.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 923a7a3445573c81ea47c69427463e6a7041a851ece2b3a562c8bf03197ef8c0
Date: Wed, 25 Feb 2026 22:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772058893
