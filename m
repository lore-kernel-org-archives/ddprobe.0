Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F2FAD2E2665
	for <ddprobe@lists.linux.dev>; Sun, 22 Mar 2026 13:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774185294; cv=none; b=t0c5MmW8wrK2/m4WHPcVshHRCU2uJoyMc+BQgCIVJ7o23ocJ9aRRRPUSrIwafRfcaR2OU8kT5m11N9eOgw6sEtgOuvHIxjMb+5gAe+TQy2+8B6VkrSWf9XSbQb09gfulYc1io8ByRYV3vYp4kUhwYoterkbaAGrUZLFNfKJLsmQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774185294; c=relaxed/simple;
	bh=ZcmbUzhdWkRGz5fb1qKh6o8RjkGxbvogdhhz07CRiSo=;
	h=To:Subject:From:Message-Id:Date; b=oh7ziTNsNVsSESd0/PDZDblGVABUowZU7qJgO2699oVqndtDa9bvxjdr3qseEGplsLTm/xhWHCQHJRuCM5/mvm/ledzpzAqLYVl/ypOUh3W9sgFGvXq1Ybht07fJ70XBTWJUtQ7IOTlp4pIuRg4f2sJCvl4PTzu1KVErnlZkkgk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uVdZdIlH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uVdZdIlH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FBA3C19424
	for <ddprobe@lists.linux.dev>; Sun, 22 Mar 2026 13:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774185293;
	bh=ZcmbUzhdWkRGz5fb1qKh6o8RjkGxbvogdhhz07CRiSo=;
	h=To:Subject:From:Date:From;
	b=uVdZdIlH7++WlSwO7RdLqXV92RSs5s6v36gVqvpozIGcXtO3Z80ZWaRq4eRQjNmso
	 76Yx8NTO9Nw6UsHM9j3T/n8shABhJB20OWo64iBcpT6IHGw0xQWYFHlltoSJjGvNik
	 Y4VArz1lV5Tq2aAKELKEzLpB7f0VxbHMIGB4lLD9JZTIKB3XZSm1StrqLuiiQBGLXu
	 fr3QdLdrw/I6EHrqU9vYaW39OA+d3VPvSoQtM2otG12op1TpeVXmEs8pVkyVtm80+5
	 cyciGoWOSo4bjJ3DfNuEz768soObiKjPnSsFFWARAZQJQIKvjCczZIuDKi2/0toTDs
	 scGGKu4K3IIYQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 906A8FC72C2
	for <ddprobe@lists.linux.dev>; Sun, 22 Mar 2026 13:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177418529358.28145.10968694456256256930.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 325b38da087f46d915426d4eadc04a44cd4fa3f0f19062cab0fb7af11b5cbef9
Date: Sun, 22 Mar 2026 13:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774185293
