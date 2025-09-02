Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F1102522A7
	for <ddprobe@lists.linux.dev>; Tue,  2 Sep 2025 23:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756855194; cv=none; b=ooOp0BUs3N7Qei4QxyqfZtLnfTEeVqY71M+1+Jcm5u6iKodE2vGmGo5kgnjRhfIZsSayzE6KdRYmHE4ygfb1wEc24EQ1/EfMC+zJ35zpRwUku0y5VQbI6EmJBIkzWiOEHkmjEARNkfFsCZmTuypN2rGE1v08dkDOAIrWVf41Rww=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756855194; c=relaxed/simple;
	bh=XalKPwfoOXa+Gz/lTpxExwsJmTc6MAZvppcVRMxyHxU=;
	h=To:Subject:From:Message-Id:Date; b=paPE6fekYVsEueGC3OLHQIOIatsrUMStARnEALJvumKGvBar3jOOQTcifR5w+5oi6eTdw4YyDlC7H6BJDMFQumptecrsLBOJh71y6rWI3GvBMex9djLs0U1MnA0CDqR7WO9pEAtufqE69/KOAWA/abHZ7kpIqO/sLvgphFUBiYc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oLaK2fE9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oLaK2fE9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9744C4CEED
	for <ddprobe@lists.linux.dev>; Tue,  2 Sep 2025 23:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756855193;
	bh=XalKPwfoOXa+Gz/lTpxExwsJmTc6MAZvppcVRMxyHxU=;
	h=To:Subject:From:Date:From;
	b=oLaK2fE9iuPE507+nl4P1qXjAQ8fgimeQYz3EbDHpEOn50RvoaaBpFs6aXWoZfRJs
	 bus7V71wjysktmJerhAv+gj6PtNs4AjjzPWHDvKEKrppdgLJZTv8496AhISc1thRrT
	 BuID/zcS4/8pVzkgRl+w2zmEZAzLI4jS92e6m7nshQB1ZEgSkiaLjRzvIKLWJceZ+/
	 QyPed/YvHYXjGrAQl32ABHs1xzxjNl8iTyHI4fCNQ+ScX6+7kmDiSOxCS6t6Y9kmc8
	 0Pv4TDZpjqXQ4A+Z87e88x5f6ksWFWltyMO1g2lIgKKhus4KGh0TjY7KlCnZ1+Rcrc
	 BueP2WGtEWbuQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95131CA1005
	for <ddprobe@lists.linux.dev>; Tue,  2 Sep 2025 23:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175685519358.7732.6374901932087492001.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ef529fa091ec0f0dba894395e86dc90106901aa7fec968d9da589fff45427e91
Date: Tue, 02 Sep 2025 23:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756855193
