Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CD7B356A11
	for <ddprobe@lists.linux.dev>; Mon, 12 Jan 2026 11:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768218234; cv=none; b=h7ZqtwrzToS9X9ubhw2dELt1a+aKSvHE1AAC8v2LYd46LRHYw1jrZOWWAGDexJQlHY2fbXLpmQ94QMd6Ki45SoUdDk6/KA8NF2v3OMMiQyFD8WdRWZ7Z1tkmYQ6YK2EpbUzN4yaT+QPKWUcYTQ7/IfoKj2klc4/WmEmjp94Zrp4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768218234; c=relaxed/simple;
	bh=EW1Q344ED2jiqKQMuTzsGCE2iQM4Rdj0ppLFYKM9Kwk=;
	h=To:Subject:From:Message-Id:Date; b=iB4HY1/0xSyi/3ObMQwFezZGbKzg4zTWNBZGuraHXHsG5o8XmYz7GRnODcezrU9Gdlfk7XYjwOkLUn62cugSafTHLN7q+NnoLCkMftH3KUSqZogVNkWeYYN9eyRcrWuMnXppP1LPWm3dg3YILJGBG8mES/tdmZLaPDjwAud6VAw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=T5WELv9h; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="T5WELv9h"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EEFCC19421
	for <ddprobe@lists.linux.dev>; Mon, 12 Jan 2026 11:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768218233;
	bh=EW1Q344ED2jiqKQMuTzsGCE2iQM4Rdj0ppLFYKM9Kwk=;
	h=To:Subject:From:Date:From;
	b=T5WELv9hLnkIFqE1BS3BFdSS7+5x/tpWIkT9Ptj7mL4PIYjVV8IAZj8tmQXf1WHI0
	 //KWoa34/T9CKXA5+lHCikay3jCjq5OZJDkjjcRUeasbChgUUWbT+yQYzXJa3LjMsH
	 WyMqpsfGL+ETH0HP+MoxL7HBXAulTcD7yvL8mmCywV511S4eDQdXXckHGRwlaQrNaP
	 zKHxJ3Y+WWhgs0mnxa3Xil1Ecyq+Gd+678UE/wTT9FId1zHwyd6lUFHlwpyfv+HZSK
	 8w2sxJ4dqW5XUPujADnl5MCiDXJO9Av7a2Mi3OXrF1HgUeN1VfYrtFZFSzaZ9GNBvL
	 SkVgIVP1Wg84w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F1ADC9EC7B
	for <ddprobe@lists.linux.dev>; Mon, 12 Jan 2026 11:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176821823357.16469.5303700415625301596.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 80d89bc9247e9f1a9d527556b707ee751a7a04751370e0f214fee3617a1deddc
Date: Mon, 12 Jan 2026 11:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768218233
