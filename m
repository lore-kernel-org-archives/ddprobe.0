Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5F3853D6A
	for <ddprobe@lists.linux.dev>; Sun, 11 May 2025 11:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746964194; cv=none; b=CfJXTEbpsKev+DkIrFDmM6Nx/MHoCRQdKYj3MIIq+tAnGmTUV/6I6Lk7/KrTeSbnTjurHiIPtYN3ccAT6NRdYeZKhNV/n4VgXKGSeWRM9/2oZ/Ow+uk9ACcAnmEnUxqGY8T1FHttoMjwBNBl2qdkaacbnx4Xv4j4V2ONHwPkrA8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746964194; c=relaxed/simple;
	bh=cpSyMuAeqlfQwc9fgkIF07ZNnO2Go1cOohRZUdc9xAQ=;
	h=To:Subject:From:Message-Id:Date; b=rL2RLnKikX1ZK/6k/b8c8uHlZSAyQGHyWvfHo4s8ntsYLCQD4UhUjQQbPzoUo+LE80aHQYvXrMfi5quF7Hlv55B4+0c51BS4tbVWKsGqJ8iuoZECGVk7AgH7/PHuXS2no1as3miZBgaTuD6hMP87K5cerrtqmx5xnv2J6lzEiKc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CWyHbG+m; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CWyHbG+m"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A63AAC4CEE9
	for <ddprobe@lists.linux.dev>; Sun, 11 May 2025 11:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746964193;
	bh=cpSyMuAeqlfQwc9fgkIF07ZNnO2Go1cOohRZUdc9xAQ=;
	h=To:Subject:From:Date:From;
	b=CWyHbG+mspDYVnw1sL2a7ggVJqqOOOOW6qqTQ27kUKJsc8P9FrvoOXS0NWZ95acQr
	 nEB/zNPhKxpeizE1lPgF11sW13ifDT5cYDNS3I30OeWukCebA3Iy/G+Ia2+GzP7kHP
	 XgckMky2pMiO8JQHYMhOlKVPj7zG94JX9LVVzIb1rzKPVDmppoTyAp71nTSC3MQrG7
	 Sn7exmtUfryO1qn/MhfKelR5eHYx2vlc6ZeUHiDgeqRITgwE3lWG67TfiR5q33Cgn3
	 MuqwZTG6zZHB/efQpn4YapN+CKa7FigTSPU5s1JQR6gUcSJcmbqTLHxjw+qx8TBZBb
	 OdLQkPkB2liRw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 940D7C3ABC3
	for <ddprobe@lists.linux.dev>; Sun, 11 May 2025 11:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174696419357.32313.11705676901043805008.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 901d2916831f6ad323020a016305c600df11bffbac181f7524758b029bdb6247
Date: Sun, 11 May 2025 11:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746964193
