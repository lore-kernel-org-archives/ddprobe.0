Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19CD43D6CB4
	for <ddprobe@lists.linux.dev>; Tue, 21 Apr 2026 14:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776780454; cv=none; b=lpH+31XCbSwnSdeIALsGYTnkW2hS9HVnSwRoFT71ZkaOrjHjRuS0JYD0o0QhKmv8bxwyOPn1VjuhG14yRL4yvA93N+yxQ3SbqH1PXmoNbee/HoCjmqmRXuANbVDNeWoIUkNO/23O5NH4keGjk875g11wb8PWEjzcJg6unuMQhXg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776780454; c=relaxed/simple;
	bh=0TwRyNMNcR9TiYs0Ps1xBNpIu+gIYYgkbex//3sM5U4=;
	h=To:Subject:From:Message-Id:Date; b=UpCe8vEoKzxEf94gUzggiz/rzCFbzHWxonHHJgrzQxwCa2G/t+KkRdVmpIJEf+bwlJ7TJrRFDEvQg94PrWJ+5qkhMM8jiSFAZ6lrgwXZx19fGGSXyDWN+SnTbTUYs6R5ouiX6wF2IcNjGEAzJiwCVYHMtoXBf8izsawaYe7mTSo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PFateL8g; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PFateL8g"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B86BDC2BCB0
	for <ddprobe@lists.linux.dev>; Tue, 21 Apr 2026 14:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776780453;
	bh=0TwRyNMNcR9TiYs0Ps1xBNpIu+gIYYgkbex//3sM5U4=;
	h=To:Subject:From:Date:From;
	b=PFateL8gT03k80sRSNbREGyk/lAoVUatz/e4ru0uij8LLTrDO0sa/CZ0JHVcqak2H
	 2oC0/cG4Dwj4vIN6yiaJajd2ZivLYzKl3QBJc9bxPk7HnoAldoL0XcqehVRolW293d
	 w+0AWofzjHwKLFx0seEsvbZ4BToSB9n1AbrLjWTpqcMrk8tBFfjRQ6tlh4qctgrMca
	 3n+eoYhsmk8YYxvrohiSkh25SUxKOCwhm+roR5ewh/4LGyfRvm+ib/cOs9w3O+DzaT
	 gEyb9iwhRefKJIAlVJvQYgWI7OfCl5fI5TvnzuOay+PZ6Yu8KGG4Gxaiaz1S72+eG8
	 pzOekfzshcHJw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9674F8FA7B
	for <ddprobe@lists.linux.dev>; Tue, 21 Apr 2026 14:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177678045368.12293.10137548209826724379.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e57f1efab6358de717622a506113ac66a9a2966c173c7c40e4763c3792a68562
Date: Tue, 21 Apr 2026 14:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776780453
