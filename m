Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A8B33A1E72
	for <ddprobe@lists.linux.dev>; Wed, 20 May 2026 08:10:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779264634; cv=none; b=SzBYQL8Dux8G++mlayWu0u8rqKjlkeIhMVqnoTQD2Dr0ZgbuQhgnz9tqDxLoV53InqbvTW8hkBOpcBF6N22qc0QI+Mg6t7kuzMqY6rIYWst6KHqx71LRhL+kjzL5vASAYFfJdvEgg977xO3Jd78PHz7F/JmiFWKAt1DgNa16cJs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779264634; c=relaxed/simple;
	bh=PniLxwGsnbyJBuR5U+AD28WYwpeVcK+6+oS5AmyQUxA=;
	h=To:Subject:From:Message-Id:Date; b=GbiXIOtsVzaCRKsy4pR6cOPLtA3CaDCDdgGxSVpm1ik8KfMNeCcT34WYNk0VTyWOhJI9mHrPHkFD0BY0bF0L5BirNbU8tks8da+jiCzVVLLjfMNGx22l8F7z2lvFhMp7XY3NK9bXkVm4fIM5zG3WfQNRLUf73+AiVHcnLzr9asc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EMgaO2Md; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EMgaO2Md"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C59F6C2BCB0
	for <ddprobe@lists.linux.dev>; Wed, 20 May 2026 08:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779264633;
	bh=PniLxwGsnbyJBuR5U+AD28WYwpeVcK+6+oS5AmyQUxA=;
	h=To:Subject:From:Date:From;
	b=EMgaO2MdhNBhkBMrGmf0rkqokfczfM+idDD8ZDrDVS2a7PdusXW3IDgg5amZMQBkN
	 S/hTS1is3hopUl9DS5qnR62c60hs8tBmReUfDrrjVNZ1Jm0vjzAfT6ik+trHaj6mMc
	 nM9O1oOSIgvXpcXuiTsOFkm77KY7Xc53we70QF28APGl3nZOAbwsbiy3V1k3pxCfTK
	 SpooY271Ps7irnG+zyYfgJTvkcCnPD9iH50t7rHMmr5sQAkctvBp6jho0JrBy8aYXl
	 IbJqZA3kBFrRUVTiqDRyP7p+VKf9JRgn6Hpb+Lnc49G2sesjue5NqEqtgfp3Ju1WwE
	 gm6txFD84hovg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE2D3CD4F3C
	for <ddprobe@lists.linux.dev>; Wed, 20 May 2026 08:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177926463370.16845.11426339428358490386.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 733060e191df0a8115862a5829d1cf500847881f7e9a72b4fac042586191d6fc
Date: Wed, 20 May 2026 08:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779264633
