Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 53FF2209692
	for <ddprobe@lists.linux.dev>; Thu,  6 Mar 2025 09:28:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741253334; cv=none; b=ArXp8DtXWlAK2yOH8L/L4E7wONXmO8Bsg0moEF+5FuhfF5KhzWhgVp0wGF9Ygj2fziOdk5SMplfJaNkqzly60U0Co15bQApWK/YWMKKH+J1sEz8psk0OvXnamyML78yx9oalUXU3jtiM+puQJQtcwmld4t/t6V4YysyWfP8Rlrk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741253334; c=relaxed/simple;
	bh=h5E3O/0qyWJuTQEfP53xHCi6F8Xj2Hai+RiWKJTyh1w=;
	h=To:Subject:From:Message-Id:Date; b=RdKxUP3DEiCbSvD7U5YhspL34Vd/vdFZwnuOdHdPhMKQ/DR8DusowLhHugHfVC98r/ew2Nw+XVMEPxkiWuEZcYs0mJWIwo6yMiBFCleg0zhyBH/kemcgy+E1GvzujCthkh7KAvQewlrQRpSItoBccrWQphjKzrxPhfcf1+MWDRU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tZ3JXWbE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tZ3JXWbE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C6475C4CEE2
	for <ddprobe@lists.linux.dev>; Thu,  6 Mar 2025 09:28:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741253333;
	bh=h5E3O/0qyWJuTQEfP53xHCi6F8Xj2Hai+RiWKJTyh1w=;
	h=To:Subject:From:Date:From;
	b=tZ3JXWbEhBPgVsgf/mpyiAXZzNwLbkrpX46lGhJM5IAtUwNLFv/uAKbu/5L7QSD47
	 Ja7KgciwU9ZbOFofYFUdXNwva3N6A3kO+sY5LNK4Ns4F9cHBbOvyjGWnHqs7j9rAzw
	 YGSvmlUG7LpBpxnI3OBeyUKjakftaNipUQC1rwj5xk/B3A/Pxc/2plk1/XLcOY8xDK
	 ClhKLFBRNqQ72sonpCqdhcgHM9fYBp/gkLNB0qlaODoZasSlYR010eJkOS70bAyYhc
	 0yBRJWc4l/6Z4/KwJgqY1cuRAbs9Jo7mnJ/JD73HQk9Iz5N8a2f9aVpV0yrHt6AZ26
	 tF49VGzMsJx4g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A1609C282D1
	for <ddprobe@lists.linux.dev>; Thu,  6 Mar 2025 09:28:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174125333364.18039.12258025838821090069.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 878dbb3ff4c986f580ae41e522d149175fcc2f317d13c7351b99a8def02c4858
Date: Thu, 06 Mar 2025 09:28:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741253333
