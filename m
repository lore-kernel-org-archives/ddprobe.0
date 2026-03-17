Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25450318BB5
	for <ddprobe@lists.linux.dev>; Tue, 17 Mar 2026 17:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773768894; cv=none; b=Ib8Tx0EVkqSurk0Ne9QW3z8jLs8fHP6+C97XmGp98c9XCJazKXs53iKPIpk/B/oKark2WgIWwVnEMhimkoqbWUb+DKsSbDKBHjlkIgCguvqTA8kHRm1Kzc3nl38YyRGE27et1aknf6523PwrFLYTTF9XOGsl5cq2nguAK7dOEvE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773768894; c=relaxed/simple;
	bh=2Ua74rp1yEQ5QkAc1ei6b2v8GniAtXTvrQHFibyVLDA=;
	h=To:Subject:From:Message-Id:Date; b=d/gffmYlo6zcWxiwkaLPCcgHM/DP5Z28fpfQ9Y2oOt4ODciTPwpjKL/1Z/UgZj+9UhaDaHxRLfYRNB0QtfjrcYqDLiNkV6zM8WgK9eI8ifqmBXMqzm6T6pPC+Suauay2A0+x+jGsOQA5wMKCaLBfuf6J5+9OuKL15Oy/13Cr9hk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ktHIht+6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ktHIht+6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1510C4CEF7
	for <ddprobe@lists.linux.dev>; Tue, 17 Mar 2026 17:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773768893;
	bh=2Ua74rp1yEQ5QkAc1ei6b2v8GniAtXTvrQHFibyVLDA=;
	h=To:Subject:From:Date:From;
	b=ktHIht+6LgRW8oHT97KitGvblf2z0hogWxEv6YEl216LG/LOWwrKu3HrxsgviU+yN
	 nCkxU5byTWLt7MJsHQOAh0A0ZndEdf8ZQG0Uwskzwlt1FPklWwnQdQEtrZJ7FOZVUt
	 Jw6DPnmOxyssa6LWKzRVx7PHIHVBpkPwQWEH4VjhECzohLDMgBx1zD3y9jIIQRiTBk
	 jbL9EH4FBt+xcmruHkxGDB3Hm0jFVvvCQ81+YWuhgtse8HsceNC8VTYfewsQyJkxNd
	 l1OAjLKTByrvpawi1OPZ1ZzfV/XUMJn0puUCjAINzmEdgg7CbDrhFbFCSz/dUhjQm1
	 P1ZH4j6I88n2A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D2E1FED9F8
	for <ddprobe@lists.linux.dev>; Tue, 17 Mar 2026 17:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177376889363.8184.81880619305775064.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a2196e7832ce21b73ea1c21ede16dc67e2ab22336743f4701dbddbdc91e0b824
Date: Tue, 17 Mar 2026 17:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773768893
