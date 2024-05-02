Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 508F859B56
	for <ddprobe@lists.linux.dev>; Thu,  2 May 2024 19:12:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714677143; cv=none; b=Gq7bzQI5lJAim0HpraLqGlW0wbHRMzaiu0NoLqn6FkKbDwi6Bl9t4mF3cW9hw04CEFoHlvKmUj3qQkeXbArNEzEU6EtsfWvZj+Qnqh1IOK3sRRarXxiu2K9BkhIdp2Ah3sGGf1ghR0INwD6IoUFFYELd6+LM9hB3ABzJ32i3ZTA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714677143; c=relaxed/simple;
	bh=QiAw/VN4hrEImhKiBv/Le6tnGwRFgySQGfAa//nkmZ0=;
	h=To:Subject:From:Message-Id:Date; b=u9N/bvdnJh7SRL/SafsMvFB158oSNXjymfrncIFnVNVA2G3dEg7DGH3BrsZLLUah+rK8o4paM8MuGyD+PV+UtDW7aHtxR8JIQEhC14PrlQDY1Gn25OweOtuQD2Rsw8LCOBPlewy+WKmfcNoA7JKWX5gbTesGW+gDUihsWL7OXFg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SxT0A1JW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SxT0A1JW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E0141C116B1
	for <ddprobe@lists.linux.dev>; Thu,  2 May 2024 19:12:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714677142;
	bh=QiAw/VN4hrEImhKiBv/Le6tnGwRFgySQGfAa//nkmZ0=;
	h=To:Subject:From:Date:From;
	b=SxT0A1JWIV2sPqCleOuWY4Cm9wZZIjPYgwV6eOxYneIJ82JvcZNXAM5bj82omkUiF
	 R5oNkv+dAwKuntjk4d9rwjU6FSs540T2qE043jGJDjzf2QwTTx7jAmqGDWAbh14kqc
	 C0/De36VusqlT1ocxw2ypPxTERTEAAzj3TAtpU9/v0JQw1TTVQlGR8Qp6v1ggi3VAg
	 mkGKOq3o3Pi2EKouohslJDJ5AzqwZBYprNIlbM0Oo5ZuTQB9wYXIjPXagXFEJl+Z3P
	 q6VwV3QfIfQ3BAbkjEypWd7+Ce0NZm+XEVb5uaEMOyzQwT+KHZqBRKKGoZrCFGNeql
	 1N0/z46GievBg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C821CC4345F
	for <ddprobe@lists.linux.dev>; Thu,  2 May 2024 19:12:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171467714277.10682.5280048528323116719.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f2a089688bb7f92c7fde26803f320c7996737dece26a3c9a7f07cbf8cf96eded
Date: Thu, 02 May 2024 19:12:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714677142
