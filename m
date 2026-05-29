Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0D94B3DDDBC
	for <ddprobe@lists.linux.dev>; Fri, 29 May 2026 11:52:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780055554; cv=none; b=oeBuGgluWZiVHVhwticyH1FBa9YBbIPoPWZVdfwcF92gbAepCusQHH920JvC8qkZ95dZDLcFrFO8PVD2RAZ5Jz4N/A4zG4+I6uMhwgWvUd37GW4XnGqrgiwEWMWF9C+qDXWv//qS1mxlSBnToxz3sCoDobQXtFVV8TnwznhmdV4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780055554; c=relaxed/simple;
	bh=aWQsGF8YDAS6IhZcsRU6/q0RVW4Q+Ot+IiKR1dA2oAY=;
	h=To:Subject:From:Message-Id:Date; b=D+PaN2BKL77uJxD98LPCGMQDRMv01GKs2F9x9rea4w0oNnj7umbOV4u3gvqWp7vud0vgBSiDWnwBgAtB3bLt/fUHQW7j9sFxM0K+Yj4N62BSPlnr2FyFfTaoZDQTk68QTMefMVir0pnRse7iv0CBY1gQZJESu+21tONEa7sIgQM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KV8kpU3u; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KV8kpU3u"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BE3BAC2BCB3
	for <ddprobe@lists.linux.dev>; Fri, 29 May 2026 11:52:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780055553;
	bh=aWQsGF8YDAS6IhZcsRU6/q0RVW4Q+Ot+IiKR1dA2oAY=;
	h=To:Subject:From:Date:From;
	b=KV8kpU3ueaDdxv5ZxolyW4T3E8pxTKP8ALSQSgAzJ3NzqrwGR56rIGzzv/7Rxpyvt
	 KXjnK+2seOA+pljTBt4OHBek7Xa09LIJeXFT7Y6X7ANGU6+wmiyJOs0HqFP5UXg/I7
	 yeepO0kxP0YJG6WMU6QCxtC8VaW4J7SRoxi6mBo3rmnrgkMOvoKIAMmY70Q9gfLx7u
	 cLX2eTFx1fqjPeLTnnTdb5eH6v632zkxZgn+hI4EULNZ9NO4vqTCU+zJIOZ9L9hrz9
	 xJF6Se0+s/QZZvl4vILdp/OAY61N/nH5tufvQHp3pdnuEbAdrhgiIdq56DBXXqPGpm
	 cEECgIeejAUAw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A7E08CD6E43
	for <ddprobe@lists.linux.dev>; Fri, 29 May 2026 11:52:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178005555368.28931.8286718478611464780.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6a7e73ffceadeb144f5e7f4258ee048929fc5474635eabe842a3664325aa56a0
Date: Fri, 29 May 2026 11:52:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780055553
