Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F1C59F9DA
	for <ddprobe@lists.linux.dev>; Mon, 29 Jan 2024 02:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706495897; cv=none; b=nuy16mPQWRPL9oSIR/qxNwZLZDGQswfvok9Ij9gaw19dj1cdBcex/AobOealEf4yW4pAinhNIK4IEdTDC2bTirn4T2rKOxx1QftIJtmhYTDBaOw7ss9ea1KuupMknJZ+iEOhiYualx5Ng7wb8iWBy0cyFZfkBTzZcVhvLYGluvk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706495897; c=relaxed/simple;
	bh=DKTwJMhD1Svm/Ffihb+gtoLoZwLBuNFiU55kbk39vdM=;
	h=To:Subject:From:Message-Id:Date; b=JHF1yYjHJl+Ts8HaMDzVFV73Us2lovVuKZZbBQkNFjpWlnQfNFEVGSk5n7yjJ/bpyUzWcWTUyDCei5TrmD5ZosmkfBD49CSnJYOf93uKrCBpfgHt/Sy1b1VCxEum5YJq0TFMNqBfQrGPichk5jt0phj7AsBGU7LAnO0A5pOJW0k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=s0uoeOUI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="s0uoeOUI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7E03CC433F1
	for <ddprobe@lists.linux.dev>; Mon, 29 Jan 2024 02:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1706495896;
	bh=DKTwJMhD1Svm/Ffihb+gtoLoZwLBuNFiU55kbk39vdM=;
	h=To:Subject:From:Date:From;
	b=s0uoeOUIXorZGA8P8VraFUGIE1M46B2wF7UhnKTB5M31c1OJgT0WX+2EtI8MIlN2h
	 gX5FjaSa3jYKABGhdsRDQN0QnfiYYwlO5fEQEIpLCBwGAOdjxbagGSxUnLtt8blbiC
	 8s63aM1dSR6N75UuYz5KGuu7kM/QSuPvao0LvKk5odoRXijWKQLPXQoDKE/5zA/LzB
	 oN2orBOeoCZDbt4aqdtdNW0E/jWxAZu8IgrEK50xzvCX+15HHwbbO0N8VrI05EXZwX
	 EBMoyYatR0NgShbstP6fL/HudjpK9erZ1Et3G/KNDmLdDmQo7oE4TG0ZSGuVS6DkaJ
	 vtoXjWuRsueWA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 604E7C47258
	for <ddprobe@lists.linux.dev>; Mon, 29 Jan 2024 02:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170649589636.11305.770601309435285095.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b889b8f1ae60caffdc04e8c5d71ca2f7c39deb6aabcbb8c55ca24d424f8fafe7
Date: Mon, 29 Jan 2024 02:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1706495896
