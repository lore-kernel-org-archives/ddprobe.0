Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B5081DED49
	for <ddprobe@lists.linux.dev>; Mon, 29 Sep 2025 23:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759189194; cv=none; b=vCVVC137VV6PcUTdxXYzsdluO0PDqIrHng84MYc3aJE5wA6BW9XJwYJ44gRm2JpKfcJFXri3T5MXt2XXad6neZhxmFiysRiOqFj6WCCoi28ypyF975iEdn2zQ3BdOR0rjqWtwvxEVw3Hl93hpQTIZ0Qcx3923/N1zLXlF3YrQzU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759189194; c=relaxed/simple;
	bh=4fdBao34oQ1IUuPY63d1U+DCkJY1ZDwhX6Lc4EzrrUw=;
	h=To:Subject:From:Message-Id:Date; b=SWj1UJAT0W/8+7/MztxuMBPaiPS2oerClMMRSuffYdoL9ut0NLoQAXUDilR6id2rn+e58IWCwslxVNZ4LtAtWIef+eOi7+OP+gdhaf0vG+NwXIRJA8VFkCgysxuz0H9En8TjftfMSZ3AdMO2E5Kj4QuvaSPd/zKI3lJkt9Sfuj8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qnhNyGEQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qnhNyGEQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BF2E5C4CEF4
	for <ddprobe@lists.linux.dev>; Mon, 29 Sep 2025 23:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759189193;
	bh=4fdBao34oQ1IUuPY63d1U+DCkJY1ZDwhX6Lc4EzrrUw=;
	h=To:Subject:From:Date:From;
	b=qnhNyGEQVOTSDf99j84H+cWFnWxg/eCdP4ME49ptIjvZ16awyHAp+it4vy+wMQ6l8
	 XR52MidRLfaQoJ9kyInd3JY0DL3tnJb7bq0Rk4Stqh/iz3yakeWYmqIgxmUkfyFsj7
	 4W8PjC3GowI6AibHtGF95dzgrw6PAJ1ur7qVgXDlGwZXHw+Yz749/2eeX/Uoj3+Evy
	 iBqGvHXrAjZahlY1nKwolLw3GkT/GgsNSQ61z/2bXEdRQ21fUW/CS6HnxhL3x4yvIf
	 R4gs1M8xEkxd+EmmLS8u68yFup7Tvvt8Zsr5XtfBeMJRnLpvE/uO5uCxDGWuQiPPe0
	 ZhbwacAaOhgKQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A1AF6CAC5B0
	for <ddprobe@lists.linux.dev>; Mon, 29 Sep 2025 23:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175918919362.26421.8837727450406615862.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aadb60fea15ff1203cad4dac7ab158aa99441823ef7327201259a1d9a4beb729
Date: Mon, 29 Sep 2025 23:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759189193
