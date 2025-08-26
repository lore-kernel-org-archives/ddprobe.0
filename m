Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C84728314A
	for <ddprobe@lists.linux.dev>; Tue, 26 Aug 2025 14:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756217995; cv=none; b=EL5nEQAaakLyO84AU4d6W0OtYsHsm//8onPxqyoltvHkYcX3LxFJfdPt3QEDB2OB4+la1snafNyLIiSebdcuCAaPBfIIndXdcEQtNWXrDSiKOvmRnGxOY/xBKcMHJ8oO0Y/Vjwh2jQioRC1H3cJ9pYj0yrFcDaFNxUq10tPW46g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756217995; c=relaxed/simple;
	bh=CpJYvLKEcpnp/aV5N0Vjm8xU2cvwfkYinFzM9C8sEto=;
	h=To:Subject:From:Message-Id:Date; b=u1EGWEOfmBBhRFscGLcZI0LAuryL09y5VcFR0oelXjcLNScpHs67KemVIP0NMUbstkN1LLyQzlH7dQ59JLdnepg0rV3rtWOUkggRXkLskq85rmL5n5YPdD4Imieu/Cu1wNp9psQcx+D8OusiHp6NvdtAXuJOKnz3K6D5MyU9WKU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=f2NVH1XI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="f2NVH1XI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0A6EC4CEF1
	for <ddprobe@lists.linux.dev>; Tue, 26 Aug 2025 14:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756217993;
	bh=CpJYvLKEcpnp/aV5N0Vjm8xU2cvwfkYinFzM9C8sEto=;
	h=To:Subject:From:Date:From;
	b=f2NVH1XI1gqoNCJymtEQLWyntjbO7CEIYnFgcQwMdcgtGu6gHDBzxdtxaNf4TjGob
	 oVLN5N2qr82k9gmmIYXtcQ1BTbyjG/R8zqD0ZryXoj8gzlC/ghR9+6zhf/qJyWGRxT
	 uEXv6p4N4TXpghfsi/zOMolOgwDV1lcvM9zLnj05awVy9xRbjJEvvMgZ44vq7wshhj
	 lzCRfgKXMi9iMZNL4Tn12DESRKWVe0aWpKZhbgfKoODQWfAHSU9zOXy8RChhPZ4QZq
	 naP7KZh9vsOqgp3PjgSCmg6MhdhfToWWBxpR04CC1iI35qkk7xx7PG3Z27HQix0n+0
	 ez+a/D2FId5EQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90AFCCA0EFA
	for <ddprobe@lists.linux.dev>; Tue, 26 Aug 2025 14:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175621799358.21845.10887726364489616290.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b442d1b1303326dace9fa6a3bdcaffa9927c7b680a0ae2cc84bd3003027453e4
Date: Tue, 26 Aug 2025 14:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756217993
