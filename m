Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 216BA199FCE
	for <ddprobe@lists.linux.dev>; Tue,  1 Oct 2024 21:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727819754; cv=none; b=WUNHDY6DvGAugV81nTKcnbnjvtXZw67AKDKqYHmaU+Gd+iUbOUrh0h9+g4ZFGIJRzg3jGyXLe0B70AWJSXkcK0VsgPC/uYHuq+XMHNornanQi5x84XWqylok76UAqxYJpAq98IXVEQdmbFeJrN1cTmvycVNW7LcKWcFKtCfLS/U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727819754; c=relaxed/simple;
	bh=9H9OAaII6/S2JQNxo1MDObBWiaWKrs9+1wN3Ss8xwKA=;
	h=To:Subject:From:Message-Id:Date; b=oewlMxvjx8p6j0Ki0U0sFpC6AuMHlk928uWkafWpOUqTsvZV9RlgJ5wePMg7Kx1UmmWJVrmlreEH7pT+EMf6GNlK10cqAHBN3HxEgEjMn5qHA+ZqmrPzTUElFeyouFFmSiOYkX0aJEBZhiyPe9CAdkLH5qTvUd32ZpczVcsxDew=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZyJoCsNB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZyJoCsNB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0F13C4CEC6
	for <ddprobe@lists.linux.dev>; Tue,  1 Oct 2024 21:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727819753;
	bh=9H9OAaII6/S2JQNxo1MDObBWiaWKrs9+1wN3Ss8xwKA=;
	h=To:Subject:From:Date:From;
	b=ZyJoCsNBqKHd/7f/lOXplwKaR6GnahNRkYB+KEnDTOBnxIwoN1D9j1GEF9se1GiaE
	 Lvu66DajldIfR4seaONp13ViGyP26eYeTB6bqVoE61VrYD2WEjt90IhMu7lR9uMzfG
	 KXyaQ+V8i+87t0haoR+wvDwKV6paymAYkjHWb0voi3LJiOKoFNupLNg3Vbv1QSAXDL
	 hjmjlBepB9QbpvwYD4HPyhJAwjSjs56UBBK1CBhq/C2P0GNqa9B/LU3AoyLfEO18Z0
	 lQvJC//fNl9OiSoFNNKwpPQ1zAwC0PwWaVzTLmPvpv9ehCF1T0+l/YTWxN/0H8GsF2
	 gK8w1lLrzdK6Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C63ECF3185
	for <ddprobe@lists.linux.dev>; Tue,  1 Oct 2024 21:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172781975363.29552.9798589051974906466.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9b77eda3f967391fa38a952fd40a662d5847a7ac1460ab184917a95b9cc64410
Date: Tue, 01 Oct 2024 21:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727819753
