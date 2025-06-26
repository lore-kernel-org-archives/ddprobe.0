Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2254C192B90
	for <ddprobe@lists.linux.dev>; Thu, 26 Jun 2025 00:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750899594; cv=none; b=ujcSRnDUDKZHaTLIG84AVQrir1EK/QBZMZCHa+X2emX+Bz2kDbv70mFmfFGZIO4aM39rr2ViNFYfLmUvjtiAi6t3MaDM31/GK9iIZwPf8CgzTNYFkw9+mOMOKjYRylpa6ikZm+r+PQ/7sOKLy51bvZydAK/cC1BIEbumienH0/Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750899594; c=relaxed/simple;
	bh=HePwsSOyl6IQT1f72E/PNY2uvmwaXqfVSDdTS/84gQg=;
	h=To:Subject:From:Message-Id:Date; b=lmaqpJR93ZbB+3BwIMtGxIS9gxJ1olCUsVDbsB9C7JhJpnGUzJr9s2OFLLTO4Tps4YaaLeGaASjjYcsRlor5aVWRV8P9Tf8++XSLOWQjwquJvLeZvGWRuEZnEpRDwgxQtKkseI7WcE9FIRAs5p4nrU27Z8vJoiaC3fG2p0wx1Bs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SD25bj99; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SD25bj99"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1CC7C4CEEA
	for <ddprobe@lists.linux.dev>; Thu, 26 Jun 2025 00:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750899593;
	bh=HePwsSOyl6IQT1f72E/PNY2uvmwaXqfVSDdTS/84gQg=;
	h=To:Subject:From:Date:From;
	b=SD25bj99g/1kshZM8/81/6GubC6lL4mYKKtPxtboL122KxlVb3rvYrcKV4aL6PyM5
	 +hzcnjJuQW2IYclfLIsVoKecMApEfOQvTe0X1yJC6a1acO5tt/3UoN3PQobez6y3oC
	 LT6Y3nD2PZNmXGiLhJ72vKvI9eCtdhHfD07Hccz9frDfXvwYMlTHDxyInpLGPTKECV
	 VkJrx98rNclV5fyqwaBwB8Phk+vlrtZHBkNuEE7ReXFGOASFUo0x51hS2+SCHqdr2o
	 V+EisUfFLKU24JQydoS1D5jyczZ46QXaP9JhC2+TxuLe8m+5um2vcutwvUL5M5/+b9
	 QSfOczXeEawnA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9188BC7EE2A
	for <ddprobe@lists.linux.dev>; Thu, 26 Jun 2025 00:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175089959357.18449.11694136772721825647.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e77bf5659da557c48b36b67a12b3cfff02c334381ac55fff62292ad62b85303f
Date: Thu, 26 Jun 2025 00:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750899593
