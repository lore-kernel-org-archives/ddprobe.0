Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 751AB1755A
	for <ddprobe@lists.linux.dev>; Sun, 14 Jul 2024 12:40:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720960823; cv=none; b=iZXONBCArpfB0t2jN8Qy6UbZJGhpz0wNc8OEIqrWgyZR3Xa0cikLB2pVQ5Q+nTQKiz4YcUPTTeun2r4oRiuDX1bCJvIO1G3ayhpcLwqVpuWp7YppZa6KPTMZc8m3rgWYwYIq26jOp4yVIPoszUgiqzzpYkkcNkjCS5NP0tl0n9c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720960823; c=relaxed/simple;
	bh=Zh1IChjxFYHd4FvSvEayWwnr0YJQ4bRhYDYgpjC6HzQ=;
	h=To:Subject:From:Message-Id:Date; b=jBSfUTG5E+8rS9ZElo7YG0pCrhzJp2/orDRjLyLK7qPo2tJda2kcguSe788cYJlsVWcqOxJ5RaTSMB3WTVhwV8UcP9SLzdlPqxdtHTGWZjkqE/9M/iR6UpXiciclyf6cARwLM93e14caQAdtuRCL3jClwn+Xbums+QzZgz/QA3I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CdD9Ijw7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CdD9Ijw7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DC294C116B1
	for <ddprobe@lists.linux.dev>; Sun, 14 Jul 2024 12:40:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720960822;
	bh=Zh1IChjxFYHd4FvSvEayWwnr0YJQ4bRhYDYgpjC6HzQ=;
	h=To:Subject:From:Date:From;
	b=CdD9Ijw7L7MrmnUpDSzw+iUyI1LPYFteG/lCJGuinCSH9C2zr1YcDD6MXFYbUeYZB
	 mAaccbJFIIDcoAMVLGO79QYAvgl5pdqGIEGyqHK5GULUJBos7BJU/1ynGISQYsAM1O
	 GVlMFi4wYq1/nQ14VpbQsUXZVtBzW6zEi7r/g2MZOXU9IRyLPxMdtMX3ohj36I1mV5
	 vHEI30CTvQR2J8zzyy1F/pXpazaGnylBvU8VXgfcwSgAFd+FOkX0HQan+j0GTdtuuX
	 SvESFENq8P1NUeGWSAai6vRTOen4WRAn36K5YAtxAigd2qwMAx7iVTUs4k8wbxWAXj
	 jqaXGxTM6YubA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C0958C3DA49
	for <ddprobe@lists.linux.dev>; Sun, 14 Jul 2024 12:40:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172096082277.11895.274714914631569070.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 99343327053a628755f7792b5ca2dbac1dfa1e35e762365b20fddacf16b24ef9
Date: Sun, 14 Jul 2024 12:40:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720960822
