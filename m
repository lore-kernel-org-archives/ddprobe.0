Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E3B32C0272
	for <ddprobe@lists.linux.dev>; Fri, 20 Feb 2026 02:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771556094; cv=none; b=dWzryISSxQo4TGN3S9/miw0cIMPFMsznia94kWWUMfqpixzb+X7e6mB1BUfZkRlPNfqEfIUXPdajP3ilAy2npZTCL7DrWxQiWW+4NPdjqhoL+wJnbOoBkk8KK4Gv4dQx+kXQMhJ2H189RukpwU8Wl6qJFjXPrjdAPjBnJujOq1s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771556094; c=relaxed/simple;
	bh=mWQnugk1Pj7c/P0Q7rhdbMxl6v97MbkBF4Vyuw/mpdc=;
	h=To:Subject:From:Message-Id:Date; b=g6Mydw0x4yl6YNjur2bQTPoPawnalJ/f23yDGWpDfxhqIVRw/6N9+TlarnbKtO+5oJ+EbK1LiAOCmcOVZhnsJ53Vmkiunl+1vmyqs1fakpVOVySTe+XaGUBYPkFnhgCrses/GzznCLcei8U9E8AvTFCP1ix2G38qTGiBQPRXkxQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pIMrzyeh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pIMrzyeh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B51B4C4CEF7
	for <ddprobe@lists.linux.dev>; Fri, 20 Feb 2026 02:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771556093;
	bh=mWQnugk1Pj7c/P0Q7rhdbMxl6v97MbkBF4Vyuw/mpdc=;
	h=To:Subject:From:Date:From;
	b=pIMrzyehV9jvsZwrzXqy8ASvjXjT12h7XEJ1evJGrk/gD3yHKt2jb/7f7IaUScBE1
	 YNcdi4uqIq8K+u5qGXyY5H2ZNiHMk2xFoCZQbrZEQk9I12i0GTutV9TIuoJTQrBwWe
	 +h1biCN4QOw4qEgzMUxoq35pGH+31S9PBmloI96OhhEaiQ/n6W09JCLerzlbA1fcCk
	 zB4sEGGh29q/WD8ZYgonkJGon3JEe9owaFRppab//TPIaMOITLzCbttpVkjUcWVMfS
	 vnQRZNbFaYsfEwkkuimLZ4pEvVilbzEpZfchJ/+EiX3INrEQOOdR9QiTIyUAfxUwZ8
	 Pc3Fjn+4BRehA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A74FAC531FC
	for <ddprobe@lists.linux.dev>; Fri, 20 Feb 2026 02:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177155609362.1100.15606300332555318452.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 373a852bb4075ddf17383615fb299e31c6433a89375cfd0806e8224fce0cef42
Date: Fri, 20 Feb 2026 02:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771556093
