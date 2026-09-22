Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6DF134F4D06
	for <ddprobe@lists.linux.dev>; Tue, 22 Sep 2026 22:40:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790116837; cv=none; b=XoraBc1d5UDN52VQtqUf06U5MTQz2JDerZDHthiPfZRd6vsDPj+ZKfuFm5oT0ydH3YJr/fWmb/C0F/Nxy5Yc3nx8FZMpyPip2m3v0JEMgF876POz487r24rkOWYytpgkvkD7HEXhUq5i9RtcCw7r4FEU4Y4uINl/eDY60lLmYr0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790116837; c=relaxed/simple;
	bh=zMeIKxf5CUE7DTmUblB05q5hy1GHUf7lTH8x3ZcnRDo=;
	h=To:Subject:From:Message-Id:Date; b=d2hakP/nJY59WtbB7r3OwEqXlUpM2JyFSsmrjXmeZjp06F2kjow5+HZDNHLJTVLPzG9VwI8OwbS22xK3nm0VNsQARXTnT4miLKElQjV8x35g7OJ7AqMvBuFXUGa9Lg+Bsd5UuE4FMF+U55kLTtgAe2lUtvprkhj3eS0MinNJb9I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ecN7Mmvt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ecN7Mmvt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D602EC2BCB8
	for <ddprobe@lists.linux.dev>; Tue, 22 Sep 2026 22:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790116833;
	bh=zMeIKxf5CUE7DTmUblB05q5hy1GHUf7lTH8x3ZcnRDo=;
	h=To:Subject:From:Date:From;
	b=ecN7Mmvtz65zzdQibPNxaJBIjqSYYu9bh7pJluO40gkNRF+BtwHk/bofyTY7jbMsi
	 /cBLWrNCNt64f8Ii+O8FInRkReVWrVKXxXMptiRdtdOY/MJ811oLJ40xWtbpN3kFmv
	 2jjVTsrgt6q6chi/bffufizx2pdi5kHA0af5kCHb8jWtC+wk2vThKU4pB9Xfy/Q7Sa
	 qnR2pxnZ6wV993OacjncnbxGqLMOYwVUgjvlRSuqooDrm/+K2A3HzvRJ84yPsFTnRA
	 5Dr1/8VoI31aNzYuTh6rSmkn8bFcGHmEwcnkFcLDgiaARiIus9APDaLTxDhH/7U7hI
	 taR66O8+8MI9w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B12DEC982FA
	for <ddprobe@lists.linux.dev>; Tue, 22 Sep 2026 22:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179011683371.21583.16669072653060483748.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dd7310f4c39977a4e9b9a0fe125db370746a36cc3bff241d2de2fe5a797f7f04
Date: Tue, 22 Sep 2026 22:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790116833
