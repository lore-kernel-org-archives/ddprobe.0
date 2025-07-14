Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3704823BF9B
	for <ddprobe@lists.linux.dev>; Mon, 14 Jul 2025 15:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752508194; cv=none; b=b+9C+h8qdQV7/fKw23PWWvqWvdw4CF+lYhcd7jKc8pGZe85pbFLk0kW1okeq3ESIdcF8d7IX3uaqt6yDFfDD2ZTrwLDxn24FII+gYCDNry4XBVWnnrEPi/9yCMIb18258sOGbS0KCXMZfQT0qdtcLfQgt00kAf+shwMk2SsYbQs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752508194; c=relaxed/simple;
	bh=CwdNso8c3C8kesrBjwNiJaADaQYND+oyADVT5QLRqGs=;
	h=To:Subject:From:Message-Id:Date; b=VzRqaZex8r13ZDlj5sLIPUCfRzNEcFTor+3HB2kcSyeSe2UQuBgR06NMH4nO6/N2xiMxEE3yj12FIUMOQw4ei85lAC19KKQpkO+Pd/XLMy6PcZjoxxJLpalm48qSdT/c6CGM6vFggkWEajpnw8P0IVqLTiEDxMcdE50bl+ZN+1k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JP91dy9J; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JP91dy9J"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8D2FC4CEF6
	for <ddprobe@lists.linux.dev>; Mon, 14 Jul 2025 15:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752508193;
	bh=CwdNso8c3C8kesrBjwNiJaADaQYND+oyADVT5QLRqGs=;
	h=To:Subject:From:Date:From;
	b=JP91dy9JcaUsi4/ALfErVuHyZ06vtDsVGh6FJDeOYXLdYlUuvCa/NF4/AyxSb1pan
	 7HCGQl/V8g/sRv2cfONvvnF9sbk26THQVBoEAfap/9kEe9z9zLrw2uAGbm/3KR2XHq
	 qFjAahTKLOMn2uQKfVnBRgTFVuixH9smBqA3jFBhPw/dMYsceWBLOVFgZkGLN7fQqm
	 QoDk+LGlesOvC1cJbCrEN4XTWx+58wubYy0bzh9GTWztFrLZnMWsvGjh1Few77u1C/
	 Qzu6PpByMLGGsiom9jmIblwAI3NkXrrMJnuj4vebYD0tMuJNPcRK2bCZjb4MPJRjgy
	 ly1qnqy2PviLA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9232AC83F17
	for <ddprobe@lists.linux.dev>; Mon, 14 Jul 2025 15:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175250819359.12232.9191930536914722548.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6a4c6ac2d86228054ff6786745bfc1fe4ea40c7fefbb100772a4b16be2664341
Date: Mon, 14 Jul 2025 15:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752508193
