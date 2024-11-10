Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B8CAC2C9
	for <ddprobe@lists.linux.dev>; Sun, 10 Nov 2024 13:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731246354; cv=none; b=AHNec6199VUgiGDTIJEusI6Bnc+/3djP73YhfT8BRwisf8k12UaaEdcRDTumBL+n73CXg7uO08eTB1K04QNrmh3+41B2r6XYPnVBYpX9ziGZLoqAQEi3MpRXWtgVAt/IVALAOCK3TF2ShG9BQM3oBHGcYh6SpRPg707LQL2vEgo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731246354; c=relaxed/simple;
	bh=o6rh+K0mmCgySJE+cCHjAW6keJjpK7zHLdl+TMpESe0=;
	h=To:Subject:From:Message-Id:Date; b=cZLXUtYbQo2wJ1HaXsuT/FHMNYi0y0E7wM/NLUTSv1v5pv9xnbeYge9+WQjF8wvtIJSHFnvLXLDN02B6FkCkKQTn/uZLx2IM9S/OOOM8fsaeLK1JKwRzOx1FIGOqL3drPeqdFqGU/2YBNe9OHHAG9A7cGPZbz6L+ZWHvN1Ar/PQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WsB/UGtB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WsB/UGtB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B741FC4CECD
	for <ddprobe@lists.linux.dev>; Sun, 10 Nov 2024 13:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1731246353;
	bh=o6rh+K0mmCgySJE+cCHjAW6keJjpK7zHLdl+TMpESe0=;
	h=To:Subject:From:Date:From;
	b=WsB/UGtB1L9bGJRGh+tx5CbthiYafzgROe+PYTa3lAcKAWTdHY8Mkal1cnIwmSqo+
	 MES0CK3Jf1vcff1+88hA3zyFfPWvjIYHMCtJnbgWz3k3Q+dUhpdsUmk03S1guQu7gS
	 da0tGTINh7YOuRmmEiXYAIW384tgKzAkOqhgmR0Z1SbJMPyuc3pF/ioGnH8diQLwii
	 knq9FjFwvaKE9iU6rfDk5fgc/f1dogaLrXTLPBAdg7MvZNrGHFmgKWRRMOm9v7CAIn
	 8T5JY2XBMR6eWx5sTfD0wHLchc/96/sQOe0iFy2TOfTQB/Zw3/CCCvaqBnF1YgOMtc
	 Reh/8r0opBxMg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99B3AD6409B
	for <ddprobe@lists.linux.dev>; Sun, 10 Nov 2024 13:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173124635359.19811.13437381942101151109.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e1948984756f9c855cc1c3bb1bff224dca09845cc0699de22769318787b59be7
Date: Sun, 10 Nov 2024 13:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1731246353
