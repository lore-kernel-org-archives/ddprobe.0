Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 272FD3164B8
	for <ddprobe@lists.linux.dev>; Mon, 29 Dec 2025 15:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767023034; cv=none; b=cXJQrah8yP9OjgH7vokq3lGuCn0+32Ynai6L9CDZb5dxBUGi2sD5rqhy/195ROQo6V1RPzcqpkkL/ar1KkBNJ3AHPQLw2GJ9EVEacpTZWz/w0986OSptzWlmG/Nmg630jkKtwsPWMC3jwwFh0w4MD+RdytudlAIID5gGpLJqIaY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767023034; c=relaxed/simple;
	bh=wO9UMl7yOgfZGl7IG6QDhABILZCNyrjxtnBJ+zEhaN8=;
	h=To:Subject:From:Message-Id:Date; b=gSanC1q5Qjk6b1uW8gfjQKRdyFtaGlzmKSaNZSglwsCTMkb31GmcqSaKQ51dyMic8tvWNQ4cfWv2F+m4Q84w/kJ3suyHe9vzELdo4BE1eT6IWEIKFEzNU5e+QJOzJUK9C8RaEcX5/vlBy+cdq/vDc5dVWcQRYQrd1yhbJUhX8rE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=K8dgQFqI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="K8dgQFqI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA008C4CEF7
	for <ddprobe@lists.linux.dev>; Mon, 29 Dec 2025 15:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767023033;
	bh=wO9UMl7yOgfZGl7IG6QDhABILZCNyrjxtnBJ+zEhaN8=;
	h=To:Subject:From:Date:From;
	b=K8dgQFqIylTe00vauvhNKqLESmwrdO4OgIEQwQYraH81JbzSJunjtJ91cqUVuRC8I
	 ru8n3xNczH6NjlyKlxS4LnTvbBCrDq5l26T5WxNWjJCamVOspHn7LuyC3e8dEwAPGj
	 982JGOAKUIHJg46PXkAqy+EleTK0pBJgNZZaPgYzwjwNlVx23ReVGkC+YFARpB9jYW
	 WCilrA1WsgqxnTeOdJE+fjK05T4tER+EJwINTTI39qCIzUuKuwLHXHMk82rHC7wFOe
	 UOiCfYB2S9ZJgv0+Ms7Pg6BTomNdRREBgnJ70QRhi1kGfeWlzmcUIbuLZfSNTP4fnD
	 8P6iqKCatZzfw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D120E9273A
	for <ddprobe@lists.linux.dev>; Mon, 29 Dec 2025 15:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176702303361.8011.4509456117862645217.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ecba5270f7f70ba8316b97c86d810652d61d10a519a9d9eaede3339329325616
Date: Mon, 29 Dec 2025 15:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767023033
