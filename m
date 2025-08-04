Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C7061EB5D6
	for <ddprobe@lists.linux.dev>; Mon,  4 Aug 2025 05:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754287194; cv=none; b=R1dbXQYYgO+9zWO8wWpiEgk9s9bid4ftZMb0YFEprbczzxxH9oDYzxooEpFqKzvk1MgCqjSLMKlzJVw7UgmUyGP98I/l0ICH/PW1EsVzDNHZZQQQR8y/Q5Jh0jKW1d9n9Nm6j2QdBIsjh5mHBfpw6Xx+BbJDkeMyCkqgCVeSaXI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754287194; c=relaxed/simple;
	bh=Vfy0o3DxR1f288E93/AYXm1xD1HsMX61n1vVcL1tzk4=;
	h=To:Subject:From:Message-Id:Date; b=ficuw2acnyI+T8ngMvxjkM9BxIiLIrcvLCRqs/eCh8PU3aaVL6cgSGBm9W2qpRCtBRxXhqtH/v7E1D0YIselsl3cQjcaK6gnXqrEwn/NHytJfVpboJORI+i1R41e3hevw5eNZ7fzgdvs00y45AKZUhJgRAlyodMdju8MgrI8l6w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=m5QvHaZs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="m5QvHaZs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A37A9C4CEE7
	for <ddprobe@lists.linux.dev>; Mon,  4 Aug 2025 05:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754287193;
	bh=Vfy0o3DxR1f288E93/AYXm1xD1HsMX61n1vVcL1tzk4=;
	h=To:Subject:From:Date:From;
	b=m5QvHaZsvAzZyePrwXR1sBd5nAqJU6gsAGPJ9Wq5dKSp/bExbXMkFqzMZO1GnA8ub
	 DTAtxUmZwAE0ETIu/jnzNbObRplQ3O+9Xir41g/bQpwfA4VauqqApT5jdIQu64oCno
	 MDAXnED/i52UeT3A9+uWyNzvIQ7byRvoGuElyG58/X6u+4pXAvfm+XRmk8B16ZmiJD
	 H6aM9QNiIsdDRLGDduHsIeOcX08O2Jv5Vle8g6cxc/uPJSxJ62UhAEsgh0D14Pjk7V
	 WCO0HYmEQiujS3ag/v3Plm505MB/oE4d2NWvvqwWep9QS48VE4rK29uDZ4ooVvJyDA
	 NiHoazX/fu7Rw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90714C87FD3
	for <ddprobe@lists.linux.dev>; Mon,  4 Aug 2025 05:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175428719358.22110.18150939188486436005.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: db9f7e8c73569287b2b4e14ce3dac4cb608a9ee2227437181c205142d071d289
Date: Mon, 04 Aug 2025 05:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754287193
