Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 61D202D0C79
	for <ddprobe@lists.linux.dev>; Fri, 26 Jun 2026 03:37:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782445054; cv=none; b=IddMU+aErNLGPA5o/n9LOJlE7QzZ2coQa5hQ7w4Qtc4R96cBEq/hYhDfadv06EhRP5B3o01C/X49AJk/CWHM66fvsMIyUwY/mg8Fh5B3tJ9qaNJJymE0e2EJ0+2WRA61MXkfel/OUEQzhODRDS9hVY3jbQrFikybZmXlUfPCcZw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782445054; c=relaxed/simple;
	bh=9r9jjSfdF2KdGj4F4UA6LyZdozU0raiFoEQJBp3Zfew=;
	h=To:Subject:From:Message-Id:Date; b=FC17zTStLLyGh9/iceKKGWlOzGkNl5zOrOLqY5bTm7I+COo1kYclVcNkSO6j20T4EsUkdYZ7QOWmCsSctrXRF5TekkVwedx+XhtxsrWICXqHsin8eZZzlh6qKme3+p89bJhLvX5ePh0prThuk9NPNO6mXohd8cNN8OTN/FdyLG4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Jbf537RF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Jbf537RF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C9991C2BCB3
	for <ddprobe@lists.linux.dev>; Fri, 26 Jun 2026 03:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782445053;
	bh=9r9jjSfdF2KdGj4F4UA6LyZdozU0raiFoEQJBp3Zfew=;
	h=To:Subject:From:Date:From;
	b=Jbf537RFPyUK0k93skQwUMn+36kR26/V98P8w3ubeZkdYS2etalSh8LO/NFTakwFx
	 y3GWf/RU/Xw6/mUQeFR8dzAFr8eXxKlMz/ODsKzSP78t8qLJx2OgrjnkYOJdr3zfaK
	 9GxezTCqkqUd+WK7X0sogbD8irW+bZGakcNFi8kWnIrjd5t2Uuu814gPdED6nhfPMk
	 AHoJo9pTyyzViaZeawqExgnuT2isnpE6mEf0mr7StA74tdRUDvdzcweI0TJ7DuppSp
	 15sg7J4m3ZkUGhHGz4fw/azWDpnaXTEG97QoOAhQ96efM8D/L+mwBQtvLZ7zhyCSFk
	 LjMWL40AvPhQQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B021FCD4F26
	for <ddprobe@lists.linux.dev>; Fri, 26 Jun 2026 03:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178244505368.17728.9491112174463354845.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 48cac8c2b596c75c3658db8292075a3f10609c1da13f866c3e4a7b75b308dc54
Date: Fri, 26 Jun 2026 03:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782445053
