Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2105A78F29
	for <ddprobe@lists.linux.dev>; Mon, 23 Feb 2026 05:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771826094; cv=none; b=W/FTDFY3WS2YZKDR8hFkva0M3yNw6Yj5XDMr8OrAjuBLHdjw6pk3nT0EXY4f9htDdQS+MoQlIQsJmjOLqRorOp/eJo1Yty2mjJEekfI5Vc5aqV6/heS4ewU1MzECSrpWZ6EBxwjcOpYWGwzuCmjsj5WZu+n/tkziTn4kmy7ScRE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771826094; c=relaxed/simple;
	bh=TsX5zkqSFkagW1bgnFiKhKzX1ObAD3jvh5avBk8D/TA=;
	h=To:Subject:From:Message-Id:Date; b=OcsqgaIFjgYpnVS+I2k/flYiFjtF6EXO3+YnkAeoYOYouqTCiPeqH+u2y5qk9O11i7k+WDUs9s16551/sV16Amk7bexoXM5BsZU7mbC2GeOrtCaowR9zJaVxc+BqGNb2OX6QsH40JR3t58Mzg9IhB8iFlvBlfovMUmNA2SWdx6c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qaiWemhH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qaiWemhH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA6DBC116C6
	for <ddprobe@lists.linux.dev>; Mon, 23 Feb 2026 05:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771826093;
	bh=TsX5zkqSFkagW1bgnFiKhKzX1ObAD3jvh5avBk8D/TA=;
	h=To:Subject:From:Date:From;
	b=qaiWemhHGvyOBo5mG848k7ZnCG8ieddH5HOkZyoxPXbVMmBZQeCSERvmI8Fo2PaVb
	 kLLzGrlPtPbY89WZt6FhD6v0iFsZCWgTbAE6Rz3Oda6nQHuYhJb0bBIXTKRPp5a4zx
	 HFv0RxifVVO1LpQcBChwqZMOaIiDVUlSdF8/RuBR2RHVanel61m19b8WhoKrDv/jE8
	 MkB+ulRjyv64bpNp/LaPRZgiAmsBhSEqmXZ2FP1C/NG1TDKqGEvPxn84r2dNvww4bn
	 Y3wQfWDaUafjxBxRpBTyanUXHgnaWp8FvE1Njq4s0Jw6+eUXmuMbkpImK0KahdsAV7
	 GAeaur9wa0gsA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9443EE98DEA
	for <ddprobe@lists.linux.dev>; Mon, 23 Feb 2026 05:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177182609358.2054.9422917628021741665.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cf4deff13db44a22ee295d1f4141cc4c16ce2f7b5b590fbba8b056eacfdc8fea
Date: Mon, 23 Feb 2026 05:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771826093
