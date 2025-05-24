Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 466132AD2D
	for <ddprobe@lists.linux.dev>; Sat, 24 May 2025 03:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748058594; cv=none; b=Qa1HH0hYZa39gyXDWT1UIlywIIbF5p2ba5t4twxKVfVNb39eow5+XSxtMsHR7Q15f4Rwhc2PHilFqM3xQaPgMJoxbWeUoyYxzYOZA9VXikNsz2eunDAtAq4oBY1kNN/Mg27bCCxtKHxONodJg7Zt3WzKkd+eNOlA43Ae3tU/mlk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748058594; c=relaxed/simple;
	bh=DB+7P+8StI7CG4rwwq+zK8QFXFECZRiYbbrUEPKrI2k=;
	h=To:Subject:From:Message-Id:Date; b=KfVbgjKoNDVi8Pd4y8paRoRYb1MjQ1owYC3cI9Qvr0ooc6WomhMkZynDJHwIYRBs7SerEktvcSslVI/JSOhGEOIxYuiSHvV7FCX0lzsRnDeDKK0wky1qOIVuy376jXkK8UYTy/Izcp8t/vMIeQnIoCnWviCChYBAz5t5Z520ACo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AaYmjdmA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AaYmjdmA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7751C4CEE4
	for <ddprobe@lists.linux.dev>; Sat, 24 May 2025 03:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748058593;
	bh=DB+7P+8StI7CG4rwwq+zK8QFXFECZRiYbbrUEPKrI2k=;
	h=To:Subject:From:Date:From;
	b=AaYmjdmA1sCXh/DDRiCkusrf/S9e8SdVGRcw1PYPusoEe1LYXG0HjZFSX/3q/e/r6
	 DMbnvdKu/Sb+xJxKjqIKcmycTtOLBpca+QkMDHsqXNEpSOtl9AIXYhnK/ESGjS1S0E
	 fR8xKv1q3ApF1HLA8KzMj2sCAJTtr/7A4CeevRoihOpVtd47DLWElY1/mWyHmdj5vK
	 Gsj2MN5+QKm1hQtil6DhdJzQ+WqCAGA8aZaLFhs9tXQf+tbNm2DNbVg2yYpLvtgNi2
	 viIQjFn/qvZ88h9J71r5r60SAicXM5da/4lf1W7EVgrhXueAObZtz4+YbJN+Xq9bk0
	 W32wr+ZZ9QVkA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 949C0C54E71
	for <ddprobe@lists.linux.dev>; Sat, 24 May 2025 03:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174805859357.11152.13925873322779350539.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 62608876d98d0aefe4068d0d59d2ad7912a7d3a97bce361a2dadf6d95fb58c24
Date: Sat, 24 May 2025 03:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748058593
