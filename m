Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 537B533D8
	for <ddprobe@lists.linux.dev>; Thu, 13 Mar 2025 00:58:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741827534; cv=none; b=V0y5AQF/VaPG+afOc1o4bX/LagqXJZTqnwoVfOL58ks94uzQquAVGEf2Jka/55XjKLatkM3X4KVp3uZ5qttWRrdj4cJDjXfhB8BKLdES3caFAe36dEMiT60nUZhkbuy7oYgPhAU3cELm08S7qiP97CcjqUx34Xsa40ut/+iviaU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741827534; c=relaxed/simple;
	bh=d0mfUT8ackOpIezwZrUZBcsqwMiWcWwXYXMJU+sTjwc=;
	h=To:Subject:From:Message-Id:Date; b=EB+KrPUqCv2aHj0bFgYzJMAR/wm8fKA6MZ1NTDBxKR3CZsGw2SBjKXQ58IJpCziFORc2iCYTxtuXLsucnko98875FFw3qcxOCN+j9H7Utu/W+WqrRe2nX0jz3tyKcXrgk0Mr11FumKPVII5w4WjQyhmg+Q/dEbRn372GTqS+I9g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=B3LL3bgJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="B3LL3bgJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1E95C4CEDD
	for <ddprobe@lists.linux.dev>; Thu, 13 Mar 2025 00:58:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741827533;
	bh=d0mfUT8ackOpIezwZrUZBcsqwMiWcWwXYXMJU+sTjwc=;
	h=To:Subject:From:Date:From;
	b=B3LL3bgJN5r3hnvvzFuzC3Fr2SZspv2xW5rNnmGOtraFmdV8XK26yMYj0PLCx8OdF
	 07AzhBBr949Gh4ooxkoqZvz9Ed/iyJdgWg9NbZHr0KOCgCG40weVWj1zEPqcOo8AO5
	 +/Fy7cOqKDmfs2M0D3/3spnFxe5S5Xa5KAKOHcFCeG6w4O3of5NLz5A7LWOmAJbtId
	 1q8TXdO2uWjB4Mg9BHVncDWLj7Ur+fDSBLviAO53YB1KH4RiV5vqPa8rZgZ2ndSbfh
	 MxvKGc7l9zAAIHyVAz174UaFw5Fi3y5bkdszxx+5CCgk9XXNwG77m7xp0py8Kpj9V+
	 NgPturHkoI+eQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A2EBFC28B28
	for <ddprobe@lists.linux.dev>; Thu, 13 Mar 2025 00:58:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174182753362.2209.15062782026655436505.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7468c30184484834bf1c0e61adcd0db5e77ab5dfb7f371b09a7de34912059a14
Date: Thu, 13 Mar 2025 00:58:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741827533
