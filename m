Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1054B1A5B9E
	for <ddprobe@lists.linux.dev>; Fri, 20 Feb 2026 08:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771576494; cv=none; b=MNK/PY0MHkC2hoDumOGrcdvS42yEBMKSuWdUsh+SXoKFSs/bts6NwQsWqNHVVe1/iQKwTNfuBbtvMztrTZVHuBvoqcUjjvgumnYUYpPvbQ5f7F567naXtdfkBvVsPPRkD+mSbJaaIkyMYCKGbQBYQRXOPebf60J4vhOfF42DHq4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771576494; c=relaxed/simple;
	bh=jXkEJl8brksBbKLYSI37vQNr3kQ1mIr791jd58eekiI=;
	h=To:Subject:From:Message-Id:Date; b=H5pnkw7RYycxt0ty15uc3nqu4T2qUQmNyCww3cN3TSVJJ3MYArBN1aNAR2sO7qx4GKbN8iDMctSvoztWbIO9ri5uMAZf2YaMmdDe5hFI2MA0GTPKwRloOlGhKHy7gJWkiIjs29rr9M22m8OcrGl1atbcX2eiyk1uE/556GiOPbo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LaHKOysK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LaHKOysK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A906DC116C6
	for <ddprobe@lists.linux.dev>; Fri, 20 Feb 2026 08:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771576493;
	bh=jXkEJl8brksBbKLYSI37vQNr3kQ1mIr791jd58eekiI=;
	h=To:Subject:From:Date:From;
	b=LaHKOysKQdhvB1G88xxOi752WcCKKmwt+8yfozGITn3MRdhr/EC1JtTGlIx4MNgqQ
	 JhAwOOIAXYlI2ujFm8EB/l2LWTd+2pHqv+hTVg4b/61hlvziovGfaKuVYDxuFKrLmE
	 2rPGtPpHek0FOEWUIqI7IYNc5C2Df662DEGB+YSgBnI+pj6w41rNjanlGHvfrrzdK1
	 E88ct0jTkcngcVHIOaDrVtPDlM+nsZVGthLcCg4FpD6BljRDKr+T2Bc9cixCWHy4D9
	 Nb+XRrgAqMlNJXTYGlEsjLPFYyh57iU0tzA3m/Batr3ncbMXQo+1dFVpN5H4jT0Wau
	 tKHwBEhO3S2SA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 954A4C54FCC
	for <ddprobe@lists.linux.dev>; Fri, 20 Feb 2026 08:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177157649359.26533.7204505984356352022.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fe5d336f1ac18d0357fd327ae9514dba89b3a727e6fd4546e0e4047cc9c9aa3d
Date: Fri, 20 Feb 2026 08:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771576493
