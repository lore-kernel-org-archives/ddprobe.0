Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 154A8364E9E
	for <ddprobe@lists.linux.dev>; Thu, 19 Mar 2026 09:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773912894; cv=none; b=sddONBhjmq1u8BxUIOd9i4AZ3Q2OhLYfLlUBk8OhE0KY93ieI5K/cBNxveVRO8RAqlWHeyK2ODVmQ2RF46RTHG4ZsqQraBQyyH1o714hc4rIMdXhjzL0rVTuwgZe3Zb2YlAD1+FGePqTda9TKNNKaCwsoPcCo3g0+OxIG7OfEMw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773912894; c=relaxed/simple;
	bh=EbBJPr0rpMsfBiuuhKowiM+M8vRi4e2IXnGmpXOsv54=;
	h=To:Subject:From:Message-Id:Date; b=eK6zoxiT2NObiPohY9MHNqDkc1azrWvQAFpg1rOB2LFSfSuc1zkmwsLnTMSF76xmeDv8csQwt8Hbtk/7cGrBGBYyjNpHMjVbj7VPxDZtVAW8dNwQsX9JDUHaZPO5J7m+qwcZ523nd8OMZMCEgbuPWtuLckKCgFx7bvxUXplNV8I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NzaZT+ws; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NzaZT+ws"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A11F6C19424
	for <ddprobe@lists.linux.dev>; Thu, 19 Mar 2026 09:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773912893;
	bh=EbBJPr0rpMsfBiuuhKowiM+M8vRi4e2IXnGmpXOsv54=;
	h=To:Subject:From:Date:From;
	b=NzaZT+wsB25DIryh8SlIem3QYolME+8f4HdVVKg2T5WH2Fs8qYaFJnnKNPjTBLziE
	 /fYBTWgH/sryQbCmVCJWciSq7U5zSR8v9pF2a+1UVYkfxXkKgJQn+eHxJpdtO7PIrK
	 3sVEIQ0AD61GYlnh651exulcGw0RguasJ4S8Dsje3nRnJnoAxhJM8JAmTPsXG5ZtsA
	 3HVwt04QqjLIRJ4dyH5UWofhQXiq1XEZR2jhA7q/Ko7DDvRXe2pdc9izSsOJTlgutD
	 Mzj72b6xwWvG6fEFbyOda+OBStX1Q7VGrH5w4vs/MSXQ7iJzbRjX1wkuws2rrTAMLF
	 mrjSLM8+UfeuA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FBA41075286
	for <ddprobe@lists.linux.dev>; Thu, 19 Mar 2026 09:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177391289358.8077.16852083180408630086.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d4ebc087070f24257bb4a77ac7830db2e34a68de0f9bfe93af3ea7675afdfa1d
Date: Thu, 19 Mar 2026 09:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773912893
