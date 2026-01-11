Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 04C07223328
	for <ddprobe@lists.linux.dev>; Sun, 11 Jan 2026 08:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768121634; cv=none; b=huJSNjJ4P9fshamrpnk+hgbcq6ERly3gndwh9+aM1Qa6fbA1v4SqEkJLRJkqMg5NS9IYDYdC/JVWLh0eVNFb5BxhrONcFGHhUBrXa4wQ5V30eIAlaMgCM8Kiodn07GP2Ow35IenxbwHjyOJqiQwW7WTcgruUW9Z1V+e4fbLZDoo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768121634; c=relaxed/simple;
	bh=porwIfWUxfqBHQNShKNcP7dTCOJ/mj6AzkayXrKDojo=;
	h=To:Subject:From:Message-Id:Date; b=pfu4LIfWQlYz1vVtm9D78mhZDKqvdzBZQ423lxRTCMoO+uKrI4qO7Pu0lsufY+aSsX///vpIezUNXAibuyZkK3H4fAez65zrnebM+61RTaTrwGszqtQFCQq5vDlOnJNgiYAoRtQZ7Cut16c7H+OZ/W8v5MwknK13jYx/jCO6c6k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Zo75RVaR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Zo75RVaR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3BBBC4CEF7
	for <ddprobe@lists.linux.dev>; Sun, 11 Jan 2026 08:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768121633;
	bh=porwIfWUxfqBHQNShKNcP7dTCOJ/mj6AzkayXrKDojo=;
	h=To:Subject:From:Date:From;
	b=Zo75RVaRiCwJMvpv8eDuNDVTf4NJVYnL2Zwsl+4Vm7zVKR6dBTDwmbXoD3nwCQILI
	 p5sjKMbjlCauAhisBFwD/dyxZvzO9bANZObFWaN0UlONvd1ZYASLSeTMO2u9h4FEBT
	 G15ZoMFTjxSMvOcl6O4+wqqPqd1EGXc6uNw+lB2p5Q7qKjwUo4SihdSR9m4uEum+tV
	 F4/eMZslGwHljOAjPvRYmM7Ug/slk8ANYSNbr7/S3UTJiZFsMSaMhcbtJGrl69yAkA
	 1Maa5bulCAhfN/r4XSwMRj2yLXhuMtHj4HSPw+uuusAdHqxa464rxFdGsjsbAbPsNn
	 oKQzHaihXUYgA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92012D2502E
	for <ddprobe@lists.linux.dev>; Sun, 11 Jan 2026 08:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176812163357.22229.15656567831310471917.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7840056590cb67b385ca5592710cf49c9094648b803939fda836daeda75fc572
Date: Sun, 11 Jan 2026 08:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768121633
