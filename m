Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 441BB331EC5
	for <ddprobe@lists.linux.dev>; Thu,  6 Aug 2026 13:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786023034; cv=none; b=ASDzGvpk0BMnISUZMyVYt/XaZFa74/5l8M3HbLgoQuCcWgWlTw52bolcQ9Gy3KxzlwzfAaNX1InYHBo/v9Ewo2ELr0ELe1Gf72eAG2jvJDM1xmdwys4oGQaTqKlNC1E8f0pU3w/YroXzompYz/8Fn6WCyFr97Saovk0KGteRoHY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786023034; c=relaxed/simple;
	bh=aej/VvCQ3d3vmUMbfCW8LVhMoAR99mYzEyS6OM6341k=;
	h=To:Subject:From:Message-Id:Date; b=MBg+Ulh5DtN5wkiu8JA6Kh92/mJPZN0wqxG43sXDa4+D1ga6Org3TPO1zZE2zIajOzf/UXuQqG44miTldcGGW603LNRZk3dt/tZRe954FhIivxKucEsj3i1sLDeAITPopYdy0G8MpKPfj2W6HEwro+GNDi1BY0sZHhGjkCoPe0I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dDOQQkmO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dDOQQkmO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3104C2BCC7
	for <ddprobe@lists.linux.dev>; Thu,  6 Aug 2026 13:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786023033;
	bh=aej/VvCQ3d3vmUMbfCW8LVhMoAR99mYzEyS6OM6341k=;
	h=To:Subject:From:Date:From;
	b=dDOQQkmOshaiGA0owDU1DiXLQVkYDlnMbWozM+IX0HhOsTuMRQOpw28eGBUZDTZzn
	 f/FnejNRXTz7veBhjFAyRzG3z2zrCK810t5MgbXRI/PlabXmnbkPFQ9YjpSAc7Vtxx
	 hE7IR8aG0BdwK1EwiU1KGu9WAWFrD915JfUINHyP7AQi/ol4LCPav2EbsU+7xCMS0M
	 KblRsQl8PqGJPw/7JFzKD3wGum9OMbNoGFF1h6py/RdPl6cQETy3dZN2Z9ep0FLY6z
	 njC39H068KPFjBurajg1N8fLARYYKADm2Y6Iggd4iamQ4Aevb1p4goDMY/hKSZ8PAi
	 MXSxUK4Qmquyw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD0EFC56208
	for <ddprobe@lists.linux.dev>; Thu,  6 Aug 2026 13:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178602303369.7019.434207494127696436.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e3be346010547df4903ecb9665fd43d72c40785c945ffb7db6fc76c8025c9aa5
Date: Thu, 06 Aug 2026 13:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786023033
