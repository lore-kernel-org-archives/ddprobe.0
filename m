Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 67210309F09
	for <ddprobe@lists.linux.dev>; Tue, 18 Aug 2026 04:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787028634; cv=none; b=bg/8lZSuYgPbxjG6w9I78ojLGxWSM/tUCLYM8jBTN1Q/FQiTLOCCxXw/DKl9GNh6qOeZLwiTf324HXOrkBIR1kx2vUrRW6Dt5RzrETb2b0oGiPMbOPmlEnUmJwXuUWHMKzDShxNra7H+AC8424Mj5SHglW2nCXxpKMunxSCmRpc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787028634; c=relaxed/simple;
	bh=Z7rI5JCfMXvpyfupbE0+gQcU6LIfVPT5qg9rcruWh/Y=;
	h=To:Subject:From:Message-Id:Date; b=VZWjpe0i+z+PHeBNe22upCb23tpl+IwFua+KQqrY4OOz+K2wM7YE8wuOlnLrAUUKZ+1Hi8d3KnU342IM/LvNfOVJTA05CNfA1oi2yc0OMEfx5uVZqsFRkHdoy01kW3FpfNHMHHCpRzrsPtxLzxdEWeDl7JxzWCBAK9InDvFY16o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=suVl5tIC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="suVl5tIC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9868C19425
	for <ddprobe@lists.linux.dev>; Tue, 18 Aug 2026 04:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787028633;
	bh=Z7rI5JCfMXvpyfupbE0+gQcU6LIfVPT5qg9rcruWh/Y=;
	h=To:Subject:From:Date:From;
	b=suVl5tICnYWhWXQYzgrBsENhG6RbeK0QW3RUaxNmGZMV4nz/4OAKjO2Ozo0ZXUZif
	 K6Sw2sE11130Iwxsjr0cCoeCH8LDq29dVuREbkGXshj/Hk/tTTXclZkE29sxWqY2EX
	 6Ye/ppNhw8yPwoqDpwOdgorQneeYjrDoK2O+fw4hi83tHf2ncIlHTMZ/dyzS5LNK8j
	 suBAGWRcpThrtsvl8j5Z/ry56U7gEEY/rCa/WkBeA+3F4/YdOqbwV5l7LSZaFETzMz
	 RR9FWfVX4hBGcdOV6qvrOEbE9G5xFGXa8QnqI4AkFIMjXamdm6D2FuemMceIVdS3tj
	 khaUNVWXvJnXA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B3976C5DF74
	for <ddprobe@lists.linux.dev>; Tue, 18 Aug 2026 04:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178702863372.2174.3763940083388159948.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 92586688a67fc20967a03122cdd676ebba94aa8c50d72201737ad673f0d74330
Date: Tue, 18 Aug 2026 04:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787028633
