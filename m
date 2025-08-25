Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1717D2EAB65
	for <ddprobe@lists.linux.dev>; Mon, 25 Aug 2025 14:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756132794; cv=none; b=aNHZ9n/vRdislbWR3hhSlDYXq8WVWDHjj5UdIDoGPZsZSpEkrV/fP2xfKPF5KrSlCmAXfFQ7fbg8polVXhCafOdW18beCVqSsI5ZuECCRUiY2ewZjjPrvZIvmneOQhE+bk//Vtzwcxejv09CuhoK+0NMtBJjgki3UKs9vO4hiOc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756132794; c=relaxed/simple;
	bh=NRyTsKnomd/APz7WiJUO/BX7YUUgGAORIZMDJvb+b+Y=;
	h=To:Subject:From:Message-Id:Date; b=khQK9ZPSyha8tRLDCxzu0otNEwl/GJMIqcmZqPHFCYDY7b73q5ciNoEN3tvInm6UbEgl0nF3MrF4EVbpr4Xnkplc/Cwjl9pASKfVM6QUrUcmg+/wSXpUWFsTOO5YR7sHxV1tT4gZND/A0RIDOpD9ZnnRreXSuzIAfyQ4lwNQXJc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sMLC1wDR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sMLC1wDR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1D26C4CEED
	for <ddprobe@lists.linux.dev>; Mon, 25 Aug 2025 14:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756132793;
	bh=NRyTsKnomd/APz7WiJUO/BX7YUUgGAORIZMDJvb+b+Y=;
	h=To:Subject:From:Date:From;
	b=sMLC1wDRkUXZWoNXH9gCXBflyHCumO/PAhZtmis73NVFOsDeoOl1P4YvBJzlHYKP1
	 wwh6vEKEzVifeHw31vRez8e8eVH6Drr+3VO4/QRHdEJ8hDfcO/08t/eiYo4/7Jgc4g
	 0Jq0u8xJKGbVdGkCBdkVlfjUFsm+c8tkgH5lKsyXscr8jhNqF9hYbzZt6YiMjI2j/k
	 sbn7pTmh7235IC1fVX/wr5wQ0QmrqrHPyTM04kohxsNuUPtBzbTSVDTtV+aHBGsOE3
	 oU7wvta8qmG5UFlYJwwq+s5lDr/Fb1QL/1j88D7KpnnCSZeqnBdUzQybN13PSlYDqr
	 pRNKh8QKZS95Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FC3ECA0FE7
	for <ddprobe@lists.linux.dev>; Mon, 25 Aug 2025 14:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175613279358.30454.11805590938964285465.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 97aba78c9c7b927067314a77721bdcd46132ae5e5057c99d6308c233a2381a65
Date: Mon, 25 Aug 2025 14:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756132793
