Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18B7F200127
	for <ddprobe@lists.linux.dev>; Tue,  5 Aug 2025 18:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754418594; cv=none; b=NRMi1OwBmvAP2ou+rYMwQ+Kpo1RfGLaJ3vDE6IXFleAyMakjWmyE3t1WUpKzENg7qalOnhgZJKzKyqCnPJ45A0es+NKoQfV53s8xJZuFU1S92g4Re2mbAcCdOecDqzsbVqenAV1pGq+ku6LuIpxep04AI40E4fAf6dXoEUDXlKk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754418594; c=relaxed/simple;
	bh=bTX2d0jubGSfUlE41DErpbHfHM2rV/AjtaQoCOwghJo=;
	h=To:Subject:From:Message-Id:Date; b=KvyMTSc9aI4U03lvtDyd64i4z/zPSNFP7u89IPZArE5dJ2vGbapJQMm00s92Bp2zxCdb+7742fAT6C+IoUams/h0fixnuTOZ8G55CJFvwJwHSecEmewt1Ou1p8msJuYAI34wYensAnYIto9pJt8cRXwRZ4OTqL1YiAhUT9wDHws=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OQqsb6Fi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OQqsb6Fi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DC65C4CEF0
	for <ddprobe@lists.linux.dev>; Tue,  5 Aug 2025 18:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754418593;
	bh=bTX2d0jubGSfUlE41DErpbHfHM2rV/AjtaQoCOwghJo=;
	h=To:Subject:From:Date:From;
	b=OQqsb6FiDiETSN0o3ih73pGPkRjLbwU/G3+tNUwZPmD0CzBEvxmbZkMAYwj6rSuMi
	 ZhcR1rlq0sVzoDlRFNaBsMnLLctxBPtn5DbuNnCEljt89U6QXhjn4LhsHSkJUWvYan
	 FlbkrDqLc4Yo0JaSe+5en6076rcO6xdTOsft9TpuTgYMkdIjKhLCrRpOTVB5tklIBj
	 LZNCTdsbt8P+acmdexbTgyt+4dXtHq5DaPh3tuni2WCxU/XMcbtE1E9vReNnHdYqak
	 y6TY1+20HjcerL9hNFL9Azg0HMM5nS4M3dFdVwtkPlg+LxkZpX20nVDocxPBQHOb2f
	 ljic+s0VUzmDQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FDA6C87FD1
	for <ddprobe@lists.linux.dev>; Tue,  5 Aug 2025 18:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175441859358.21269.5272383301002512012.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7c63d96598bc9b1313f8dacf467246fe7a8ee99141b3f1b00251cd7e11ba51cc
Date: Tue, 05 Aug 2025 18:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754418593
