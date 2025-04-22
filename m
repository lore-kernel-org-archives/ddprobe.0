Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3062F214238
	for <ddprobe@lists.linux.dev>; Tue, 22 Apr 2025 23:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745365194; cv=none; b=de7yCNqHpnxgJlGvs7oaUNr4LcKbpDxSchjJ+1/Kg/QK00lkDMdjKUA3Cwz4Sxmo9QBirLqzz6EfAePW0W7OPyvqIrl8hCfDngoIKb+cjbMFtIizHjVH+QMPElsKvzcvqfhV6mUzrXWYm7vaQSXsCHUF3xrTXdzS7cV57kJodDU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745365194; c=relaxed/simple;
	bh=/oNR4XFmZgx+onCfnqPKYSkSyHJN8PS+ibqGOERKFPc=;
	h=To:Subject:From:Message-Id:Date; b=Sghm6mzwfHI8au0kIzHUrPV+KW2ieAGZaHtpr3jJPuGs1Oau+KaOZryWDBQ70/Ujcc4G3UfMrEhTW9gbI1MduK3ZXzGb9XRg1UuBJWUJ763+ecGUiwl+iHWUF9oKwMfJGpUmo2sozp+yXN2eWIC53SoeXDaCcZ2BV6czIAnw0os=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dd91a2f/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dd91a2f/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9C711C4CEE9
	for <ddprobe@lists.linux.dev>; Tue, 22 Apr 2025 23:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745365193;
	bh=/oNR4XFmZgx+onCfnqPKYSkSyHJN8PS+ibqGOERKFPc=;
	h=To:Subject:From:Date:From;
	b=dd91a2f//OI8JaJa/Mw9//wFmkrqy0EDhTTdpxNl6ai/IcfjMEm2jLQ4LYawDm0Rf
	 SOTBnuhrKHVbxiOPUScbwB4YJcNFoV60QOCOvwpHR0qjmX8ZGNRA49enusw2jk0Ofg
	 zML3n+r1nnd736+9PwRZH9IeAXSAdnyT5xq88uAJYG4nRUPoZrJkjeGwWqb/m7jjgU
	 GbhXUZhvgibX2dEe1ZNpQMz4Nuam8Gu6kSdN5WSBzheJhN+L5uH66P0scDTHwhDSt5
	 v+im1qM+YHwSz6akk9quCseUVjWXu72kr/fVA82BH7NmlzUrNAY5rWthnkjR4goGZz
	 TmJiG4Zk8x95A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EF54C369D3
	for <ddprobe@lists.linux.dev>; Tue, 22 Apr 2025 23:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174536519357.31996.1555797006177387959.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f04dcc235300c7a39013fb8b26befe0143eed1cc794a6d3a3a63bb6a63d64013
Date: Tue, 22 Apr 2025 23:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745365193
