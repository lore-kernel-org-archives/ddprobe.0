Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0977A1A9F84
	for <ddprobe@lists.linux.dev>; Sat,  1 Nov 2025 06:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761977994; cv=none; b=HeRkxKAhIxynTBB0/elDXQq5gMD0NFU/NjiPSUT6Ud6utwIH/7S41ZtcZvWCe21w3FFhg947wtw0eGtmkPcBciY6e27aDEm8R2fj86IrTPF6+rxHAtIFncqRCv6fcp6k9x5cfFcjkUwUQmj4eFioKwRtKuHkAU4VnaeVR348TMc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761977994; c=relaxed/simple;
	bh=59TEifeBak2IafkoDJkm7o8Exi9NXPwNKRRhU9aiOmM=;
	h=To:Subject:From:Message-Id:Date; b=LiF0H1ARIVUNIVmYrVfoyE/8e5iY6fvvJ3c1esTMDJPBokX3mkhNhX7gHv4gLkUEuqZen1A6pbqoYDVMHWGiQNvgK45WCHG6QgupZ/sHQK303lrJyyGQcYPNs6MwU/bqp2sFSqNDwNESuJSRH06i3HQK7nSPaklvKjpMP1UhcFE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dmOE/Dmz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dmOE/Dmz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5170C4CEF8
	for <ddprobe@lists.linux.dev>; Sat,  1 Nov 2025 06:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761977993;
	bh=59TEifeBak2IafkoDJkm7o8Exi9NXPwNKRRhU9aiOmM=;
	h=To:Subject:From:Date:From;
	b=dmOE/Dmz3UhV4tT4z3mD1oiAjtiSSOQu0kRujmZWiURmdRP0/f2rBQMNmNXOTfLQz
	 IAjsC+iH+N3F6mimjYoP7DtEKpzRa85CLTJ3UOeH3jrKe/Jug1kzqM7RAU35oKWzEe
	 8VtMbKsg5WU7YN6ldjOodv16IlS2g72MFdic9KLt9aQiJxh4qaMZ3SaYzOh8Rkk0IT
	 TSf6cMBbhWgp6rsA7rvrsbveJvVC7ttqdyAg140u/QzFaUU79Zf70hskfhsYh9FUBr
	 pwl4Wn4rMadZonJMkgDBkB2gx1n9AhcBa43TT/k/DHy1k1D9iSPRKxxlxVUEDHY15q
	 04K04jW56YIPw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 937BECCF9F8
	for <ddprobe@lists.linux.dev>; Sat,  1 Nov 2025 06:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176197799358.21612.2396235752803560525.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fdd6fe928455e49f64993e04e9a99c036366c9add7af94f7067e54cc6e44b055
Date: Sat, 01 Nov 2025 06:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761977993
