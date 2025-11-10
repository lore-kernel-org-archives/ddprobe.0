Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41A8034D38B
	for <ddprobe@lists.linux.dev>; Mon, 10 Nov 2025 01:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762739394; cv=none; b=DcX5uphfWK3Vo2OD70p4DziM1StIvbkT31DD0J8teixSWHURJBVitzMSh0WZm9lfS4WV2z7D/L4+zZ9UJTJQpbgAftZ3EXNV6Tjyo3BQXhNpMW2DxouLBDu9PwXd39cY5z5o4qTgevzXTe6IFRf1zk+sO2nsT+fdboh5j8fxs2U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762739394; c=relaxed/simple;
	bh=S0qZVbxJsS60ZCetwdX1r/Ya1pt560CnB/HG8wKSTD4=;
	h=To:Subject:From:Message-Id:Date; b=Sn5OKSPV8oo03AWc12u08M14m3tvQFh5PLWYXkF77mG29FUPkz6XjuirrjJmz2V/e+cioQ1k8V4WDWVSVqgUB2dy6nlOQZz9Zif91+nyTtV5zphLNRCp7GwCSszucemrqeeijo8VoJ2lH3VdwdtyhD+J/oYIZBJ0oxdXmNynfnc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lsdE9lqN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lsdE9lqN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A83ABC19422
	for <ddprobe@lists.linux.dev>; Mon, 10 Nov 2025 01:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762739393;
	bh=S0qZVbxJsS60ZCetwdX1r/Ya1pt560CnB/HG8wKSTD4=;
	h=To:Subject:From:Date:From;
	b=lsdE9lqNiL6c1hPm7YcCRWYV5CTCBqmHBuJyAqd3Ynsb8nIfcyV83j3fh3Q8RLbAg
	 XfwUDxzCZVGgGoigKzeoiY/iPRtpp2+GGxtfsJ5XxqqsMw888BRcpA2pLMqxONY2wX
	 dHxWMSkvKuZea8v0WfzOBEs6r5AMA8aADdDNxh7EO/cXkSs/bxG8D1qxgiDiZZTyjv
	 vSHEHXKi+6mZ9PUQEkSF67kqxP4TVrS70sihBwaXFrtnGM3cpjgSmI3GUPgkSGywlN
	 F+aw5ucBF/32i9hCgdgTP2I5aBwzCEezJzO2RTOs75XN64VqcQ5y4IHPGK8PRQgFMB
	 FTssyVEgmyDVw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93D84CCF9F8
	for <ddprobe@lists.linux.dev>; Mon, 10 Nov 2025 01:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176273939359.30965.6304115367487372199.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4b48b653929226bbac685c8c4606458991cbe3e7fee8153d1bfc71af7a4f0eee
Date: Mon, 10 Nov 2025 01:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762739393
