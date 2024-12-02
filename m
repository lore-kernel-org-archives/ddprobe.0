Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3183E1DB922
	for <ddprobe@lists.linux.dev>; Mon,  2 Dec 2024 23:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733183754; cv=none; b=NYqEy/drFL4Fi3njlquRkEAjN3sdItqWiG/uoTKMusM5JZB8/8NSGUCvY+aZwz7UVtC5hhOxHJ2dXE4hhKrXwn14kXiQcyHiwPSvHH9Jmbnddj7SabQu6AMONr1K44kpO8rxo9PI5IWolIgOhDqx7r8kybPJVfW1/dqLyPtPkVo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733183754; c=relaxed/simple;
	bh=MlFN1T4me26AX5zTcgpf+gxuCi4PNJPEGnPVG7WtvpQ=;
	h=To:Subject:From:Message-Id:Date; b=k1mgZ9c3vmfjJUSpWswXNUB4IeUqXgYafYr9aGhoJYsnxuTRRS0GBy3eFpy7LkR3KoU6Uh3nqYwNbk06VyJ4vIZdNPfqIXDw3KOplaErnoBq+T54zeUIMwvnP8ibwW2yUZXup5wQbmq0TwTS6dwWxNpGTPizAODZfaadHkRat3g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Atsa0TxN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Atsa0TxN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A80C2C4CED1
	for <ddprobe@lists.linux.dev>; Mon,  2 Dec 2024 23:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733183753;
	bh=MlFN1T4me26AX5zTcgpf+gxuCi4PNJPEGnPVG7WtvpQ=;
	h=To:Subject:From:Date:From;
	b=Atsa0TxNuEjQi7lerymtMzTdZH9qzEHjib8HDU8SCvI2Wq4tGznMk0C8i3tTjxTn1
	 GwPOs0Z25sFWNbFdfGZrpNh8RHzjmlZpfFrHDMyzJzcXT77xE8a8fcUdtzYmg0kQfw
	 l7rAr0nCcNoUG9i3LC3t/3IaimwDOWWC7FwZdiQl5nk5WGoARGJaAZjkJYI7rovKJZ
	 Re9Omm/3BJv/ONBK44SDmvdQPSIqYdzjqrmCD8tSOJQ/uOLIHWTx7qb8ncnZS/FYoc
	 mxVVcVT2frbf1v1gCJ38CTpSGGdF86kCf+yisgpGDrTYTmMr8XbIXuXeU58pyU28jM
	 hn75YAh4IOI2Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97AF0E69E9F
	for <ddprobe@lists.linux.dev>; Mon,  2 Dec 2024 23:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173318375361.28403.8609763171474699188.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 35bb80751bb366307c1ec24ccf1dc7b5a2b747347b096301258f4fc776131946
Date: Mon, 02 Dec 2024 23:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733183753
