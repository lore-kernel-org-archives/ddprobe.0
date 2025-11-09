Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0D3BEF513
	for <ddprobe@lists.linux.dev>; Sun,  9 Nov 2025 02:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762654194; cv=none; b=BCotwDX+wqRhyFthZbmtQq02HKUge3nD9R6wKCCA2ItHXuPMMHvsBpgAaSUI26htO8GH/sgGJIE/jWOX3agWHssW0LKadQK8Nj4RlvJAtuJq4rdZA8ofw86k0vD8nTONsqWYGQPEkXKFL3qJ6garW1NaB7EUOLqftn6f11yht3Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762654194; c=relaxed/simple;
	bh=fdx45kq7EVm3e1jLagADEC93L1/s+Vb92sZMbA/cKuQ=;
	h=To:Subject:From:Message-Id:Date; b=t74jKUzXbCrraPAnU2Fqhb4KHxlXqaYle2nnVB9xUDwrH2CUhrtK4sxtetEMKkHD+vo+ymtBWM41Ib/A3a5iKPJ9+PMpa4w/SxKL4bRndyK6vpkFZ+9w2TrSG8rzzx6S7UidfyiDcsX3wLjiAqeeWXQdJW+w3jTzyVJyFBQrY9M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oMUKJiwk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oMUKJiwk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FCDCC116D0
	for <ddprobe@lists.linux.dev>; Sun,  9 Nov 2025 02:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762654193;
	bh=fdx45kq7EVm3e1jLagADEC93L1/s+Vb92sZMbA/cKuQ=;
	h=To:Subject:From:Date:From;
	b=oMUKJiwkyTK8e44rIzLAkdfNbiImouYAneXyUB1cIfdQB594K+Cxt8vXyv+dn92+9
	 qZZi7c1tAv+DUffF0W+jFfGIVI6ZeJ2yxAvkwD45T1OGymz9LEKQAxLqj/x+7VIIlr
	 NhGEqd2GhI1AbrHQPjkcW7yVorpac9Frw1mz397gj/VpYcrHgdSB1f7AS8vSShq0AE
	 soVHSBpkjXEo35H0haXlnmgprc8FsDgBVSMxzNciNDbAS8/DdIoNXg9x3KQGz8gCo0
	 ItgptqrlaNtcU+u02YgV29q9iDvtElLcZIa0D+raVL42V8OrXWI+kM/GcExE8NswKq
	 8rXvXNpbZX+3g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92F5FCCFA18
	for <ddprobe@lists.linux.dev>; Sun,  9 Nov 2025 02:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176265419358.20518.2061186527234225245.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 073c59e65a37a1d10d988c06109e8b4d6e573c03f0cbb91ea6b0db8a40021670
Date: Sun, 09 Nov 2025 02:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762654193
