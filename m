Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4434343B6E3
	for <ddprobe@lists.linux.dev>; Wed, 15 Jul 2026 11:28:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784114914; cv=none; b=MPn7jKhFEVeq2ppAsSH8ip2bi/di5h5TIhVi9SJP/+tUhPyZaGHr1YAWy2AKO8jK1G+uyqm4xJhyQ/BjussAPKuJBb6LA9t4gHHjTYgFDGqTJKhhW7B0XmKqd58wGg/nlzzqaTYHj88UhV6dY4DDdUSa6F4rhoAcn9Q/SjtGaXc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784114914; c=relaxed/simple;
	bh=8cgKnjY8DiRWUB/um+Y6x/orybg46r5//ys76klQ22Y=;
	h=To:Subject:From:Message-Id:Date; b=SWdXiQgT7Yoiy6jEZB/onZSZrLMFtt4uiNjOGA7oyLZBqqAKSsYq1+JLgWn/wNQaBZS3HPqiwqGAfa0wyoJnPS+TXbvEioXkX2V22OgjG2P5orTMfsW0Etr9YzKQmQAZWNhASpABU/WNNX1sXSteg5tlzW3PKQO6Hp8hgZZb/Jk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=m57Mr5FS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="m57Mr5FS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DB5B2C2BCB9
	for <ddprobe@lists.linux.dev>; Wed, 15 Jul 2026 11:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784114913;
	bh=8cgKnjY8DiRWUB/um+Y6x/orybg46r5//ys76klQ22Y=;
	h=To:Subject:From:Date:From;
	b=m57Mr5FS/LHPieui2RjIrFlCej/tlTQTVpG3hfMy9xrS9FSqiAi7fluAGtVYOds6n
	 6SW/Z+zVC+qKWPn91dc/6WZEQCbTBDzSofEREOBNTdlTdiMF4aLmrByCoT70v3+3S4
	 ThqWmyQsw7bN/yJ08y/BOFZuyE1Znz9yoJWywi0nIPVFf+xX2Ebjg8X1Ppf/jgGr9j
	 GXHCnsYUS7Ph1U5MOyBAKm998FNLNpq5sguM7D/Tn+a6bjMvUFRsfZdB3BkCjXmPdV
	 a/to76vPEu88dz54fIXOOt1TXLWBIL4qsBmVEOlSH019BEt11ywAmKwtRQtuejyYNi
	 h99GnLothj0RQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD6C8C44501
	for <ddprobe@lists.linux.dev>; Wed, 15 Jul 2026 11:28:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178411491368.328.11440026257900697247.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 87dc3e98eed102cc7ea724c6f3220a52ee1fa6de283a17eeb4b08ec623812850
Date: Wed, 15 Jul 2026 11:28:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784114913
