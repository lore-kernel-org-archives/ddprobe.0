Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E1B22620DE
	for <ddprobe@lists.linux.dev>; Fri, 14 Nov 2025 03:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763092194; cv=none; b=Du4tNTPScNBZyRjsBKIapeP44qynMGVAj5j1VCTdfyCPtrO/B6TgRyNPqchBLbQGJrIUnuUQhc9NWTQMcT23ekhrqC2dvc7hCK99ASByF+M3ng4uoXqzjMH+mo8CGjw0wNuwuqLv3wAHXGuCMcmfn2n6bUIx8xrG0DHGbDeRG94=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763092194; c=relaxed/simple;
	bh=yyRqRKGB7HAPv7SVQEV6jz4+F+H7nBrvzyr5kINai4k=;
	h=To:Subject:From:Message-Id:Date; b=lxVGnQWyIKfZ/DoP/LypAq18sXu3Mz76qRJ5lSzgfoPCybFuC9JzjsnKeXa99J++uxVpiG9aJoV/tTUNLi7dP86iaA1FjfbCigCNiBhsuzD25ZpPbDAQ99SvHaZQdHzf8WQRm5UXOL93yUpChMEC74n5D8fCY/ZR0urpbOlnXx0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DM5+H7P2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DM5+H7P2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1BF3C4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 14 Nov 2025 03:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763092193;
	bh=yyRqRKGB7HAPv7SVQEV6jz4+F+H7nBrvzyr5kINai4k=;
	h=To:Subject:From:Date:From;
	b=DM5+H7P2KoE+uxA62mGDSfMD2K0iNTunPiydLmdnejApynmpefkUl0ll4pwAQPSHK
	 glaE97AVjnvN8oGI03ssBxN1mUaqvM5LujWJUmQZA37yJXXkPix/bIk70hddyZA41Z
	 S932r2t/v+d6b8AJFcc2NwBb4FpqJo/V0QeOIYb0GkXiqsx8fP+VBee/OeM9rZiQj9
	 Hy2WvDvwYGxVwGpSINP0PjPGNeT5qO7TBKQBPHauOrXVmGho33KxrOioVrxe1ApAkB
	 nIYe+cK5JWW5tO9t4OyODyae3lPgtLEZrBRx1BpVhmSbGTZLRZDf1t16VQDMxL4Yk9
	 axKVbONIcMDEQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9325DCDB481
	for <ddprobe@lists.linux.dev>; Fri, 14 Nov 2025 03:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176309219359.2708.14917488863963448202.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c2646d6e75d7ab952917f03c836aab5803bc222c5603d886d47e76244e062dfc
Date: Fri, 14 Nov 2025 03:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763092193
