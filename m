Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5A60F264612
	for <ddprobe@lists.linux.dev>; Tue,  6 Oct 2026 00:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791247234; cv=none; b=po88Jr8/35SJKpvkrjA0PQlghLvfnyNcSXYkjByTE7g3TxiELu8Li5pug1MBMenhiWEtBDSoTk53hy5/llaw/AKYAXEZCFk7j8BSefyGij/8zi5wbq2sz8O61sI18eiI08f09brYsbjfkxUOVU8e+P9vKo+5Gmxk5unrwfAX2UM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791247234; c=relaxed/simple;
	bh=CYVhKt2LT02sRl2Ox3LWID1CTWKiTrHoPNnFMe1bmZ4=;
	h=To:Subject:From:Message-Id:Date; b=buSYp/bUUPebfhjrfO+JeJbGgG2P5cIq0UdooTuunpQMYy6e45YiafVRCYtivrsMW9UDwrnf4I4Vu4MYTFzLJJp2wGlrdPSXHZiZCSUhFGmr9A65QMgwE379YqbbeieKlerWMU7PPZ2iKy25dJutRSaOwloHy1QR8aQXR00ARRY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sZjCiWp0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sZjCiWp0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DAE2DC2BCF4
	for <ddprobe@lists.linux.dev>; Tue,  6 Oct 2026 00:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791247233;
	bh=CYVhKt2LT02sRl2Ox3LWID1CTWKiTrHoPNnFMe1bmZ4=;
	h=To:Subject:From:Date:From;
	b=sZjCiWp0Ie5ssJV51zmZ7FdLO14gYnYaUnQ2ZJktgZKn0EWl4gWC+AeGBBdYwGR7C
	 0AwxXUvRrfk/dN+GaGUiufCjgCm1v9JpS1Ld50/mbCApz4cB5bKOfdZ3L3BWEwRY3I
	 tfX0sOrymUO+8DQVRlCSGmO7C/P/xTNBrM/N6gxMgMd+XAKj/ZtP779YEl8X9ML23P
	 iB02go8vfvMqlb3+zIzgCGErJBfIG8gkLwGYSqlF5Qu6ZCS6N7pKmpvfxo8D0fYH5u
	 FhA5D5Y2emzfwvvMiZQkd7R0nUTGEARgdk/6cf2gbaBb1R9GGZzLnwSXLw18AUeRQM
	 cHfyFYXOzoRkw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0E4CCA5FF0
	for <ddprobe@lists.linux.dev>; Tue,  6 Oct 2026 00:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179124723371.11176.8881750887361220590.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 940d8156717849301c6eda95bb66b8776ab181912e2da431ee64fed3f996c4ba
Date: Tue, 06 Oct 2026 00:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791247233
