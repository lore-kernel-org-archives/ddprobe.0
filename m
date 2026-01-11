Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DB3E73242D2
	for <ddprobe@lists.linux.dev>; Sun, 11 Jan 2026 12:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768136033; cv=none; b=kY0tTOPyppKOjh7f/nwuRof7V0NyKBOTf1OVcXQTwio2dA3kHx3u40LhmgoD8lOlLfdUKpcLJ8dBoU2CPJzEDCfAwN3qn5zyuZqX+/V1c4Parmods6r0uxRS72JWTNIuzVYwGY+Se4KTbn12VcwaVUYEdI+EDd+YsxHw17dFzIU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768136033; c=relaxed/simple;
	bh=8afy7ZIPO1BwrNGC2fEmyi/CyprC8VVzLEqDWxfVH10=;
	h=To:Subject:From:Message-Id:Date; b=rLk7ztbyhdxJnNCuawT8CdUOKLLSyRgAzSFG7CFnEJhVj9oGg5vThV3aQbpFcoaf7u4ElEE/LoJ6roFvSRGlF45W6dZZWTi5xXxK0nJVCEH+/E+hVlgTk9WZ1ZYZLjIv0KSbjwSoqD/4874mErAHmjhfAexqlfe4/Zczw0r/N1w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=s2V6x08j; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="s2V6x08j"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9C747C19423
	for <ddprobe@lists.linux.dev>; Sun, 11 Jan 2026 12:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768136033;
	bh=8afy7ZIPO1BwrNGC2fEmyi/CyprC8VVzLEqDWxfVH10=;
	h=To:Subject:From:Date:From;
	b=s2V6x08jVRDZfITpPcmnlPTnCtjxyesH8Hh+cV9ZdtdCjFlu9lgde/6id+t91yPrP
	 HH9vowAz/7NeAxfgHf8uEacctqkG6geM70OKzlExL/qivaGyHLhylY9RJuYt7pS7E1
	 cL6SLk/Y6soiVx2V0TrEHggLgxnYQt5ZwFuQjG7/sEMhaCcZJam20x2fZpmLkcH7W1
	 IqZYnAnHykctckFDpN/FLEc7tgL5MaOGGrH68D5QvTpsu1CqsTicvHGeiEmzsej8h9
	 dK/YcMcanlr4XqNiuq9ZDzCPpPETFa0GaVkysM1r8a8M1cXN+T61oqfSZbHhSmVgxR
	 ovRWs5RaEwUdw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EDE1D2502E
	for <ddprobe@lists.linux.dev>; Sun, 11 Jan 2026 12:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176813603357.27272.16478468938577290140.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 919b1e21f6bbb700ac3213c6ddc20851d138e0ec4e0c8eb8b46e5870f940e5b1
Date: Sun, 11 Jan 2026 12:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768136033
