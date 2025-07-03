Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4EAF52F2A
	for <ddprobe@lists.linux.dev>; Thu,  3 Jul 2025 00:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751504394; cv=none; b=kCKYOByXXzeghoaZVqUsqbWDrQVZhSvHdcWhoZfFr4/O/HcrZaBUyD9h4VkAVqfI1at5mKWNqjqzZzkZy9gBpuMwb9ZmWkPyB8SZcgQ1w0Qa9D58/PQTcu0P/+jHlikLAz8Z02prBTiGMbInRRTPCxUb6967bVhT1HR2gekBef8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751504394; c=relaxed/simple;
	bh=SFwmiQxTqM/YCA0/CD8Xf0qFFT0yzA2kiaHtxTrlChg=;
	h=To:Subject:From:Message-Id:Date; b=Z3oRGdRRGkA9QpHIU4evpfgwh/H7x1WQ25LYYLcU36+6m+oUYvCUfrshmM37lmClQHeLwXaqKn5SsFoWQCnbPfSkR1fnc9sSHh03KWpqJiWMt1haTv7406Fe0LoNaLayJESOk9yp9BEzq0i46c2cqTWRTdLLJ1/2KsNsXKFxLyo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hX6VceWT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hX6VceWT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9E23C4CEE7
	for <ddprobe@lists.linux.dev>; Thu,  3 Jul 2025 00:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751504393;
	bh=SFwmiQxTqM/YCA0/CD8Xf0qFFT0yzA2kiaHtxTrlChg=;
	h=To:Subject:From:Date:From;
	b=hX6VceWT6frpmodynz1ksJiYgHhSns2Uu5QXgTCHI/M7Jab3xTDTA7WL6lPtQFl8f
	 l4mbQD6Utu+ukYO1w4FmoXkpgD2hs6aL9ItYeUg4hiiAva59WmszqJ4cdn8YHgKkSe
	 HbwQN4R1JDBTYNAikS1JNtQFvhe8hJFRB6+U7a0QSyhLsJ7ICbwuN3qYqgOBSWB2SE
	 ayClwBE/JjHwAn3NxEXG5R0sUvU5o3fS4a8Ux/tSUCEdWT0iqQFNCvOkW/hHlsEGx4
	 vWiSXNQdODSzIR7sPcfUhV88G9+Tgj9ju6i6nyoBdYAyxC6kaKnXNpjYqtYWcfPMKB
	 cd/0qpnTQDqvg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9566BC77B7C
	for <ddprobe@lists.linux.dev>; Thu,  3 Jul 2025 00:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175150439357.14863.16208355749763023243.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5b513d361e30472b2ec4794364e7bf39713fb7d7adfbe2323912a70e1661fa4f
Date: Thu, 03 Jul 2025 00:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751504393
