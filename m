Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25B4A289E0F
	for <ddprobe@lists.linux.dev>; Tue, 22 Jul 2025 07:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753168194; cv=none; b=LvXuS+gl3iIuxEgehpavHnp7qCZNnD6CUY2XRtbp7yoHlPs50QSQx+/Q2nu8ptmUFumlrl9r/CRv2jDJgJeITLEZs3mFL1Zrfr+aZcM+Sz5tACkl55o3Ajz63miyQx0ki1xRX0JwvdYtBk3Wc4tLkXZ+VoI8ar/WaOdj6X+/skg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753168194; c=relaxed/simple;
	bh=tGbkvi476SeSjXm/fLxMqZxTz83IDpm47GAaggbRH+Y=;
	h=To:Subject:From:Message-Id:Date; b=Wehfqk7g+XcCx262EV5o4fU2GJHpyIdoAgsSl0Fz99ktSS2nc4Up1B/A4FFSRu/p+ZGK5MxbDy4fZ1uQvcdMke62l6VSxrrYEDolw5zrvhxePvV4ZGmMCuIFqHqTqqjR4EPDs5fGj1rugG6A6Z98mCYmUfB786w8iTYNkHE6fCo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=I6BUkhTW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="I6BUkhTW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4B1AC4CEEB
	for <ddprobe@lists.linux.dev>; Tue, 22 Jul 2025 07:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753168193;
	bh=tGbkvi476SeSjXm/fLxMqZxTz83IDpm47GAaggbRH+Y=;
	h=To:Subject:From:Date:From;
	b=I6BUkhTWXv3ZKhhjE/hB8+5qQDrtshAhCM9OTsbrJ3r4b4fYvrjPnPcLKSMkuHsiE
	 wxAyhsrYPJU2aXRSyZa59R5beiJEtC6xm6lwZWJbK1UoKJnC8DhvGRxiiHAGEVt2t2
	 J98rK5XmJylKCVHsnTzF4GP/pBJuPadF2OzMZlvqtASsS1XtY9pGb/amq1kCC3t4LV
	 7BE025o8CR2W9/sBKgOk+mzbjAp7vzQ3piDNU9VlgdHyXGyZkCTJDn+InOLMsnJE6N
	 g53Kci9O6FFTxtbDGED+zrZmcCLU88/vmfJK99LJJKwc9SLbW0f2SN7fUeEgbLnW1H
	 5GWJ8YGW8DH3A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91F7CC83F27
	for <ddprobe@lists.linux.dev>; Tue, 22 Jul 2025 07:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175316819358.11449.11836378807368136574.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eafae4f956576fbe44ceaa6d07a9c0836fd43888168204b2fce715c2966d1516
Date: Tue, 22 Jul 2025 07:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753168193
