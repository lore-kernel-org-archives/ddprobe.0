Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1356830EF8F
	for <ddprobe@lists.linux.dev>; Thu,  2 Jul 2026 20:08:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783022914; cv=none; b=LefcuzJ+/U4WdK2PiHejyyDKlLnuFCxOxFS10u8LhIxT1Vfu5JRohqk32Qnl98kUNCDL21q9cRU16hfd4ExfYpn9B6PHtWDYJHkpsN1ZIE8uUh0b7nyq1Z7X9TuIt5NzHQ5UZf95RtayB4uB9xDW6iyysXYWejHQbbAYHhkPCrw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783022914; c=relaxed/simple;
	bh=7L1nqb6pD9LNblnUAd1zmzs9j7sArQv06nA7/rhO2Wk=;
	h=To:Subject:From:Message-Id:Date; b=EBH9fzvPF6+NCZjrHVZwhehVqc8zvcFC6FrJvHA1Ri9IXRvDPo7BaVxfh0ECFxQJ6oGvRm8fCvca/dxR90kL41uqWgpR76L5FeTcOL4FjtI6QsD/6qR1U1cMsTaj82Wr/LJHhehsf0+mIoIh9a9YiRAAuD9+FcotCgO9KQ2uSVQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HCCPxFYP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HCCPxFYP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD92EC19425
	for <ddprobe@lists.linux.dev>; Thu,  2 Jul 2026 20:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783022913;
	bh=7L1nqb6pD9LNblnUAd1zmzs9j7sArQv06nA7/rhO2Wk=;
	h=To:Subject:From:Date:From;
	b=HCCPxFYPoRhMvb7a+fS9oU9NiirmWV9OGrQIwGpQ6Bf0+QQKUukabSM3yjL6H1Vz0
	 KrUgLg8FHKz5F7wfZv414G0Mi1FCJWeqVk2XTKqxWHqfutL2Lq3Yr10U+79H/pwNxJ
	 J1JuyyxpLkbQnsajk9XYc9yhunHqHDoR63lFYeB8D0xvjv+72i4zFGXykYd8Ai0bzV
	 11dmcWb0m+GjVNpnNpaLEK2Y6rnWAKa37rpIxu/lzG4mjk7oNHP0W9UHA6x8LmRoAf
	 old7q8PdfEpZ+qOdOfOCNzJTU9A/c4T18pItb5lnxcNgm9GXC1vKeWE0yjoGCHJn9Z
	 t7LVOq6ywlKNg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9A17C43458
	for <ddprobe@lists.linux.dev>; Thu,  2 Jul 2026 20:08:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178302291368.20182.8803749440671667765.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f842c97295b3a1248326853d25de0b53f80060a98a9b465fbb2d9aae08dfb217
Date: Thu, 02 Jul 2026 20:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783022913
