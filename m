Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F94122CBC0
	for <ddprobe@lists.linux.dev>; Tue,  9 Sep 2025 09:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757410794; cv=none; b=SLKO/kkfF6ImYz+O9fANtVBj8LF722VowBJbzYkFZJItJk4EpV/0wizlGxzUZVeuC8154jt26WAqx85eQKPaWEHy5ZcxZFJkXswxRFBq4OGKr0rrrzn2Gh/xpjCbiUOeL73I8BxoN5kuynF59xemqBEhhAFRzFHR1Oaq1N8ce74=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757410794; c=relaxed/simple;
	bh=mpN2eplyIlUrx+hQ96PWFEYxnLnIbt7MVNXGOdBXyDw=;
	h=To:Subject:From:Message-Id:Date; b=A5wrKcbFUn5JC+kkuembukFX4Cyplzejm3tfSUmqwXGofJ+Y4gRj/VDuyE5uPonPQY3LU3+wWhQ7SuNExH8aPRlK3qgtFM28RaIHuXEfcHxXOchFHpIKM7lM7D8DYUA//XN5ibvo8jreOi5lHLQIEi2TgkJYhDmFPZS8P2WdgZ8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=al9VwnyZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="al9VwnyZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1DF5C4CEF7
	for <ddprobe@lists.linux.dev>; Tue,  9 Sep 2025 09:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757410793;
	bh=mpN2eplyIlUrx+hQ96PWFEYxnLnIbt7MVNXGOdBXyDw=;
	h=To:Subject:From:Date:From;
	b=al9VwnyZBP+vXeV4a0KEFIrCJhykdmPBCZCe/qFAHSVCcKGpNcIaMTkol6sp92uHQ
	 kOVdV4fL1WG5nEH96HB5LFnkO4ERTqfGEXDwQzUhr1b7Fh9eJZM8mtY9dL91a8DYyq
	 NgXY5xEYXKavhhd3B1ZoNa6z6DHDohU1RgTYXUULI9FXKfSrZaJCpJQdzugwLx+yro
	 X6XoaV3F9Wo0Pa3pk+o/4Zj1E/EviSVhcj9GRzCfVtSnihPNrE65CdklmdZU0NiQs4
	 ZOs4cubxDXJWMarOnF2WEE04r73vnwLmjtd29ObMzxmeUVyHAayBc2zkrJIDUWZ1v5
	 KvCJ7d95zONOg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F0C2CAC587
	for <ddprobe@lists.linux.dev>; Tue,  9 Sep 2025 09:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175741079357.11284.15694015376945434064.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7c7dc097228a5e86bcb0e1d0c19921b153571667b4fe400426056798c36896ba
Date: Tue, 09 Sep 2025 09:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757410793
