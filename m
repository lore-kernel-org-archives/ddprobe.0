Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 283543CD8B8
	for <ddprobe@lists.linux.dev>; Fri,  1 May 2026 19:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777665454; cv=none; b=b7E79UCQYb8HtmmIg3u+ENwf/onLIMH8WgemV/T3Gtga9n0YWbTeg59wBQy6/BUjQYDIopZ8z7wNFZ3EFwaqsc27YEtMolngU7XS76LDrum/21zPpMGmqYHFG71cxoAvQd72TjUBW1AtvRLd0WrT8VW3TVY1hmilmvkTqMKznHc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777665454; c=relaxed/simple;
	bh=2itnckvyNTmKr8bYoTKr9X40ondnXqg7fulb0iPQYNk=;
	h=To:Subject:From:Message-Id:Date; b=rCPXeY3sIhE7c3Z7Nb8QMRdRko09BmortTn42OwGJ47NYZob98nztDmRjfKIKHhLGhB3sFG2sLWnKMtIRnRP2UwDkghTCufiWPgQI3686EOjZ9kRKhQ/nm7aQFkV/EBb1OWkbnV6IRcGINjIde+gSkIRHVptSwGxF3YWXh+Fm9g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VUyCXqkA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VUyCXqkA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0F95C2BCB4
	for <ddprobe@lists.linux.dev>; Fri,  1 May 2026 19:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777665453;
	bh=2itnckvyNTmKr8bYoTKr9X40ondnXqg7fulb0iPQYNk=;
	h=To:Subject:From:Date:From;
	b=VUyCXqkAArE0WsaIzAyxEtoJVDMX5HdZZizrlNoz08/b6BIAtRR9zXO8+WpySo4mI
	 c7ehNoNY1c1xsrF5nc7ljNbPRLsB89TfR4sSKYVoISd3rbC+Uf72JA7VXdw5qjwibt
	 GaPF6g7o4Wl5TJF/K68anqzxss72sPhUSnga0sswYBNUdeUxEBpAC7wJ4OmeznYjwY
	 6lud9+Y+5NdhD0TI77PKCPmQY8SNtr41UkYjLOtZixvBYa9gYTUth+2XC3JqNxNFo2
	 kox33c6w+8UBLXbe15kCL0jXpJwYuFp8tOWhoa/P6rLDhY1cBJbjTENs9aHeCEgYi7
	 9iPFfV2lWyvTw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADC2DCCFA13
	for <ddprobe@lists.linux.dev>; Fri,  1 May 2026 19:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177766545369.28986.4054788248565475713.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4c2758cc87d0c70e548d1b9f726a5aa474d303b92bd5854472b20c2891b21180
Date: Fri, 01 May 2026 19:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777665453
