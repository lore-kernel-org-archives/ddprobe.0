Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C8997E9
	for <ddprobe@lists.linux.dev>; Sat, 26 Jul 2025 06:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753510194; cv=none; b=gJ9kNUKXkSog2Jv2EHHXhwnyp8+ECOmu5TatR+41gXA9UOGW1rcTdtC9R8sRjkUwuLWdjnNyJCuGRtMJ4s/P/HScsaR8bRQ3Y44lSiuEu7d41c9PpotY1pbRQFBvtbo8Qa3bhdZhFXn8bCQpDXiC0Wrkl4R6EPZqFDkIkI9erP4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753510194; c=relaxed/simple;
	bh=nmdNFb3dzUjDBff2J5a6s3qUQhsZ33Orw1jDzmgrUBs=;
	h=To:Subject:From:Message-Id:Date; b=MM54auK5RPzWhcTsEK89GZD9sAiMcg/ka0l+1UAczSBofhDpHUPfx8lPjlOOU8iL3Wz2HFQZjiJGFXjJycpfpBOJia443dFcYc1bGPEaB+WG9aSTM2PV7sQIPAdsclyVidDzluFe0Z8iVTU0TAFuZQSblCl4n75cTVonnd4CoS8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uKalY4QY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uKalY4QY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6A2FC4CEED
	for <ddprobe@lists.linux.dev>; Sat, 26 Jul 2025 06:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753510193;
	bh=nmdNFb3dzUjDBff2J5a6s3qUQhsZ33Orw1jDzmgrUBs=;
	h=To:Subject:From:Date:From;
	b=uKalY4QY/MdwK74pj0GBWCuoOf5M3Ivc1k5gjraf+emqcrqnHKe0s3fcbvt5egBjY
	 +dBMYkCYP1uw0e+yaH5QOaVSwR1k7bIqWp1oEg3AFkrO58JjHi8Vwx4MMGLTgUiinL
	 zW8v7Zqo+R+xEvnZB3b8ppHEXF0OYB3d6Q9dxaUmDNV8uFDnfUdRXPI7Uwmcu0cfjS
	 NvVp7X2eoqfDYn0lo/sVkiZB74uCOle3lKmYLR7ETyFclygmgVfJzAR1MR+HuL8bUP
	 5bIokQ02E/Oi9lvVKnwsaM2nbcrts5Fz99+bvVSgKRUUNpPYPDIN0A5v3o/lQqeHD9
	 xhFNJEA/YxK3w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94636C83F17
	for <ddprobe@lists.linux.dev>; Sat, 26 Jul 2025 06:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175351019357.3723.10213099446420194320.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9a44ffc7ddde101dd2fc7aa8067a88f94f3efab964facd92e5a33a7d24e8026a
Date: Sat, 26 Jul 2025 06:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753510193
