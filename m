Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D41921F4C8E
	for <ddprobe@lists.linux.dev>; Tue, 30 Sep 2025 15:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759246193; cv=none; b=d53sdxmB/BvfpznKWxegPce7LfeWbti1A8Zu6FtWaca3uUOilVJxjYfUka9PApGoAz5Um7x4dX/FzpA7l28thTfD8nQAFM8BrivEg+4kh1X5ImCtQc6bu/rrSnhe5cjcLUA1TBnOQCovAgiEpXTjqXhRus14yquz4P4UyaeDAL4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759246193; c=relaxed/simple;
	bh=pPFO4olaeByCGq8aHM1IoiKdnan3/kozofYRTWFZfOk=;
	h=To:Subject:From:Message-Id:Date; b=dFoPpXXJQ+qXmd3Cq7X647rdAVxWZ9B/lGmtGawYXTDsewXbZ2hVWjWOXoLsohgnvFEB+FutqbFwb3BLVZA3jRKt65TO2IvdXEp5ayZUTRrx3W+63ktE5NQdTkPg3EX7kAcCw/0tj4OEUWKFlTasWohpRJbLCi/T/Dprui1q6Ls=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=P+WuBsqg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="P+WuBsqg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A29E1C113D0
	for <ddprobe@lists.linux.dev>; Tue, 30 Sep 2025 15:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759246193;
	bh=pPFO4olaeByCGq8aHM1IoiKdnan3/kozofYRTWFZfOk=;
	h=To:Subject:From:Date:From;
	b=P+WuBsqgXxLq5gI9CPMB69H/oBLgWnT3K4bx7dgXBIQ5WelHQKbFM7DXtRll5ilT7
	 z241Wq94eaz9Rq7M0/5z18id8/l40Q7NHXH6A2l/8lPlyVFhLmipoJx4JsiY8WBVup
	 gndQewJ/o2W5/3XJenLfxWbe4KrM3W7fPXPQgAlChUWtxU5k8Qtxq0YmFTAkkfDT2n
	 EU0p6wLkgL7+9pv5eaQAQcZCFqb/Doube+1+CBVboHinR0qiXlqwi2iA9rumpTPKfc
	 cXt9rySMcxnw1pPc97oBR9vS9VgNEJUQ24qe5xCXaQN6yyd9JSrwuSrnpkw4AepHa4
	 JQiSUcDN4XIAw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 905C7CCA468
	for <ddprobe@lists.linux.dev>; Tue, 30 Sep 2025 15:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175924619358.8833.8016965594190343866.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: da1e12da57780903d900e156b3ab4f72b56c7a0cc990176984d5743b7c23d841
Date: Tue, 30 Sep 2025 15:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759246193
