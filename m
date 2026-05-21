Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 380452D6E5A
	for <ddprobe@lists.linux.dev>; Thu, 21 May 2026 22:42:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779403354; cv=none; b=ro1z3nLFRMxItn5N3I9O21crwaZ+XsAid89Tcer4h60OgEoW6hgoSHzr0SV0HwmVMTn7r581Mjcu3ZxXsecqpd30J2te4sSjzFYn0xiQ2GW5yjKK9KhNsXP+VliKpcA0zWyucijbhQp1WkLm35q7PDXn6NU7Z1vwMiZtbGvYdkQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779403354; c=relaxed/simple;
	bh=VIFnQQk+4CPSshY3kVwZmClrx93V8LB6HfGbZSirFIM=;
	h=To:Subject:From:Message-Id:Date; b=L8X/YG3DZdqIsUDl27IvYTJfktVCQ7oXurknUlOv7oA2KIKwaLc34dumnK8N1mJRHzzCmBxO00ouwEPiNwq6S8i2qDfFLnBrac+j+l1LG0imotyC2vcH+0CqqG3iXNsV8/yq0EYZHTYppY3TCXU/FmgECBGjT77pPwNoje0ghxc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZBgvhR6j; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZBgvhR6j"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA4D0C2BCB4
	for <ddprobe@lists.linux.dev>; Thu, 21 May 2026 22:42:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779403353;
	bh=VIFnQQk+4CPSshY3kVwZmClrx93V8LB6HfGbZSirFIM=;
	h=To:Subject:From:Date:From;
	b=ZBgvhR6jN+ro2SVqammUId9ENPABRwVoKrvOMqgO1CSsjQaRPvevZo3NLHtoY471Z
	 lJ+tpG0dvuCXwDohFXvQChtvsi/4o7yMr1/C8+Jlf6CZfFStzggH5/87h0AX9vkujz
	 G+XqZPKdfRG7vI6EsT7OZeDzeF8bPygSrcWWsAGpuCu+QulrIX0dp/ILk389+0fGky
	 jaI3sueGkkAtARlIPUHS7vbdJTzEjPmpuZK1sc4MTnnXB8oqtVd7x9mc6HyI55cqXh
	 uIkEZDNLveU0phcykhpsXMSoGpK4vEBGZD3/MLdqxKwtlgCDFdcuIZdEfGCL4XSUB3
	 04jUBFsw7h5AQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD626CD5BAB
	for <ddprobe@lists.linux.dev>; Thu, 21 May 2026 22:42:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177940335370.30593.14846852041526581196.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6bf7cfd56179e38a6ec1b6b0b2a92cac1d1e930ff2ba8276461384a875160c2f
Date: Thu, 21 May 2026 22:42:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779403353
