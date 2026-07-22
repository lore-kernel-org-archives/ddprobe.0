Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 68A6730C17A
	for <ddprobe@lists.linux.dev>; Wed, 22 Jul 2026 11:48:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784720914; cv=none; b=MPHy/60uEgOXxN/C5k5YO5maigibbJ1V+VqoqZyV++0smZggYBTCxazDTQrF31au+lEZfS80XlAEN2tNPnMV8dbzgwgcjsseGlxYCakmTWUs62AEOGA1nEMjGnL15s3NBj946XIwPRvB4EteCdQ81yBIVpFlaypOGE2LFmenQQA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784720914; c=relaxed/simple;
	bh=QFJOWZw6ge8Tjckhg/m4Jzz6ydFsT0Sy/lGsW/wr+dI=;
	h=To:Subject:From:Message-Id:Date; b=QRNcZdO1lQzEA2/oHUiJXBUNN1XCbA8/VRzKgJPUNqHoKM4fazANdlEkmtE6Lsg9urgNH4J40HxAMxPNhbKD1JX5Drtt5CtmskZYSp17CQejWVfv5tlTOKva+F7CdZ8FvC07rcCXIDNoA9ScULEtTWte+0VCLdgkJ1EYGZqSBjc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=G0cVxaQf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="G0cVxaQf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E1BF5C2BCF7
	for <ddprobe@lists.linux.dev>; Wed, 22 Jul 2026 11:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784720913;
	bh=QFJOWZw6ge8Tjckhg/m4Jzz6ydFsT0Sy/lGsW/wr+dI=;
	h=To:Subject:From:Date:From;
	b=G0cVxaQfLO/ty52Iz9pbywJjjxn6I+yjhd4aWMDgOyqT/1tOe4jTyavwZQPzfuRIe
	 nHkIWZLkB+B7C7TjdGZE4hXmwPvSqB9TWjXk5hbd3QIWIFtdQwXY8XeYALlMlaNVpj
	 dsIGDYOBQoPMVKc/ltvmbQigSQvbPTV0r+lYrVSx5c2lbBL4MbTegAhOsYUmjv/ryn
	 U1YoCLgrJncKs/iUYLxjiKY5vtbmiYrpSfvwZshpZR+vweZ611tO6syoINNS9qTLon
	 Bgv8nHS2Htw9Z53f4xyOUH5j3nUq74qu4M3Rs7VlGlr8pGpGv8x84n4RUcx8VO66WC
	 +qk8auM/9TboA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B837CC44539
	for <ddprobe@lists.linux.dev>; Wed, 22 Jul 2026 11:48:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178472091373.17433.2459704343398781977.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e53220fd5e0f52cb3eeed6c21e2074a8fbfafbb0f25f4616f12ba3d65c28a17b
Date: Wed, 22 Jul 2026 11:48:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784720913
