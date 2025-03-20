Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BAA9EEBA
	for <ddprobe@lists.linux.dev>; Thu, 20 Mar 2025 00:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742429994; cv=none; b=aFF3qaLQMf8/QfeTgKOoxTF8mGlrpnFxUB73sctqBZBKp2Fke6CSZeLXSRmsSbBQo8pTrnrHBV9lwYcs6ILfvN8+bL4Hqp3laIKVRqdKFrCKPuMuTVNjWPBIjL7gq/VSSuIelxxqF14taENtzwOU0f7xkRJ5g+jxDdjsotNwDxc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742429994; c=relaxed/simple;
	bh=fZltAKXgcuuU/1TcOo/IQu8edt3Wt7GU5JYjlEsI/OA=;
	h=To:Subject:From:Message-Id:Date; b=VlkKSphrOasaNXWyuumIB5I0bOLnowTL0BN/bmAL4MeMq/oXAQYsTxVSmrKp/0EsevXHDb62ynB5W0WgRA6aoIcQsCbzOaMl4LQA5gaquko4rkHzfSfBI7C4UFtoCyPO+3pybV5B5Ipsf6ctqD5lf88QGz/l+1+ZyYgMnd6axWc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ocQL4J1T; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ocQL4J1T"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA936C4CEE8
	for <ddprobe@lists.linux.dev>; Thu, 20 Mar 2025 00:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742429993;
	bh=fZltAKXgcuuU/1TcOo/IQu8edt3Wt7GU5JYjlEsI/OA=;
	h=To:Subject:From:Date:From;
	b=ocQL4J1TAjm9nihZq1Nl4bc46Cin9yK1QjBrX3Oe+6VVLH5CN4LKX+WTcAetor3he
	 juoXx2XlAlnPZIFRm6LAatNnb7W9s/x2AYQESV1EqBdeipB8auixCQlcxewzdtLqFJ
	 Lfmk4YTTiKM+02tWnBfLu9zyve/7Qp22UbnnauTWdxT/ah5yLInxkjDaD9a+Y058Au
	 11wLZ61TyNj+K+R+5zLghJeYwEVH1ocOPxdcZ0CQIT57+maPpNtgNFVWer8Tq5xW/m
	 8nObGtyxT7AGazTqfiwUPgWfxjZaMBaTY38G8vLZRRjUb1UpJuOtg9e3huATKzTAnv
	 RUVcVaVSnU2vQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98269C35FFA
	for <ddprobe@lists.linux.dev>; Thu, 20 Mar 2025 00:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174242999361.6033.7369454096844234127.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 57fe0da28e07e2f6781c4f74b5122fd225f3c617b76cf3698dc0136c3c548db8
Date: Thu, 20 Mar 2025 00:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742429993
