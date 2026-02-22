Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 206083A1D2
	for <ddprobe@lists.linux.dev>; Sun, 22 Feb 2026 19:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771788294; cv=none; b=Q2ZwyYlQM3/pKMFj0WOTev87rtFj28zhsgiGikeATnSixvQGpxnqp+uU4IxQ/qbkEOoyvRBy2nc9MjMc6mJrBCkNqgELuF/+C8L3lh+AiiAtHvCh2WgT2tESnfXj0fWdVdTlMaIguhtbgLWGVKYT3nc+V25DgHSMWulcky4/ki8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771788294; c=relaxed/simple;
	bh=8wJeEYdtZxkr5xATLNa0koX4MG0F0GWDP2m9KW7zwgw=;
	h=To:Subject:From:Message-Id:Date; b=Vg37j0tf9Lrxq9ciM8ktv4lePSnEEFBP8wEu50llr7D1QbaBP8/O7YItl7jHhAnt+AnsP0I1qH7k/UfJbydb9PxaRxoqSDxtaChXW7aWh8k4TkWler5MhiwV/tXVib8hgKnfNtXAPDR6SvJEJ+71WvHwZB+z0Z08RyyRSVwkz3I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XeAijD02; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XeAijD02"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8AD9C116D0
	for <ddprobe@lists.linux.dev>; Sun, 22 Feb 2026 19:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771788293;
	bh=8wJeEYdtZxkr5xATLNa0koX4MG0F0GWDP2m9KW7zwgw=;
	h=To:Subject:From:Date:From;
	b=XeAijD02jzEuFB3/93Kn5w40FKsYNxfIv+hWRoxIFzc2+Trd5ChWeE2/DBvzGlsCV
	 724wFMbZjElxVbKwvWqqnqiHLVsfpXo7J56Gek3ISpIxWy4qQlQXBvjXzdK5q6nbFT
	 y+95IT7s4/7WqbAfpy81cdYr4OtQOreNr/7ROgzqWzthSZlYM9GqEvPSIMb4h1R6oQ
	 auXUC4+oJ+wWS0o7ZRrmuZuCegRbhHvpdmAsfdLiNU59XRDlNrAGchr2X9eEY66Oue
	 +vXHnyRu0J/EflozD4N3UQkBsazn3vVYR5UUNlIbiguYEnupWVO9ht6oT/C1EAv18V
	 P/gTdnnvKyO7g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93FBFC636B3
	for <ddprobe@lists.linux.dev>; Sun, 22 Feb 2026 19:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177178829358.7871.14719015989659992340.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7b39ded003508992bee6526a9a5fe6624036be4852db9b2588e0d605930d244d
Date: Sun, 22 Feb 2026 19:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771788293
