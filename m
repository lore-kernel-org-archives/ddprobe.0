Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 14441175A98
	for <ddprobe@lists.linux.dev>; Sat, 11 Jul 2026 15:58:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783785514; cv=none; b=JDOvuo9FxLYrBy/AiBo+oc48CKBPihQ3cJKpeAZg2oYKcowT0exZ6Wpvn8JrT16ujDEJt8nMP1RaFl7hcXAEJNwBxxthML0oZ0nRDDSZkaOZvCv5KF18dLM0wRhe82mwkdcgudoSQgdWFmAbQ6+WwKYZFA3FkKnA1mzGVLP1RIk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783785514; c=relaxed/simple;
	bh=Fn1FrNKGCjcsTsCeSuegFEphOQIAmOqdz4kzoF1dSuU=;
	h=To:Subject:From:Message-Id:Date; b=MpjUfiZLCZJYX6O9RdW75wVy+vfSP9IoUPSdM6IsQuxS56G9pWtjl6tqQGfVbXJ9dGGCDrvfKAMo+jaDIyw3eRidrmzu/JbsVeZdrZNGQ/BTiZuIdtsceLI78Nk/4Wc9sKbTBxNG/ox4EHoZRxsycatWhoZn6teIgp2jqRVbVp0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HFVhFgZT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HFVhFgZT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C8DB0C2BCB3
	for <ddprobe@lists.linux.dev>; Sat, 11 Jul 2026 15:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783785513;
	bh=Fn1FrNKGCjcsTsCeSuegFEphOQIAmOqdz4kzoF1dSuU=;
	h=To:Subject:From:Date:From;
	b=HFVhFgZTm8zrSzyfJQVOv/a+Y9Hd/cj+EGixDnyYK04Qn1/SStM9qa3yOWptoE8uV
	 /ywrfgnY837QpniiHcxdYcM4kvoo56m54kizW40ujNk7MkTQIsrcrqlxB0OFWpkJ5G
	 67aQdfaavttjB2Kl/AcG9McQGKKulAnKNxJGjdvcVOKMGkqhEhYxQN/qE8kPcgOHRD
	 oiRCPjoVX10J27CbEwDMDqsyt3GmbbaMIUfT93UNrgF4QhnsRv/PaUMMRXtmvs5TuF
	 8n/foZlJRDKJdWrLS70FEqrB2kkPVmM4XXx6oVEqUmGaXnxBam3X7NhJl9UVOhtL3w
	 zYtsZqXpuBCwA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A79E5C43458
	for <ddprobe@lists.linux.dev>; Sat, 11 Jul 2026 15:58:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178378551368.7616.753841086961710450.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: de1f165b6d8082db0e257d8ecffbcb9ee49a8ff10cb33ddff2f28c3aa7f102ec
Date: Sat, 11 Jul 2026 15:58:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783785513
