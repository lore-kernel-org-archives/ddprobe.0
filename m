Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E8051F5EA
	for <ddprobe@lists.linux.dev>; Mon, 23 Mar 2026 03:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774238094; cv=none; b=sPH9HAof7RUbGkJ5/vsbncijaIUWURGmS0bRhsIe3G06CDOn+CCHtaxEszKGf828o4D1VXHSgKlxUUcjMgCAkX2IRurCudxWkWo2dMS4aQougqNqNmm+w3pdW6ivVuFhrkb6NczqNiNplxM1CC5b2wSE45IfKayYZCXQA1JdQgE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774238094; c=relaxed/simple;
	bh=VNt2uoTY5saNiYzvUus1jzV/OJRy4AxDfu1vVp5Hiiw=;
	h=To:Subject:From:Message-Id:Date; b=CnQFsOS1YecEUPMEzCIpvd/wHYm9PtAPuiKbK6PGM/4Zyzdrff4bGdbPYRovYylK7aG++yddAQx37Mczu5Y9te8Rxffiy/Kr48yayms+eFj115qnbE3i3JGuz6b7uj4d0STRM6Uv64FEwoUGlfxWrr2FFMAGIdaHvJzljcWEKX4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZXaXrPr1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZXaXrPr1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2819C4CEF7
	for <ddprobe@lists.linux.dev>; Mon, 23 Mar 2026 03:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774238093;
	bh=VNt2uoTY5saNiYzvUus1jzV/OJRy4AxDfu1vVp5Hiiw=;
	h=To:Subject:From:Date:From;
	b=ZXaXrPr1bEvxbOl1/UShR+MJkKeVqwrzRfgksdAxQZcMxDwsY3wcpMi6yj86a6BrD
	 uFsUgYL30iWKo0LRA9qX7CoPLEN3M5e5kg7ZG7///wyCtopEOhzzK2SYx6Ai2QhX1h
	 s1V66Z8tAWBg0W5Kx5Uhy+gUGk9UJocC0PQ/PGL1litPFUSA/gr19gbxU//mj0KLOD
	 HGnx0Jim7LPEYWICMm2yR6lf4/ZPWZiOgiREnDohwkBGGxDvmpgzwyhMmrFiNcwVjO
	 +CZKx3l76mMkf04s/wyApZfHZaz8Nb8BdOfVDjoCE2AzzjTwYiqy9ZWyCRNH1f6PIi
	 1tBXudOpGewkA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90618D58CBE
	for <ddprobe@lists.linux.dev>; Mon, 23 Mar 2026 03:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177423809358.18744.6252874782985638751.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9f4c547730c4eed147bb86474f1f178b1a48d81681858e732e0bc7845e30f361
Date: Mon, 23 Mar 2026 03:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774238093
