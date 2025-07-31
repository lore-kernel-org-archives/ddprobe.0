Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0DEF2189F5C
	for <ddprobe@lists.linux.dev>; Thu, 31 Jul 2025 18:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753987194; cv=none; b=X8VJfu536XdTvmCgdutFFu7SFciPyi8DfBaRkj7JzqXxDlpsS95Tp6u/OLSiwUtsafDehN+8O5dV4W1DCHGzm+bXe8mtWmfOa+OaoV3iq3DJj1oqUHdT3h9ODK4wcFdqCCrUx+7aZkAtGzYF8RNpPCv41098WCSvwCHfMxNZD7Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753987194; c=relaxed/simple;
	bh=yh2H/TeXx73yVUuCehqV3Y6GW1IGDRpnXOG6uAuQ/Bo=;
	h=To:Subject:From:Message-Id:Date; b=XqgKWbk4Ke79vyaNSatQJT09pXgkG9HhqEarB2ZogdHV5xnwDX4ON1J2ckpIOTK+3q3KgyBX5tDZ72Mq5Z6ddUv29R/vHSOSPirSxVgsKUFvkLYBQUBBkH/i3lAF8HQcXUFHqAa4m9aARgj0Soh+uOilzhZ7r23biOqCT45uo4o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vRN645eC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vRN645eC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3105C4CEF6
	for <ddprobe@lists.linux.dev>; Thu, 31 Jul 2025 18:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753987193;
	bh=yh2H/TeXx73yVUuCehqV3Y6GW1IGDRpnXOG6uAuQ/Bo=;
	h=To:Subject:From:Date:From;
	b=vRN645eCF4phaXlC7n6/UClRRMZCjTodLjEm1pzxu9x7OUAwhKGixQCcrYUWcm3L1
	 MPod/KIlGtjfeJMAJsNF80reFnQXWTUz4hsU1IC5pW+CV1i7tGgEEGLAN8JiUwaOPG
	 IZmoqH7pVAaGh+LKJ/AxaAyFl4bFZIBkquoVv0dUwKP5YygX6fAJXfJfhsf26ubOrC
	 A4r4cdPBP/e2TNExbiDbxoHUlpagJVc2gTLDdMBGIv7UOM5jpKE9FJa26yVVXEDAfi
	 kv/bzEgLYiBAMJV2e8EcPtN7cUSRkIyWJCcJpO6hZYWZ2EIlwcqhH75Lr8KmE9egcn
	 0QxX+FNF1N+lw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 935EAC87FCA
	for <ddprobe@lists.linux.dev>; Thu, 31 Jul 2025 18:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175398719359.29543.14422552630883955618.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 03b711d888cbb5c4adf7294071a38430e52ad07bba555cc020adaf098484da7a
Date: Thu, 31 Jul 2025 18:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753987193
