Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4BDAD4611E5
	for <ddprobe@lists.linux.dev>; Fri, 14 Aug 2026 11:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786707034; cv=none; b=awdlOgzKGEHDsj8gxvbYFT4ywGJ9KRmDJMMZcFfrEjOigrcuSeR7uPi5F4f2m9hjxFc+LUXdpUPlIi1+C1wElLpP7KIVjWQMja0N827DTGFO9Qc4AQMUOvhf+Gjpicaw5awwujhCmezYwtWK4jhNe9yRjcqaCLA2PYJDdRK4u24=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786707034; c=relaxed/simple;
	bh=pWIlBX3xQ/m2gJwY5AMovapSmiMjkd+qtMUl8YxExAo=;
	h=To:Subject:From:Message-Id:Date; b=dEyacNVb1MSqG2wDXYpDHQ3RHmV1xGfooJCDIWgM7vOgCe+6xDQx+4k3Q2X1NhBQUMz48jqWhiZU6+f7rc37xfllIQ/DMaAcSnzq1IONQrb9w66NdqZbEj/a774ooD/gDTXz+JjjdVGCsDn4Dg11mTdJcj+qcYm0ZyGOo5X8ib4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PtQTCyhB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PtQTCyhB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA47CC2BCB3
	for <ddprobe@lists.linux.dev>; Fri, 14 Aug 2026 11:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786707033;
	bh=pWIlBX3xQ/m2gJwY5AMovapSmiMjkd+qtMUl8YxExAo=;
	h=To:Subject:From:Date:From;
	b=PtQTCyhBELV07UNBln+qo8/7+H76mPafY5upCGhqhddB8joO2oOUFCIklX3KGaLQ5
	 3YRsof+dkOBtSF8Suxc5nbvULUy/k2Os1Yunk2h8DKrw1KU1Bu/Ob4AxRIj/+lgiWa
	 tG76HCfycgRXL8sU+oxbiXr6yyqg+aM/JTjx1SS9NrcysIGJ/e/q4AQI75zPZx76QO
	 74HJEgeREFSUUlkB95KsC2XMbsCgMj08XBHWZExS+KcAVjpW+jmV7XdFuAzMBtRl/A
	 QmnLsspOurrs+1QIbUgwgmUhNKCjBQjtl2GDzBTgiWr391KpnnrcHUacEJpJVKzuus
	 RgVVVUJok4vzQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8899C5CFDB
	for <ddprobe@lists.linux.dev>; Fri, 14 Aug 2026 11:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178670703368.23664.2972061827472971778.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 25fae0c9b7de08c30b284a3cbff96f23e001e01d695cd27e03d9c9f0687cdb91
Date: Fri, 14 Aug 2026 11:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786707033
