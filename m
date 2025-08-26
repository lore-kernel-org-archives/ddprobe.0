Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 282662F83C1
	for <ddprobe@lists.linux.dev>; Tue, 26 Aug 2025 09:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756200594; cv=none; b=tEBWVVT1nydCGsryvwOEVLupfhsfOGz4ClesXPoOvtLoU8ZHvU5DjFRZ6T/EemWyI0kgJEhlRCVavIs/sVa7j9gOcc7srpiNVZEQ8itCkm/mHkHBHp9xZR6r15oHd4/7ogxtrnBRr6QxH9rqCdJZ9SZlig5f7tll4II/yQDKtVY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756200594; c=relaxed/simple;
	bh=XkS98Jy4M4GtkojvXreEL1kMS//qT568sini9mhx10k=;
	h=To:Subject:From:Message-Id:Date; b=sDyPCWdcP4eD6CPa5JcNEwYSspOHSgbLr290pKAW85Vq8vjyReTtgrMGzZSS6i+HgJTcdFUGfva6HhjSy7R2Dh7/BF8cHoqTilXd3l2XXTCoCXloN/DV5n8ct1rSCICEVvBYJtrIVlq0QivkcLRj96dBT9AJDSc5UH+vGn1qe1I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qHJkJxRB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qHJkJxRB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AACF6C4CEF1
	for <ddprobe@lists.linux.dev>; Tue, 26 Aug 2025 09:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756200593;
	bh=XkS98Jy4M4GtkojvXreEL1kMS//qT568sini9mhx10k=;
	h=To:Subject:From:Date:From;
	b=qHJkJxRB/8ajEgI0BKGcI3AB1aC2ULpGM5l/9SXgCmzmn5QqBiJnIPwuEFvlghOZ8
	 wqZ2rj1W+4e15madHiLINt2Nn8CrVAl/Vg0bJn31WL28VZEjxZ6GbSr9AmBG72akUJ
	 /ZgDHwlQyLCkZrFc2LIhfzNlNfaA9Rufh1QFRf2osh7NXrs0hrwKAyYdHJno7QUQ18
	 SGthz3ZEofJ5OjCbbiJFY9Af+SXVfcxT9bZ3fg1IO/l8sPZnqStloSuaPROQ12tbFI
	 KPZL/GwNmMtHuJY55eYxXV5b/zunEaeW0jSq9KTYmSy6q1SEvxJgExj+S0mY8yW+VE
	 nLvA1OJRyszUg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9895ECA0EFA
	for <ddprobe@lists.linux.dev>; Tue, 26 Aug 2025 09:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175620059361.25154.8555650426420633533.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f87235cbd2088d3be354dbd0d11d0f59a7b842d67bdd25ffdc22e6e2396e5fa7
Date: Tue, 26 Aug 2025 09:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756200593
