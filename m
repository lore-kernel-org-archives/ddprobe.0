Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38023357A5E
	for <ddprobe@lists.linux.dev>; Wed, 29 Oct 2025 20:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761770394; cv=none; b=T/hiKn5rdxOj4O5SpzPBg02NwzMaOQStceQUh8g98cAJDSeABzZfT8R0Mb11aFYSxfCPLRoIeMaLRJbjgUSHZDFX5B0sz656NzLXLRH6TPnBrcGNbaVe3MJMByeqp2/v8qCfpZFDnObhJfJnR1W2kz5CiYJ7komUMNbPvXVyUSw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761770394; c=relaxed/simple;
	bh=vj8rNEkN3Aix+lG7OZ4bTc/hfhTDEnk3+A1hxdx2eto=;
	h=To:Subject:From:Message-Id:Date; b=QPcTY9Up9zk0IXJ7FMIfrWEcaACnySqjUMmRmPuPD973fzJouckDrzoi9o8tkGXUWLQioQXjFeOTAaoTIQThPB+iyK4EGK054gJ8YHbDQcljIha3yV7+ugzgmhTeIIV7NSZElPey8xcgsrDbItQ2L/H9jK1YGFnR8Xb+wij74xc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=C0bYoBmu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="C0bYoBmu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A139BC4CEF8
	for <ddprobe@lists.linux.dev>; Wed, 29 Oct 2025 20:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761770393;
	bh=vj8rNEkN3Aix+lG7OZ4bTc/hfhTDEnk3+A1hxdx2eto=;
	h=To:Subject:From:Date:From;
	b=C0bYoBmur13JcDMgAqI3jUNCVGWgV5prEQcDDrMHCKyDIwaoC6waAllf5+RM2xevT
	 fD1riNzfM8xDCAOJskpxxDUg/iqMLy5mBuA2miMxeNAilRLsLnFJJ/GQg2KUKd6FX0
	 9pboZzHWLuyWhYNdtxh0OeFVwirAX8tUzXB7ZcMq8ZBeUrOWy7qfx2vZ3szPlmbV1V
	 hmqmD4Wiq7DsSFzTXgx15VYONyn6iA1X0Onwtb+DiWtjjQoMyr3AiNSwNtkQshpvFy
	 s9AUmG7q2Dvi5K2l10Ks6qE7O2MsqSvOMR098KViJDrdEYNwRjYiFr/+J909Kqa/93
	 pM6DkbqJDAgiQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92376CCF9EE
	for <ddprobe@lists.linux.dev>; Wed, 29 Oct 2025 20:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176177039359.6445.1568214991838834769.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2508ea56301a510e903ff21b5c51961250d3bddaae12bfdd1273a7b306e3ca06
Date: Wed, 29 Oct 2025 20:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761770393
