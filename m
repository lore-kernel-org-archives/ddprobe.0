Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F06983BB20
	for <ddprobe@lists.linux.dev>; Sun, 10 Mar 2024 21:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710107897; cv=none; b=EhHliA2InZrmxnOnt6okRmA4jeaRhLRkLVjlNB75iRAZ0ImOt18Z6WnOQpU2NsAKoo6LUT1LpV1J+cn2eOQXGiy2tbfubL0838ZYOztf1mt27eHIhGjSr0pZBOwIWqmnfsEEqyLTNedqpuXgP9SaCcFSh5BgZCflt/rcd0U3ABA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710107897; c=relaxed/simple;
	bh=Vgeor5GjA6dDgHJMXO4a+l/Ss7rQxDkNCPyj88EMKXg=;
	h=To:Subject:From:Message-Id:Date; b=FkRxgSR2pYZ4bFjvHVbodOe3a6m493gYuomCd/Mk2Z6gEXgi2eq9QZ7+Hv/ZGj7/dxC33q+BJPkVq5mXYyMs8JQr5ILxAlUoHwhRnYEWTUO7j+t1tPDypE6JYLq0R0awrbBxsF8YOWruDIvK6NC5xonpXK8g8ZXb9OpXqMFtUwE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Eu8+RB7Y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Eu8+RB7Y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7889AC433F1
	for <ddprobe@lists.linux.dev>; Sun, 10 Mar 2024 21:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1710107896;
	bh=Vgeor5GjA6dDgHJMXO4a+l/Ss7rQxDkNCPyj88EMKXg=;
	h=To:Subject:From:Date:From;
	b=Eu8+RB7Y0kFxYhEytJujDlzsxnn7Qi7DTiOq09NO/tOUUQ1qzQIrqV6ZbAYYz95+R
	 OM49KEAhrlo9M/YLGHBeMo5QHKBnlAcNZuWLG1tsuQguLWquwIH5tQpVLN+bAJxB1N
	 LtbIpoPaCV+GMrUF5nfwUyPPQqmb3mTC8N0ZC4v9C3mSnKrewQveGRoKXOjEwGo1F+
	 t0vAR1FrCVLOATPxzhXG/QHx/a04LfCbVn+v2Yq5mYFicZcOUyq0aYTdrYnQEfhDzn
	 a+8Jxava7ABGX4h8xbE3OFevuUNwJGxCux4cDpUB8dZJD+v2H0DmfPK2+mQP/vLVaG
	 ta7dM1CYI0aJQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5D159C54E49
	for <ddprobe@lists.linux.dev>; Sun, 10 Mar 2024 21:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171010789637.28113.3079902068204869692.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9554716918d6ca952de2d4ba90ecef38dc39db28e0eceb20f56ec5c8c3fd067a
Date: Sun, 10 Mar 2024 21:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1710107896
