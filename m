Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 122A0BE58
	for <ddprobe@lists.linux.dev>; Sat,  6 Apr 2024 01:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712368697; cv=none; b=i9Cka2tuyi5RGDBLDEbiKUbUXml1vTUoG5gdvmovuNoJShR9yiavG5/efMv0la/nc069Cbtg1LLLjojMl1kGjL2fD9Z/UJyXaCCGL7giW+mkTZlPf3/tWLUNbnGTg34sGyi79uZfodtJ+pg5Dq45d0e8Ds8vXOMwX0EbTjeid00=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712368697; c=relaxed/simple;
	bh=83ijK5HQTp7fAcx3AueO/1kyM3c9K6jIDqltjR2UgWo=;
	h=To:Subject:From:Message-Id:Date; b=gvCAwUP2VSyWBl9oeV8L5hPf5JcW78vKPzWiZ2fLKDnTGWH14oeHVhYFnir+XUdeE3d2Js0KR/jO9NIN+JkjNxBdxwTxILCYyYhfX29mKDI3G0YKPYHi0Z7xzlYGWeizV0OnVP4sbMHDim5+Qwufv4i/xmeIPNI2YHv23kI92II=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sgUDyls+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sgUDyls+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7FEF6C433F1
	for <ddprobe@lists.linux.dev>; Sat,  6 Apr 2024 01:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712368696;
	bh=83ijK5HQTp7fAcx3AueO/1kyM3c9K6jIDqltjR2UgWo=;
	h=To:Subject:From:Date:From;
	b=sgUDyls+gWOb2iWLkvlqgAw1Z0Ny06pbm8fLe9mkfT7LtZ7ZW5OQxasveODdxhLfI
	 JZF5bw1J3sbua0O55hYAHLAOfe95seYp+9prkaJi+qhFxDTc4/582wlBFQscDThuoV
	 qGodXTKMckBblSuQpzutyuwPyXyhpQ65yATavOVLD4zLWCYfMXdtElj6DYjHM41ZMW
	 ZLV7v+aUDYeB/FjKIxrF802IhAwbmBFEX7FqbegcCrW5R3+ycZJg31mMJVp1QHAEIS
	 PeRvDeW9nkzTVli7lrAfhIvZzHUWm+ibfhAWbvJh529dnTRMow6RbWuKL16k9suhIM
	 f8puFsBTzZ1HA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6DDD1C3A59D
	for <ddprobe@lists.linux.dev>; Sat,  6 Apr 2024 01:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171236869639.21458.8923524696540323768.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9257ada1d6d8039360ccd0a99dfd8f3c0c95d0e2c067b1b97650859a5c239a9a
Date: Sat, 06 Apr 2024 01:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1712368696
