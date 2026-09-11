Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 13AAE47DD4E
	for <ddprobe@lists.linux.dev>; Fri, 11 Sep 2026 13:00:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789131636; cv=none; b=l/wCgvtGXqGaqpNm9CCIDYxrznWhk+n011YoaOX3JQwTvuWRtruDl+FQVj/0fgRRsiOHO6oC6uy9NyyjCMgQUblh/exmIN5Yhh4xWP7mERVRGlXPjlKlOzNYC8GQ/zcf9f7rHi8aiiaZGw+4FPU4E8hblqzpXxFaTzYEcsbsV7U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789131636; c=relaxed/simple;
	bh=mQ54MdfsPhKd8wkxK6/CH/mrjLKVb9M+4lbzP/gFL5A=;
	h=To:Subject:From:Message-Id:Date; b=KjCpB7arAyKFZMEMirKZtQ4evchxIjswDMEYMRb5nmvqfxNYzCzJQsCpv9Z3wHLH53KRMVfmrJi79Xo/5SeeojzKEg8In27TLV9vcDwDKDts1GP92LxrkUiQfPtDknZkyln+sJX65BeiVNQSTOXOe/uvLFCAORiCZiUtDb0fbhM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lXCs/qNP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lXCs/qNP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6D33C2BCB8
	for <ddprobe@lists.linux.dev>; Fri, 11 Sep 2026 13:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789131633;
	bh=mQ54MdfsPhKd8wkxK6/CH/mrjLKVb9M+4lbzP/gFL5A=;
	h=To:Subject:From:Date:From;
	b=lXCs/qNPBFO75fi6AvRoDeSiJonqvqtCoCtbV00NeCJ5C4OW0KAx6I5iADH8oJhdw
	 7AemkyEaPUg5HvnltfR3uqNKwLWJlLt6r5j6FMZfxzNcMD8UcIEFhtI9oL54/ELS07
	 8uABuf/xAE3uN3m39Ana5Rvc5RJfdyRRCIdzbhgCEbUAwmcza8vQVyothc4Fp1R4ji
	 c+Ukb1vwSI2dkN2hIGiipdyxUBMSm5k8jdUWo44BcePLEOV/VJuWlW7zN0DhxJXZ/F
	 5k8lVwAhl40vqMibY2jUClM8lwFpB43n5M/P+D6kklVVcPwC5lXcoeFl2TatqQa1ry
	 6r3CL2isjDa1A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1D0FC88E50
	for <ddprobe@lists.linux.dev>; Fri, 11 Sep 2026 13:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178913163371.12925.5871160132044090975.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b9acd1c2ae1177cecd6c668b6db1dcbc270d7f9a5536994b015fff31e2cfa669
Date: Fri, 11 Sep 2026 13:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789131633
