Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3440721578D
	for <ddprobe@lists.linux.dev>; Mon, 29 Dec 2025 03:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766979834; cv=none; b=i7ue1Io81YBcP3N+wJrw8lvs8eW+cWXqXEBc0jTo2SVWQ5p5tCK14BtSgtMh86i6DqF4n7IJbQEMrdAkFGjcXQV3BDpn35akqShw8H42qJMkT/IxlW0UNsyQCm/wEnSv5CCir/lqgWTUpN8CMa9zhBv5IQmYHmRn+1DU6NUnCZU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766979834; c=relaxed/simple;
	bh=MGP9FYa9/qTYCmE4P7Xs98B2wMZa0HW455HzdF/7jtc=;
	h=To:Subject:From:Message-Id:Date; b=QXNJZV1E/K8yTdWs2wg0UtZ7WOafD/KnmC+yILHcWoSTQ1JGPbNfrtVaGDzXkEWkHIsu3oqjBfPMSe6GXc7B94nsibzgLxgqD/TlttliqTTkya0oQrUW5NRnZWVVwpi/yv1hRXjTlIWrML8MpGZ50K4sLXlKdXeJqyF3VLjZK6g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AcACid59; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AcACid59"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD599C4CEF7
	for <ddprobe@lists.linux.dev>; Mon, 29 Dec 2025 03:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766979833;
	bh=MGP9FYa9/qTYCmE4P7Xs98B2wMZa0HW455HzdF/7jtc=;
	h=To:Subject:From:Date:From;
	b=AcACid59mULtZ54JWTvFGXlagJGyoac1M4ROE1kKOjTcvZgbRGecnKoESefOWdIx8
	 /qKmHiO3gC+cmI3IT97bNDVtm3Ajhbpl+6lEPXDANZ/3GFrj/h4tddR7lK20MXICFn
	 imV7KAvNFDpr5yQhUquxbw5FInsFJp6xe33PbUNvihokQpKxcB8D+7pmJ7wzhJqJa6
	 VgxrUGLLzkZ5fAZHX6qck+LjRRm451V+zHyD2CLQfiP7H9GN1wIjGS0ujTJni1Y1JB
	 qXyp/sEjCzYztthkUjsIHqdWBtOPqqUevTlJTk3hb8SJ1oIW+bFMaQyfojtldoVyYq
	 6flNa/mmHI+uQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9641AE8FDB1
	for <ddprobe@lists.linux.dev>; Mon, 29 Dec 2025 03:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176697983359.31650.15663639305075556576.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e393b1fce337608aa8602546350ac08c3fad557db39993079937277da37504be
Date: Mon, 29 Dec 2025 03:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766979833
