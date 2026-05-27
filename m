Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C15D36D9FA
	for <ddprobe@lists.linux.dev>; Wed, 27 May 2026 20:12:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779912754; cv=none; b=esG7DGqMpayu9ak4pEtt6Z6KsKPIzvrSy91Hzdd3MOotL7WZDDDSldcRZXIkoXEnnbMhWJ+X+x6AJ2CzzIuoWreULQauWDq8lKjmSRxkIad3KuS6+iFpvsOkTtY08Qh0p9zFg2Yg4Zoe2jUUO8lxALgrfz9txXkp3CvITBPqZqQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779912754; c=relaxed/simple;
	bh=dueqXRgtp7zPac9nJXXQSmrry5SdygYDKV5A7ryIq6Y=;
	h=To:Subject:From:Message-Id:Date; b=JLFxVXHdUCtSaHVhndPQnVdIO70Cjsx96OzJaG97w6LnrtrBaSB2MfgNCO9Pl3ZrHp7avQshgHYAJXc7VqsqzH0Y4h1LcVuMB0lXIgTdkAeK7zd/mOx14xj9YwNH+DjzkZhPznqygjl+TWtcUqbQWDbcK4uNUiWp+Ip9owAbLXY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=c3bI5uRM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="c3bI5uRM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D86BEC19425
	for <ddprobe@lists.linux.dev>; Wed, 27 May 2026 20:12:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779912753;
	bh=dueqXRgtp7zPac9nJXXQSmrry5SdygYDKV5A7ryIq6Y=;
	h=To:Subject:From:Date:From;
	b=c3bI5uRM58sfjxyQXER9ofv5ZZ4t6g/JtabHQWtY+nyWECHSb+iGXe1k9ANzqCjea
	 IOjTJ7QTg4BPW6vgGuhcWQl727KztwGdvd6lOX2gj6ocPF4lhDfyDLIBaM6W0xdv77
	 cxutERnX+a1CWzg8lnCW6iMF4ooQNTa2TnEGvlIAvonD6C6bF2pPKSF4j6RWwoHtN7
	 HbHvvbUo1oMNKoFWlJsKjhFXpSs+7xC7ZVKy0GLt+XDT6tQlaN/s146Clmshb7Fzr1
	 Q51ulyI90fuEa4NZHzyL+SPY5U3QooGiHluc2xac/vtFZH+3G6BKqoytF9q4EWwx4I
	 1rQQ2aIooC9dw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BB72ACD4F54
	for <ddprobe@lists.linux.dev>; Wed, 27 May 2026 20:12:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177991275372.16839.17249118085086542229.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a20b6683f261cf7ba4068e1472ed048d3de154ba146a8fa815011cee68b46b8d
Date: Wed, 27 May 2026 20:12:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779912753
