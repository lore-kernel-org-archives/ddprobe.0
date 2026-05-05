Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B76A2DF6E9
	for <ddprobe@lists.linux.dev>; Tue,  5 May 2026 12:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777985254; cv=none; b=n+XlVvC3tjj+QcNHJfMWtRdBfoG6ZU8PRPh62oGNiXS6DZBcjE4jzHJ3+jA/5RolTzrVmCCYewaMK+Zgr98iKh3H+SCmYfmEuiyGYIkeCfyRICMb727k2+u0hdGWTVgNbdk0TfX2A2dOqvyKeml0Uk0frfIACMv/kRFnpYxeiTs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777985254; c=relaxed/simple;
	bh=cTS4VY0wPKW7We7kqi1js+XBhjkDUQ7S5ljXHdArsRY=;
	h=To:Subject:From:Message-Id:Date; b=juh5xQTrQ8p8VwY8MirFDBWfonyALeeTbMdoPoduaROzZ/QoMX9JcVUit1YvpOr8zmcF+QGvLrlRHk0MeBuab/S7f8oc0T8PuPEbEXnFHLVITNgQC07tL/9NXbQzjLFJX+KVirbrIaER59J9zgZZ0VWwIJfnIPgbjOXakZBmRFg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SqgNBgzi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SqgNBgzi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8185C2BCB4
	for <ddprobe@lists.linux.dev>; Tue,  5 May 2026 12:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777985253;
	bh=cTS4VY0wPKW7We7kqi1js+XBhjkDUQ7S5ljXHdArsRY=;
	h=To:Subject:From:Date:From;
	b=SqgNBgziIJN8jUgb6EU0D26BkseOkNZ5nwB5Dq1qLCfRxta+1490wu5pQ7Ze6k+DT
	 OFi/kubU368MBEagHp11OddKgP6xtGEw24eChyAy37EKCGXzzdG443YOrFS57ypeRP
	 YL9IBgy08QRDP8zW5kPdtaVjOzA6GRGH46hWAm6b0xDUbktjT4raFIUjH2QTTQa4KA
	 XPjlOePP4GyH7Y+zIfVLSupkpQPje9ptu5XIDe07DR9SEKdNf/fjYVSfG3vcU2umas
	 //TwBQx6PIdAUzzGwbCOiQH8DSr3ndA9qA1ldcnUijTgfI2r2kpuecH/X4lZRBUlTi
	 rq8sFYh4vhe7g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A961BCD3427
	for <ddprobe@lists.linux.dev>; Tue,  5 May 2026 12:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177798525368.19128.17183616324671772113.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7e728beae75dcf96f7e4deec8eba9000057b5dde8ad0ac1699738223427148cc
Date: Tue, 05 May 2026 12:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777985253
