Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20E2AA937
	for <ddprobe@lists.linux.dev>; Sun, 19 Apr 2026 09:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776590254; cv=none; b=r8aJ4GsFT+DVukc2Une1K1TpQ5sePjSCi2CUGASR3xTdSC6SqOyHkddpYn/Ai64dp61P5mdnQuNUKdfnGrDPoXWWFwjcsD1ruE6786yqXyQMAMcI8M/ru4uIytmC6F7W1iHJxDz9ofn2mDyGwvmJsgns+5Y7OgvOUCLps36EvEc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776590254; c=relaxed/simple;
	bh=xBrFUNSN4EZdjaWid+8zp7rsmGi5CWTOrQuVqzBE1DE=;
	h=To:Subject:From:Message-Id:Date; b=IQAvHtnoudvQn1SQrvZOVCMBfirOIJaVQ9DIWgFQtSgrNhdQGX8zOQih+qesEITr/tQ01/IlsI0RTnOtjCPnGxcf9YkJ7bu83pqI2XeuL26RhQH9rp3YjuiljlJA49IJxmK6zZRflO7oPXahTJ7kt7GqMtO3EDTQfpwPTQF0V68=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=L9GUpN6J; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="L9GUpN6J"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BCD33C2BCAF
	for <ddprobe@lists.linux.dev>; Sun, 19 Apr 2026 09:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776590253;
	bh=xBrFUNSN4EZdjaWid+8zp7rsmGi5CWTOrQuVqzBE1DE=;
	h=To:Subject:From:Date:From;
	b=L9GUpN6JESUFvU+A9fo3GB9vPsh83Ek8iCjyoSzR7fnE2KyCc3+jLgdkmGEgeR8JT
	 J7SFBgXyD3WDPiiyElGS4q/4wACnlOBOyyDlLjaQhu9Pf0sV2/3iqi6Q0zpm/XIKQI
	 9zqyWk59E9rxGc52HjrKl0/6NxR706GX4yy8Mj/i0ydM0csKLrC0ZRhQ1BuwC9Qu/q
	 DDYSz+w2syOGHhQ4VAo6o4FoI+nBZpsxrQVXDxG9u5NteIvbiM5Ui2W0Tmlm2NaXdu
	 /npeUxoRmkilxYqROBsNW/2YEQn43lqgYKNrNXg46THhTEjlKEclD10ncSZowKVoeV
	 axCvozUWPxuVA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABD86EA7193
	for <ddprobe@lists.linux.dev>; Sun, 19 Apr 2026 09:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177659025368.4090.1410235109181088574.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f4f4329635955712fd5de9d3a2d35bc321e2cab8ba72aad51b1716705c987cf8
Date: Sun, 19 Apr 2026 09:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776590253
