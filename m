Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 10E2A7081A
	for <ddprobe@lists.linux.dev>; Thu,  5 Mar 2026 03:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772679894; cv=none; b=uCHcvTv0N1Q7n3FnbmhrcvukMyNgXgEPTtxMjkXX297RyGeIOwofP0+eu0NFsfrgf6FjIyH7fApxmTTO1BOLapQIu1Bap2ejdlzGjgcUJuyzNB9W2AwHfItBXwiTdtl82iizcOWVFpwezlFJGTSXwjJgksCXiZpMLE0WIMExT80=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772679894; c=relaxed/simple;
	bh=fMAc+pNSvTKJteBYR66vQBf1raSbbQYdR04w7T78hjA=;
	h=To:Subject:From:Message-Id:Date; b=FTdCTxsWJjgodh7vUM4+LuNtl7G1ml90SEIiUG9jORNBeKQH5stgQLZjFKDof062lGPfpHXpT7FytIPhd/YMXqZFi7GSlxgcsdbtLbXGdhpnXosqHUglS+UG8ZGuMYgDiwdIYF0z9ssx7Esiaohhp28CNFWaZucotK/Q7TW9qUw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oCS8R7uq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oCS8R7uq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6AAAC4CEF7
	for <ddprobe@lists.linux.dev>; Thu,  5 Mar 2026 03:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772679893;
	bh=fMAc+pNSvTKJteBYR66vQBf1raSbbQYdR04w7T78hjA=;
	h=To:Subject:From:Date:From;
	b=oCS8R7uqydrWh6M+QIkmv1mQKLKmxjiQUpCtv8xNM9mDOd3YO2dKJIKSMyBrqtYRC
	 5qteNujUMnTm8Lb0shijv6pB+GWrkQ4sp7kJOLC0vLKVobTp/9vV2lgDgcsyaRJ8zK
	 5u1kDrCnfCZWFa6jn97RCCQzuBQryfxw0JOlFQMRYEDM8mBuwVA/umzRadiK0x5tiz
	 OyhpctTKwtR0mYzcDlS7f2znXge/QtgS8dHhuRDzf+320iGxbIAboGXuTb9LLEVJRf
	 WutGwl6pn/LxueIKsoPgxyImlWFMZI5MmL2wHu9Ojmsqltylmg5DYmqMJIvnpfXz6k
	 YD/V8nDpebfEw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F64CEFCE43
	for <ddprobe@lists.linux.dev>; Thu,  5 Mar 2026 03:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177267989364.1327.11014821311813573303.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 53a5c56b2161ce45ca9d9fee428734d798c4f97430a61f51d7506e80db2c106a
Date: Thu, 05 Mar 2026 03:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772679893
