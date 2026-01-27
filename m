Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B5202C0F78
	for <ddprobe@lists.linux.dev>; Tue, 27 Jan 2026 08:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769503434; cv=none; b=c/JYIMjGfdULyIsCZwbDR13/MrWsG3HHIT9LOUjLlpvYjCJbNS5WR3fRXQj0ZaZF3X3b71xct79Vw7RkY/HICUvIwK/3C9f/ut+dd5Zsb0NPtMPKKBea2yV6ej4f4K+bpPBZ5emaDdKN3g/0Xk2WC5uopb3I/z4BZ0MhlAtQgz0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769503434; c=relaxed/simple;
	bh=HzejIXDayxLb/H454WW0p1QJxrh0WclJhVlX/F56lXE=;
	h=To:Subject:From:Message-Id:Date; b=ILlyGkFBTjc4IiUCL/zw0BXiufiRwd7qFYXpjXuM1M/iAS4LxYlgnV53+1JAMWLF97LwtJTEiZ8XYWe+fAX+zTinFQtRMRDh+IkLSouNUuDStIPpvNT4/M3vQ1SrGWJB1wkM9qDXW1pc2My+xLhlDHnUben4kSVWfleBUTg2sH8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JeqenPHA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JeqenPHA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1625C116C6
	for <ddprobe@lists.linux.dev>; Tue, 27 Jan 2026 08:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769503433;
	bh=HzejIXDayxLb/H454WW0p1QJxrh0WclJhVlX/F56lXE=;
	h=To:Subject:From:Date:From;
	b=JeqenPHAfHic/Kw+m070LK1uJF20cfm/cBgZuIvgEIerxPs67I9KVzKa9wm15tByG
	 45aZ0TholpNHUYISHrN3Qlfs9mx1PYRAisdLEBcdy4e0IrtL6KuOsARYy0Ok2QAqY5
	 K5U0FliDbTJ8sWi2ZGDEfbjgZ21zdyIavUNMJzdnpnLSH58uiwzXOdNecEyv5YZvSW
	 6K/Gv2Ir3XKbQsGPrkimb+w/Nktst+pszXO/O1NuI8fNEHmwnEs/eVfyeh9qmCQ4QL
	 TicMTPWL+SXYnNn4AyutPwwyKkkGlyN+2pS7Zs6rJpqhu3oK/ZOMzq/tx4oyrBW+H0
	 saoADfn50Jqzw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B497CA6C9D
	for <ddprobe@lists.linux.dev>; Tue, 27 Jan 2026 08:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176950343361.408.5138375674295042234.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f44d0f61ef96f49ecb25c3cb5e4070d97ca8e1093010b3de4fd6ddcea36570f4
Date: Tue, 27 Jan 2026 08:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769503433
