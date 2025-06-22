Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22386347C7
	for <ddprobe@lists.linux.dev>; Sun, 22 Jun 2025 03:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750564194; cv=none; b=db+T7LxFftD0F/bnk0ghKoDP7aGvfOQ2lBtnQ4Hra3WMoY9KyTYUp7NpcigXmB13lf42tsGUhr9PMwNi+AUCzmxs6yY0csDw2fMc5P/Oo5WorkgKiWgKdT1l3ahbC0om3TH1uiA1mFqD4wqlxaPagoPKpW5W9rlu2I5G+zAgGTY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750564194; c=relaxed/simple;
	bh=2dpYSjKLClv9BYmDJZP5rBG+GIHJvDI+6+O+zYlZhGY=;
	h=To:Subject:From:Message-Id:Date; b=QErrkUVvmwbmOyIqeo2FRrubP47C82pnUUWjOJUVc4vKHpzGtrEt0BgyK5bvetOm/T3ZiR8M+WQtxU+Pp9PtKzbLdHUZ8723hknA56cMjBxVGXXADUZa2LmyfENZ2sFcjDSgTB5/SjM3FTIVssJfSW/bMKOfi7Vy8j3OgnOpt0g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dds6Uedd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dds6Uedd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7135C4CEE3
	for <ddprobe@lists.linux.dev>; Sun, 22 Jun 2025 03:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750564193;
	bh=2dpYSjKLClv9BYmDJZP5rBG+GIHJvDI+6+O+zYlZhGY=;
	h=To:Subject:From:Date:From;
	b=dds6UeddGg3f1LonBAnAOl6eGaKSvEtQTRqoL2jg3DzRs84ELJ8nci/346QGBGDtK
	 ImfiDFzPx6b840fVhewhOzvgcL7CWQPZbPqlv/eLFg9sDvoKr+P9g6vxqyaNiNKMJs
	 U2jAI/sZLlozVT3LT9aZwa/FFXLW6SnH8SvzZK0jLqI4oIKA6/bY8JeO8s8y6sTxet
	 40oPHjiMzXRNH9e26DUYwMMN1Zwj1HdFQ/5FZIqHI1Zu7TEwfdUMm/FtjxpoOLbP3J
	 a8Ozl6QGT19To/mGUt4P1zqgBPisCuthTN4G0FtDPHfTgK6QR3SoQkdiDvVVoQMCQN
	 hWrbHg7zLx3xA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 915B2C7115A
	for <ddprobe@lists.linux.dev>; Sun, 22 Jun 2025 03:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175056419357.7359.10863988383864020880.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e4fcd88e88f0af09fb9af8e813abc8de517bbeef2f61cd60cad118a0720e0561
Date: Sun, 22 Jun 2025 03:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750564193
