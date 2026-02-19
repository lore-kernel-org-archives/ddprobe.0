Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 270F33382D6
	for <ddprobe@lists.linux.dev>; Thu, 19 Feb 2026 08:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771491294; cv=none; b=se6cO92Xw0/WTJ+WRQz7sywKBcaDeZLG6fEzAdzBF2RR0AYrsMWgM2gBZZDQbNb1GSn1cZp4/tfOLGkUf5INdYv+Eh63g3vIOje1F0B8KXAoDjt8Ru7nAfDPascGO9HaU99drRVnwiC07DxOs6xdmb98gB8sr54/xHOPA+9A91Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771491294; c=relaxed/simple;
	bh=eBA0Ef60K0ZejF3IRMjoQo/Qu6FKjDi0I4Pjp9FrS6I=;
	h=To:Subject:From:Message-Id:Date; b=iKpuAe1B8xTWnkc52v1ojTlgRUrD9DOl1W9oQj25vU9Aw7UYw5mGV4CLplDV5Tc5XjEUzdpFTpGNom064oBGlwld03OafIFMxLSac+FdmVZcsl8LAdt1vLnP6g1asLTIvDgA/hYjZXQP8f1xmDFTA45Vq78ifluUYk2Y2EofFZc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=shhNirSf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="shhNirSf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF72FC4CEF7
	for <ddprobe@lists.linux.dev>; Thu, 19 Feb 2026 08:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771491293;
	bh=eBA0Ef60K0ZejF3IRMjoQo/Qu6FKjDi0I4Pjp9FrS6I=;
	h=To:Subject:From:Date:From;
	b=shhNirSfjTIHzfk8NFmOuNKNO32xhP2fUhcCN/e1krqgeK3P3/gqQSz5BcFTq9fG0
	 Q20f8dcYboWkuwG4yK8vTYAff49tovFyituqLfw27rBjhDUjC4svz5S5xXJa40lfnF
	 XMxK1plR0bAfOuOVZkvrgTJpu9AzhdEXuBuXwH03IzFvR9XWIhwe5oHWkL3cFe0gak
	 /64snzlELUJ/I6A8rp1WudpHoZgMVG0uLOpe/3TIgMSMXfo/6Fq1C4l8dhnRXPyGR+
	 wgFogW4OvwDGDAz8RLQASYFLNSVbkwqzQRSkzxokL+PDkDm+XG+NsDkaeXhluqSouI
	 mO1MkKqDf6mVw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98047E9A04C
	for <ddprobe@lists.linux.dev>; Thu, 19 Feb 2026 08:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177149129361.5661.16968780354264634130.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fd27627ed004de96047ce4b998c54c075ac03a226da275ce8e505b3dd219e204
Date: Thu, 19 Feb 2026 08:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771491293
