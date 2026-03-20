Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28CBE382287
	for <ddprobe@lists.linux.dev>; Fri, 20 Mar 2026 23:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774047894; cv=none; b=EhtYBwAtl65r+JLjZ8ANizZk7hKOuIs6c9VikkbYEehQl1TcLG3I+X1JQhrp7X0jNtXxqAWSOFefjAAvi33dCcpzkXP0Iq1NloTCJuy3wdYjufAYvsV46Dp8kVdY9NSFoP86TCDYz54LpU4KhghrmNpsSVbchSaDBhmCwbqc0/A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774047894; c=relaxed/simple;
	bh=A2yyGifg4K+Rr/d+mFnIw1Y53tOyApf5AHXaBAdWvdw=;
	h=To:Subject:From:Message-Id:Date; b=QSQY2egfMserj6fpkr9Ae/HhCsCD7eq9sB9rTmWQZystiVg1TYFzP/POtyzTZSvWHVpFye9RfWtKes57Ub7VavMHUX/yXBSr+FSn1Y9RW0XBeptPqBtT03puRMzpqYm3N4tx8BUF+mL37J7TQT7nkU4fZtLV8aQyjkL/ewNkOBE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YBqcuHHC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YBqcuHHC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A81B8C4CEF7
	for <ddprobe@lists.linux.dev>; Fri, 20 Mar 2026 23:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774047893;
	bh=A2yyGifg4K+Rr/d+mFnIw1Y53tOyApf5AHXaBAdWvdw=;
	h=To:Subject:From:Date:From;
	b=YBqcuHHClRrecnbczMsijrqgpbqwd6ZJa2T/PPD/565w7PnCdi/tuYjsqCjqkX5Hq
	 2c6Ve3hCva9Ue15e2JTucXE+3dzZl72AliWVfZso9qiAiW0E//TkSmU0ArzWqeIkda
	 YQtriMTdhhwBhdKf4qyuI7EpgCp25iGxfgX12q++25/NTeyzmsjthcacFLMkWzfWg/
	 XLelaz5ufw6FMd9n1EFfLok+c8TtwIIxZ9RerjNF0xgKPAyiAx7cK5xt90LtbgNYwq
	 XzEyt/8sNUm5LloNZuvz9cqJmnDQmpjtPnTBtAK4lwubHSX1KROdZ7hyaPaHVnR7ot
	 INzKEJoBmQK1w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91E851099B4D
	for <ddprobe@lists.linux.dev>; Fri, 20 Mar 2026 23:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177404789357.22941.9441257555074795901.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 52996d0b1f702b3caf5871b7e18677763f657bddd5eaaf7e43ca5ec33b709149
Date: Fri, 20 Mar 2026 23:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774047893
