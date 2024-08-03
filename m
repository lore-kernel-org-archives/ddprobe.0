Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E3731755C
	for <ddprobe@lists.linux.dev>; Sat,  3 Aug 2024 21:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722722154; cv=none; b=kvuwWkvqIoHR9Phf8yWJd4XgepNhoyiGjmclubMViH8O5uDQC6EA5nnB4xSn3HknMr34+JFr9XqfX5M6P8YxE+yo2+9cn6QWVkhA5kElIoESWZGlbjKCrD85DAFfIxASK1wbdd99oZoWIw/N0h9nOgUsEW55BGseObtAojf9EUw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722722154; c=relaxed/simple;
	bh=DD6FttCxAqxxebvbkuNO8XW4KGN8BXiG9GQmDUrFZaI=;
	h=To:Subject:From:Message-Id:Date; b=BKYk9oVaQtmf+fkeo34Cxo7b0hFksg5S8rNaETRxT/I06klX0qWPLuvrYAhF0bDFn9Rn6r5U88LhthomVnSZ6HvLXgURtzyvlIiO0t9wWbutvFjquqnMSQivjHo2lorwcFwSFfnpKh5r1ioUj3AfbL7/I4MkKfsSv4Uv1e/Ddxc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nWH/I7LZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nWH/I7LZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADA22C116B1
	for <ddprobe@lists.linux.dev>; Sat,  3 Aug 2024 21:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722722153;
	bh=DD6FttCxAqxxebvbkuNO8XW4KGN8BXiG9GQmDUrFZaI=;
	h=To:Subject:From:Date:From;
	b=nWH/I7LZIFfKLAnD5/7JvCWWKdom9Kh0EXgSbAYC+b1EJCUUQCq8LBEYFqwXi4Nwl
	 EtiAic8yfZp7oKIkEQCZYzzamrn9TBu/WIMz7tUW3nMEiNPvXKyqexF22A5RJZ1neU
	 HiY648PKcgJ5sigx9942j7A0HJXJI6csgAIVaMj5WK66l9zr0x94fDmsThwC4lyXV+
	 Tg6FhvfcVFzUGSGNy4Hqz0voR4UbX4foOugw7KLFX4/y8EdCqpKzGqVcwRwJzODQYk
	 KEcKPn0lXs7YrpazzqTkpnbHNXsyG78RmpXBy42pohQtTbASy3mDvf4VnfyvCVpuB/
	 /K6Mk9wfNGwzQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97E8AC52D6D
	for <ddprobe@lists.linux.dev>; Sat,  3 Aug 2024 21:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172272215361.1779.15685227659060937378.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dae0c5b838752f654361320ede3ea124552f76370c2be401b4394429b127b9bc
Date: Sat, 03 Aug 2024 21:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722722153
