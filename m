Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CF1993A6408
	for <ddprobe@lists.linux.dev>; Tue, 17 Mar 2026 10:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773743093; cv=none; b=qx/wNvFeE1OPqEZNGl9o+fjODSeBp4koxqRGXMzeGHTvmOm9V8E7ipJDsuXL1QhIdGcWK9ZFcVdtGzCvwJAb/7mYV4+6VHAMpRvAS4tzfNvHIa0DDblReguHKJRawVV1zNU/G0fasLzYvlQDUCh43jxYbfSLK7LT5O1eRAMVI9k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773743093; c=relaxed/simple;
	bh=pGbJPEBI/5xPKc1NGBHpzZrKz+qgSYdsq3K12XL5inA=;
	h=To:Subject:From:Message-Id:Date; b=VIabZ2+ZEIVX41gRMzGucYgysifGA1yNamMh7Lr8ZSSd/dJCKyhdLiHDTRbgeWh40r7rPQZSDdLPeZq74HtNaSzfz6KxjzR+ykFQWAJhbCp+gvxISsDrTumLRikBl9dwmKFCINZUVy8HzERhvZCoi8NLOiZK3GvryNFnk2w7GPk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=svZndQ6v; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="svZndQ6v"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE025C4CEF7
	for <ddprobe@lists.linux.dev>; Tue, 17 Mar 2026 10:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773743093;
	bh=pGbJPEBI/5xPKc1NGBHpzZrKz+qgSYdsq3K12XL5inA=;
	h=To:Subject:From:Date:From;
	b=svZndQ6vnvoP5mMH2cMGabbrKov0JlQ0+Yjs2VthllSlhIu2AJ75oSKVaBKUkgSB6
	 la7A81OCH7nUCcscZXvWP6TNN5xRHsUVjbP5cvZkQ78fkMnHJrK6Zg6taS1Z14mpFe
	 MgvG8xAemKR/uT0/DMI9rW0KdkcULChAcWw+3lr7r+tpsBlJNjDiCHGIYT5zrn3H+K
	 xbz6MuQVh1xiwRT+/0lOlR2Xi8SpIBpqutld2qB31TaOVqToaz39xTam34VlpO8q2P
	 Jbhr62F7+LjtAQlkzNOSimfRgsMb0dR3DeTTsGIKxn3COpmL6Jftu4cnBn9SOzrJXz
	 iRrUIjsLUG7ug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9CF10FD7072
	for <ddprobe@lists.linux.dev>; Tue, 17 Mar 2026 10:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177374309363.11408.5519498105809237701.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1fd9239276a56ad202e883bb8de19e49a671b018b9e294ab2f78f1a4bc62a612
Date: Tue, 17 Mar 2026 10:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773743093
