Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C49B3CF58
	for <ddprobe@lists.linux.dev>; Thu, 22 May 2025 16:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747930794; cv=none; b=BHMLm1//ER6aHde/fE67lEYLt2gi8ytGRx8FWxvunS4v0U7zIPk2QvxAytd1s28xCocOHbgoAYG5PALGdA/QuFrcaUS3kjp6vYNJKZpdBbIKil/KrO2/9K6gygE2TmkR2Ww9rfoy9UKTPSIoKdV3efjvpPjZziaQ/fqdHeZGWio=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747930794; c=relaxed/simple;
	bh=+nEJ32+ZxkcQuCmPfJ7AySh2SD7w2uJtXX0mzekw388=;
	h=To:Subject:From:Message-Id:Date; b=AIyxeGlgmeGiqUhyEFhH6Ea3OXwMnoG2cFOC7YveUilsx9rlFUlyXUr0l972UKf8bhsOGYv/6JuyV25HseVC1Tbed9twiHG3kQXIsFhcWckZAvtCLK5/vm5MZ4jXgz2HLxbNBWrHmfgf/4I9QisNrQoAuQtTnif9ENRvQ4MFrMU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MY1NxSJt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MY1NxSJt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9ACBDC4CEE4
	for <ddprobe@lists.linux.dev>; Thu, 22 May 2025 16:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747930793;
	bh=+nEJ32+ZxkcQuCmPfJ7AySh2SD7w2uJtXX0mzekw388=;
	h=To:Subject:From:Date:From;
	b=MY1NxSJt2c14+/A3+Vo70TMIJ7lkC0wu9Cpdb8iUJeiV4lZG4Z+IE1rP0ywP9q47p
	 jMouLR7mE+Pt0SXx09sQ+ldaoqHUyDVqV5XyWcpQCAS0C7UGOPkiaBhwQO1MUE93Yt
	 9OOkj++c13QUjms7B61twfA9z7di0XggBMOvpxLOIE4/GY6y3uE4Zsog2Y0j8TlgB2
	 n1QhGXnyq7S5jLckmKb2ZEiyBR3HOBm3l35Ejtp8bOalZWPVH/512eP19LWj08UCb1
	 4r52UCO0TS2TQI+MKUlwl7w44EU64MPrSiX0LpjwWgOQxmCQxyIthSTtJ543OOD3JS
	 BRgET8sb6hzVg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F338C54E90
	for <ddprobe@lists.linux.dev>; Thu, 22 May 2025 16:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174793079357.18004.358705025246704552.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 80c15d26f8c8b866e3a9cebb25140c5d1da176c24f031268d2f149891c3ae0ea
Date: Thu, 22 May 2025 16:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747930793
