Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CA773FD1
	for <ddprobe@lists.linux.dev>; Sun, 23 Mar 2025 14:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742740795; cv=none; b=YIURWv7zXBMTSAcRhDPC/GdQr+MkgohlWhSL4aOogcHdXYvwkLt0n+y0SzYM2IQLoGkER9Am0H4j6xz+W1151KusyrDZc9UMCxObH40tjtILaY1k+ELqEpeMe4yPiFU+UxM8EVtg92QAJUDGCuahgaegCENz5WON2ytf4xoQiY0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742740795; c=relaxed/simple;
	bh=G8BzQAINSRnDlHaEczc5pdvhQ91+DX08GsmMOuFZbrU=;
	h=To:Subject:From:Message-Id:Date; b=LZeJwHOKw/2HwEkkd1oFAM6Jh65o6nYz3WVgOp3CL5G4aD1tIYpvqpts9F/d+T09LvggpDzX7ALsq8RmC13R+Kv5plJCUdxIkL1cottlwmLa/xWXxn8cpajX1QoDsYnjzs0y3m+21Xmw8+b+HRXNAJ8Zx9oKZ92KB72rC1X2Mes=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Jc6SeovX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Jc6SeovX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B4A0BC4CEE2
	for <ddprobe@lists.linux.dev>; Sun, 23 Mar 2025 14:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742740793;
	bh=G8BzQAINSRnDlHaEczc5pdvhQ91+DX08GsmMOuFZbrU=;
	h=To:Subject:From:Date:From;
	b=Jc6SeovXuY4+NHrcjXvxcjVyyzKgXbejO9rGwCuBx7ERC7jWpK7BIAxtGjTD+sXg7
	 Mm0ewamLOSdOhPfC4T+S3Slval62Cxg6YrRKGHotsEnByuOK8TlEmDdQY6v28bMcvy
	 UcZ0IfZw4YH7EcfZR+96Cu7cNuF3lwD+unE5AHctrgJyF3VPAG6/7XUkd58ZsRCkg4
	 X5m2e0wgH4wl6pEOfgM2c68zIkNO4ZCupOmaxNosfTppNUJjUSlLW2lh/mMyX3G3lg
	 +vNjnowNDnBvonYClXTllU9YW49TvKF5sgDBY12oAmjeK7ZZNgfrpnp2m/qGhWzlF5
	 BdlFCGsRA19Gg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D6F9C28B30
	for <ddprobe@lists.linux.dev>; Sun, 23 Mar 2025 14:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174274079359.7431.6786870936151404720.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6e338aa8a3069d981b5b1aecdba099c3eee8975eb75bc15ff6aa789361d4b514
Date: Sun, 23 Mar 2025 14:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742740793
