Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 72B8B3DFC7F
	for <ddprobe@lists.linux.dev>; Wed, 23 Sep 2026 09:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790155234; cv=none; b=m0tFL2FnS8mFeLtiTLSZFCFqm4Q57TIE9c5oNgJFOptm2wvUoreQCCM86FCjHEYGP3W2OXIJu9NDmM1uT/KWnyQR8EYS7RXOO8z+NAujcuItlGlTe4IM2xR0cjxzHKBY+qAEAvWUUANZL2C5b/exn4A7Mofhe15fjMVHy9RCRWo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790155234; c=relaxed/simple;
	bh=XP3m9VHPpwuKqL9he1+UpVcGMDxENYepn3dMa7qWAR8=;
	h=To:Subject:From:Message-Id:Date; b=YUla1lNE89ocgSukEeh9t4cc7mdE51m8jCGEfOag3kX2myEpFQiUPx9O8esenCxMqf45s+uRmPyZEHu6S4MxOkqb9k7AJ+RD0n0XDNY8Ordhhr2irF+7bmr3YtvLB8Qjgejz7WfcquAAKE7yBbhSivjhsFjKeUVrhiMeEv8StM8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=O9p07u/o; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="O9p07u/o"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5930C2BCB8
	for <ddprobe@lists.linux.dev>; Wed, 23 Sep 2026 09:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790155233;
	bh=XP3m9VHPpwuKqL9he1+UpVcGMDxENYepn3dMa7qWAR8=;
	h=To:Subject:From:Date:From;
	b=O9p07u/owOM5eCNzUPWPxTU+4Z/oos3KTGKJHR68X9ZbV0SkEK41MFcq1ONZVo4/S
	 gdQtckQ02RGMOFdpxUYKdIIuY33c7sExeeqSIFRylGUKNdJhyDy4NRfgEKlxbetzaU
	 RHw3yws2UritbT7P4xYfMTHvVcI4pQPMmz0CqshEZKq7qA6SQqMIPxofAyciPw8rcY
	 U1Xlhsly3iuSeU9yeyU1U+5PpEQHDwQMrpqsHZFUUj/3zksYYgLZxaMvOHO40c1/yA
	 Pd5ukvJQ/WAHBa08sYVMdcOZLhyUc9oGhw99mCZN5kO+xIl/kRT7pdH+gnVbMCLxi7
	 pGDsMHJ7J+l3Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF5AAC982EA
	for <ddprobe@lists.linux.dev>; Wed, 23 Sep 2026 09:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179015523370.19134.16561915397384220807.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ef205403ebd27a2fd8581225dfe24363e9653df54a65316445b68bab45ee7230
Date: Wed, 23 Sep 2026 09:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790155233
