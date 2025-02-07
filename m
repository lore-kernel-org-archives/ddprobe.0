Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 411061D6DB5
	for <ddprobe@lists.linux.dev>; Fri,  7 Feb 2025 09:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738919154; cv=none; b=NgC5KLG1zM8xm1amwwJfshq3mnYM9e7mV3UWIIhc2zDUlyc8edPX3nSHnbsoJIcoQZJjj+pzcEZPITSDum/P0AFe5tvpvSvGsldb9e0nOnmq4Y/8eICFBkjy54LXwL+qM0LnyZVuBqx02I8V66sowKkkTG4OFaFdkjqOilAUuxg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738919154; c=relaxed/simple;
	bh=kM7B/AmJmmKGhv0r/gxolxHY8NIWGTawmrq/iTPtCS4=;
	h=To:Subject:From:Message-Id:Date; b=uqm5AX2UxMhof/vQRx3wuK0efwtwAk1yRWId89uajLTxxgCbwnDKl+Ujc/Aa0iY4kXDYYz2yZUHgEcOrnwWyqROkw+emovd4B5iPcSFue0h4vT4nkjYKiWL+fe6wLz52joA4AhnvHJGupQil2DDv8x6nV0zBp8av5Kx36qu+og4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hNxmHhUQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hNxmHhUQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BDC7BC4CED1
	for <ddprobe@lists.linux.dev>; Fri,  7 Feb 2025 09:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738919153;
	bh=kM7B/AmJmmKGhv0r/gxolxHY8NIWGTawmrq/iTPtCS4=;
	h=To:Subject:From:Date:From;
	b=hNxmHhUQF7UtO7it2I38ZId1e/Rq2KObgA3JlR4vPqy+waNJ8kdV2mW/yO8sDa674
	 W+A+or6NQMdA5Jokhx5o7vjDV1qaripMSGnEy9dFmHyZTvH4TxDmE1uN7QumjvwA3P
	 vTL1s4OPM0Tmnl6T0cYcgOAO61SAL5wMscnDUGb6Q/QeDfrRA8kck+gkifOKhmFcy7
	 ECMpmaNJUcJJqy9pOj59YLTusSQkv9frqYQkWrRsfpQgW7/ErcR/2fX7VyxpJgx4Fh
	 7GIFZniZrc9fXobI1qPgBIRteLhoh1koidsrJPEl7bcKJ/4hRG1fx80FHCaXaBtxtk
	 B2tuTPkXkB4Ug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA600C02192
	for <ddprobe@lists.linux.dev>; Fri,  7 Feb 2025 09:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173891915368.858.8278615990912176223.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 26168bbfb2f893a97dcea0c492f888fc1c58bd960788efd1cc0cbeb217784c9b
Date: Fri, 07 Feb 2025 09:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738919153
