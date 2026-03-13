Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 068FD3B7B7D
	for <ddprobe@lists.linux.dev>; Fri, 13 Mar 2026 13:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773408294; cv=none; b=B8c97rfXnY7MlppZw9rqgP8WT8javjVxfLVurnbdFOLZzl63xsMMPH9SSLHwcc5IkuX1lTSihke+Mdfz+xdkcBjM5490OcSxlUIiNp6yDCeSwpgdfVruYvNCSxce136BOcLp0CcehmqHyqzcL02U3tlgqIHU7ElArVZJWe5Sh68=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773408294; c=relaxed/simple;
	bh=cwWYJeV/qId0WfQ+2tmAPsxxZ6seYZfbn3jxL9cSWM0=;
	h=To:Subject:From:Message-Id:Date; b=UNp9SedfRAbdFTNMKKTRC62gBeKQgGYN6iteBgagQk5moEuQ2NdchQyrLg1dq6Cli7pMdCTuJZs/mG2JtaMnWBvh2Kb8DL+cuJEeJYWjE66TSi100BeoBu/CMzGsFPrBGMLSzavGWxvRwvLphOaJkmot6x3TSBx1MHQtramQAeY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OYkxeTsV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OYkxeTsV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A19ADC19425
	for <ddprobe@lists.linux.dev>; Fri, 13 Mar 2026 13:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773408293;
	bh=cwWYJeV/qId0WfQ+2tmAPsxxZ6seYZfbn3jxL9cSWM0=;
	h=To:Subject:From:Date:From;
	b=OYkxeTsVQ4YTLn/6P1lckfGog//dyOzgd2y/nKsT+cvS6BUZ6ZNIXgpGU+upCuQ+g
	 zzOhv9EFCzjurozg82S9tthKKgPN9P+VtCs6pxP0aoQl/qEpvvv4twT25QPadlIKQB
	 5K2U62r9waOrfOHppxnRc3hftduxllXhs6bPvJGDyT9GheI2gTP4tWouGWbYn4GqaB
	 Dueghyu1FdqzwMYCB8AUkLayX7oQ7zkg88b996xzGZu6aovqGY6bdkUmOFoc4mqaIE
	 hQVar66C5zWPv+HJ+Cg5UQ1qQl7CGtzXFIFDQu+PXa/16airB3aSdxT1kuJjnauBq9
	 ebtn6GmjAPwNw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91E6D105F7A6
	for <ddprobe@lists.linux.dev>; Fri, 13 Mar 2026 13:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177340829358.23430.17986181991431761683.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5c0a5321127af58507a5b7123e21b4f7c99873520d2cecf3e7627fed0abed820
Date: Fri, 13 Mar 2026 13:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773408293
