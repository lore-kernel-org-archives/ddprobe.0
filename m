Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C77013DDDF
	for <ddprobe@lists.linux.dev>; Thu, 27 Jun 2024 10:44:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719485063; cv=none; b=ZGfOYBqMmCSz+xmxxmIFevYFK+kzHCy2Dddl4WaYRxvSoxRoSZuOQl6dbRwP42MS8fzjb2dABN+fPYAct9Z/PMH1cXsE9bsHK51Q2kQGUcy+SNbS6jcAgDp/lVKaSKAbej6OKeMzi/c+6pEC9Bz/8LrzHjhJaKqv+p2k8NmXkVg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719485063; c=relaxed/simple;
	bh=EciCj5+EMj51HLlnfSmlwax4rLe4DMi6AV6AlMreu0M=;
	h=To:Subject:From:Message-Id:Date; b=arokJ2rFT+EQaoAUGuEOjDGO17BZJLJGF5hZ538RPhElURU4mOu5Fr/F9C3mRVj9tKDBIhIBfJ7szd8BTlw+mRhkNqbqid/pvQiOBUCBpUy4C1rSys0J4t22Vvub81xBUt4eoq9P5pqVPGRFNohOLutXuPQd9WqmF0NWfWveY2g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Zs5+4800; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Zs5+4800"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6977C2BBFC
	for <ddprobe@lists.linux.dev>; Thu, 27 Jun 2024 10:44:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719485062;
	bh=EciCj5+EMj51HLlnfSmlwax4rLe4DMi6AV6AlMreu0M=;
	h=To:Subject:From:Date:From;
	b=Zs5+4800c463euXeRp44XzpzY3CALChCB1RWhtDRBHO5BLWsNvdr1gxE7EntnDzuc
	 aFE0Mlb+2L5/fYk+Y63pX6pHTmS77+cMzwvc2IJXDTW3RifZTHW6yT+eCWFcOtP30Y
	 HkRl2bW5r5urAMPqgQA+RUJPB/klFuO6MiTF8npLi7Puc2Mgsf5wapumD+QCx1xSc8
	 7SyHfVhus3B3J11+dN5SnC0oV4IPCFmJRjLEcUAq40MJnDmcLgP7F8aOs4ttQTqMdW
	 rYHxcklczl4+uwWS7Xbd0D5dRBCArhcM8FiL/lRdIUDDOz7D+MOhCq+VZdlp5e9l98
	 zkkpFsQv1SW6w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C35EEC3064D
	for <ddprobe@lists.linux.dev>; Thu, 27 Jun 2024 10:44:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171948506279.11285.10250640617669374917.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 72517e8e392a8e0695a3188065e796adfe33b426eee2413e8986bb1328a6ea73
Date: Thu, 27 Jun 2024 10:44:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719485062
