Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 50C8814264F
	for <ddprobe@lists.linux.dev>; Fri, 26 Apr 2024 10:12:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714126343; cv=none; b=YzRDRkqeLvkAkhbyD2KgAWSTDYe1rQFTauj7e4iprf36GxIKUs4gYWaB9sET52CPpkj6d93neinDxNA4PTQ6B3DKBWdJqNa4Dm3/kUNdfhkHticdEN9hvAPwEsbpHxaxWMXSDLF2/rZi+YwzKMHyH/G/qCA0gPn5F7jSKqpml1A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714126343; c=relaxed/simple;
	bh=NxyCBZIqfot7GUIZ1nf9u+81Y44tLQ+fc10sn5x6fPs=;
	h=To:Subject:From:Message-Id:Date; b=peomfzsseRbrvQNV+TOVP28HLtT4hq8/4MxX+GV/LusdUP0UQxBsJqsMuNZ6wijFs92GlJNr+ID1tj5/abkkxJd7a3xMcnBYuCD9H744NZY0Lg6VVIDr0L7tV9iqJQuUV1QbgdBaOYJCqSGC4AYae9xZz7lh5DHiCUw4VbRRkUA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dMBVQVxZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dMBVQVxZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3C94C113CD
	for <ddprobe@lists.linux.dev>; Fri, 26 Apr 2024 10:12:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714126342;
	bh=NxyCBZIqfot7GUIZ1nf9u+81Y44tLQ+fc10sn5x6fPs=;
	h=To:Subject:From:Date:From;
	b=dMBVQVxZIBEWtgSqjh/TI2+7goreSkSQHL4v5r5a40LLxZF5uiIhsbMsRoEiU3mPc
	 2JCXjDs3jdFY7BVBA/X3kNfcCYzSa6Uf3RR/n0b7UhGQPRyk95sxNdrp0uNCrekXVx
	 YxQilqmxTpltjQNYAGMOqq4t5ToJ01aW1sJqcgJer41VNSRCgLcOuTgbbY0Mv/kL4x
	 DtrBOTa4n074ZAZi0tszL1z0tlEwTAxnkNJ0fNRBLh8L5xc8+5tHT4mguRjC3u9WN+
	 dGwlqJy5CyBP9VlvbbNBMKn74bvcfu+/LeqFpAXUXcjo84E2IT0LkN90ecty7NakxC
	 /bOvRCNXEfOog==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BC46CC4345F
	for <ddprobe@lists.linux.dev>; Fri, 26 Apr 2024 10:12:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171412634276.20372.17648384852143845113.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8de21ff25b434e22a4a8544171a35e467a8532fbea868225d79081d679f4ef42
Date: Fri, 26 Apr 2024 10:12:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714126342
