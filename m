Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 51E5F288BD
	for <ddprobe@lists.linux.dev>; Mon, 17 Jun 2024 11:18:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718623103; cv=none; b=gypQV/ppCKc0TVufo6iEBDosKRhyh4aSoTUhoLY6sXOMeb4YrONd4tP9LNNu62hyBEv79AtiGMljRNCmlvGOeGKdi25/2/ZMs/KR5WVSAjAOQ/VZwitq/gh78iW9NBkwLpe4nUp+zLjdi7bSE2zFuKnTQzljDvSn29KngfiOOF8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718623103; c=relaxed/simple;
	bh=PXXUwAMx/jJx1RiEWU2d25n/r/dFk6jkWRiLq/XtO9c=;
	h=To:Subject:From:Message-Id:Date; b=tsYFFqdcp+YTu/beo9JdTi9fzeUMzqIW4eTCCZWUubNG4J4olDXUyYefokB1A68hc3JCOJ3GuK+W9CHVPqJ5nWRdGkJM29choQUsR7SWRgKmjA3PIjyC52skqC2RfDqdppEcHmLgxRmu3KKiX3O77srOlkEDT+qXK57Ni9tPEgM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WTNrYn1F; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WTNrYn1F"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E41AFC2BD10
	for <ddprobe@lists.linux.dev>; Mon, 17 Jun 2024 11:18:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718623102;
	bh=PXXUwAMx/jJx1RiEWU2d25n/r/dFk6jkWRiLq/XtO9c=;
	h=To:Subject:From:Date:From;
	b=WTNrYn1FC7VMAtNXpe3MJzfWHkDPr4NYBvPxO9hQy/zJYncPPZZlucsCNjT6SaFYd
	 Oc1phf8zeH+qDKqV9WL9wyVWKxgqBKxJb09tXpschdFl5Jg3dRoYhnDYHeqt5ekgWZ
	 u5VWOlNbTZBtDe4ukgRu2u7cRqHzf6uT8q+AAEDA47ynP5tI79cRxtScN5xVH46G7c
	 OBImDcqX5U95mbMO/+ZOwEVNazTQnfGt7MR7iNKmKlAOS1f0r9Ud5iOH9umVZ2nMwT
	 WEwOp3PZgNoT6YCU6cacLgfExFBOBS896xGDemEP/e5fkAapfbnz3zo7WO6oEyzdsX
	 d1qazOnvurobQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CAE0EC27C79
	for <ddprobe@lists.linux.dev>; Mon, 17 Jun 2024 11:18:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171862310281.8199.3767817595068190405.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 993785b07ecd41059d2e9449468270c35842d04be38c5f1286c7585fc361b204
Date: Mon, 17 Jun 2024 11:18:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718623102
