Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2518923BD02
	for <ddprobe@lists.linux.dev>; Thu, 13 Nov 2025 04:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763006994; cv=none; b=VQ3xWsdi6Wdr744FENjkbPDamZHGIO6jFpwGnn/sAwmPx5yCykVY5d8VP5DSU1B0aK7Z/xEIoj/xhIErjugDI0yG2vwU3pAOfDvTYeTES+AkuFY+y8W4m+P+hFxgXUo5jc8PMyU+WpL0biwcdq6WYguGU4Rp6sGMCmYzJWIiPd0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763006994; c=relaxed/simple;
	bh=Hs48O5N8fkzIUmMPp+bNomA0Swl0bIOhULMLNvYGrOs=;
	h=To:Subject:From:Message-Id:Date; b=Qbvt9eywzoMaDoLaaLYWyBoDHgx3D2xeRnwbeU/hQzFr064v67ojmi6zkdEgA4h92DdWaWmYbHs5zwtQwsVvIAW3VRoHYY2kWZPV4SJAhmH+lnaagy+UThvs2jcKDV3HTUglGGVmf/JtOge4riMm7ws7r86pwDJPosg1GgOPNfg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NHJm9y3p; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NHJm9y3p"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD81FC4CEF1
	for <ddprobe@lists.linux.dev>; Thu, 13 Nov 2025 04:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763006993;
	bh=Hs48O5N8fkzIUmMPp+bNomA0Swl0bIOhULMLNvYGrOs=;
	h=To:Subject:From:Date:From;
	b=NHJm9y3pGpDPuaXjMfcnptNcKhwT3SNxjwY5vQchp9r/V1KXtxCFIzLv/LAMQ67+X
	 bNmNIGas8D+jB/wWPd/oMFrSZFYTGzuO0oXqHjS4ED+/5f74NcQZdC6ZBXJP+Fz0Qh
	 7MJuMmMdHicgQhqjDCO1xn4rXu7qMj9rouPd0hHlH9Uf+pK9dlP0qZtPf6CSHdG5ZR
	 pynky0EyRpF4/YjN+dfmkHigFb7jNbz/jq+KrPdprf24aEatCquW4NByZVVUaD9YqQ
	 eSeI98hENyyBKElDdAewJbFrd/eNLxLcWd1nTnhyjSXCArtYmZbW7GEmgT8V+2U0Li
	 VsTlXtW+r8BmQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C45ACCFA18
	for <ddprobe@lists.linux.dev>; Thu, 13 Nov 2025 04:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176300699359.25354.16606242647597952718.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2dceea3fdd18415766e1f2a6999de28b196b07ddd484083ba63f922c3c7ede81
Date: Thu, 13 Nov 2025 04:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763006993
