Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24A962777F3
	for <ddprobe@lists.linux.dev>; Tue, 26 May 2026 02:42:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779763354; cv=none; b=iv1M4qPf/iv1rOzNI09HQ6FNZPKdzdCQpuir92aSTdf8pmQelBlh/pbaVhQw8p/pRtCO8+cxNl5FhYXUvSJpYbBFxs+6WrypyHPNu9RUO0WPkNWiNuWCh2lm+Vj8hFEil2IMM74xW0TjogSHK5XJ71jhVuIFfYlnOe5JUXMCnmg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779763354; c=relaxed/simple;
	bh=x/qc0EqdncBOATMB1aZJumrunS1uaOBXFrfl7N96MMw=;
	h=To:Subject:From:Message-Id:Date; b=i9e1W4mmg767tzZcB12WsYmWEEzCoXMW6J+WwRsELr40gKbxIQPej+Ji5fv+AqwEa8DNf+P40YLs0w/KieASyLb+p+E1vr+MQTMQpGV4yGoUP4qc9PWUt2/QssmTtrUFmEvP9K8keoFb6/kj4Wyd9+xpbCC2t8juUBt23lN0aEo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bhuZ0+zn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bhuZ0+zn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C40B3C2BCB3
	for <ddprobe@lists.linux.dev>; Tue, 26 May 2026 02:42:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779763353;
	bh=x/qc0EqdncBOATMB1aZJumrunS1uaOBXFrfl7N96MMw=;
	h=To:Subject:From:Date:From;
	b=bhuZ0+znJXx6OmEirmuTXKZ0yKQF4UvD2DNMNpds0HbF/8n1Vxy/h7IPs1dHbmVML
	 RPvtaM7IdUSqMyur0O3oCdHwn28e6p9sQBvIqMJxu1sE68DdViFaI6iOTMpipKr/T6
	 yQF1wkRzTbWS9QO7jI0YUHfLRAiMc0iuTm0j1HAK4ms+yz5jXnbps6whZN0BEM2+Wk
	 525vLprOvCl6syaHq4/xFKxAQUTPToZXnX4kS08cOL9q8p0/cZqE1CDViUcVLb3Ss7
	 DsDd1h3SXOw8G5t8ZfI62fURE9zM4gzngh5Nkx47dRmDolpKuvqMqohwEP9BeQY6Z4
	 SHLQNYkg3GZ2g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9D8ACD5BD0
	for <ddprobe@lists.linux.dev>; Tue, 26 May 2026 02:42:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177976335368.17706.17264775522777704567.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: db6e107cf8307f8f4de7d98540dd370582c89eea148f8473b8029962c979c73e
Date: Tue, 26 May 2026 02:42:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779763353
