Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 09FE519539F
	for <ddprobe@lists.linux.dev>; Sun, 29 Mar 2026 04:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774757094; cv=none; b=BX9xhwhL9w8XV7j6FAxEILxUM2TOAEBvSUDVGL5HcfWX+2bTcytUG50JAGjmIeWdFl3aU+OghLL3taZpS70vh2wNGQqbPo8AaDiKk6hCMbQlR5i8YjoJOQnTAC58Ktt4OGc6HxpIXEaFqTEbqJaShd7uofJGn6Kj3G6nG6d0RXQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774757094; c=relaxed/simple;
	bh=Sl7FwZ2ShzqYz/nlH5lSeWTWnHU9iR3njUJW7/0AQqw=;
	h=To:Subject:From:Message-Id:Date; b=S7hzK+qc+5DNd+W9hBtVssJA+/MVDGwaiS4H42YujM3hX5bCc2f+gTm4P9QBcVHPQgy7PaFs2AYw1foYREcCFKWTiwNne1lU71fyy6mv4pFezYy/Gzv6qpXSfCnTRcocNweYZksxAwZBhZ5GfsLroC39Fezn6xwChHVD4/Er8SI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bYRX/x39; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bYRX/x39"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A87DFC116C6
	for <ddprobe@lists.linux.dev>; Sun, 29 Mar 2026 04:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774757093;
	bh=Sl7FwZ2ShzqYz/nlH5lSeWTWnHU9iR3njUJW7/0AQqw=;
	h=To:Subject:From:Date:From;
	b=bYRX/x39rrjrtVJXVS0w4axcgdjTI1QCJhg0eTqhnyue/JENS1A2Yke4AtPNl/hqJ
	 F76HEQ5lVkN3jTSyhLAsH2Ro3qKzWFWLguIuHEOE/VXLXVHwk2vOHkCrPFI4pTIeKi
	 SZNORPL/58Rs37r/vaBQMEGyFfRhLFffpm6NFwNiXjMI/xLiQK8amDY7FIltphXxcH
	 WHEz/K2lZQnjFOZbxd5rpl6yiTauiJ+Pir/82QeLeGQ8y6njPn75rU2vtvNCOSpnDJ
	 B7AIINp2Qr9IPKJ71L6yPsL7yd0fwUO7V6xHFGvsQdhWzNpdpHBX4LD9XOhBOyFL0A
	 NrqMExmNsvr0g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 937B2F3D5EA
	for <ddprobe@lists.linux.dev>; Sun, 29 Mar 2026 04:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177475709358.505.9938170596694261244.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4fc00ea9947ba3dba57fd20fdbfc9d3eb5644090b00a7406b69cd7f3176de1d1
Date: Sun, 29 Mar 2026 04:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774757093
