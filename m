Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B5A9290F
	for <ddprobe@lists.linux.dev>; Fri,  3 May 2024 23:32:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714779143; cv=none; b=IB98W8RPFTcJM9zcqdT3QqFTFIM4o3H0oKUlNTqFtUPMPj3x7A5ZhknN+RLwlkY0fXawjgZXBOsQTIPgkRR+iIWoWrKAgVqBhPEG3rURi+4oRouuUQmVdOTbBjjCBUCzWNyzQRLLomCp8mnjm6RJJiR2y08TKJ1srmtADHrmXIs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714779143; c=relaxed/simple;
	bh=aPoE4o1BAoTfAl69oFkSGbRmcp75it0Ew9NDffoDrwk=;
	h=To:Subject:From:Message-Id:Date; b=qb+JX5LP0eWX0hUUkeLpEdbdV6NS0j4DBMNRDZYYBjghmX1O8ZfqKw3j5z082vkF5nBbbZ9c4yYRVR5UvxsD6IzVgeOkfAl6ZsmK5p6Pdvp9+P3S7AOO8A5m2n7pYAwPgSr2XaTasFoXenR8DJPCwF0s8J1yMK8QSFOjQ6gBFFk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cPJfECqa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cPJfECqa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D33B2C116B1
	for <ddprobe@lists.linux.dev>; Fri,  3 May 2024 23:32:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714779142;
	bh=aPoE4o1BAoTfAl69oFkSGbRmcp75it0Ew9NDffoDrwk=;
	h=To:Subject:From:Date:From;
	b=cPJfECqaePBZSHBdHUeV1JuwiYVy3U9I0KMG9+HAVPZIFkW65/e9Ocvo86F4Sz2sb
	 l2GsFXd5RyJvwDFipM4l4sQjQAvjw7CYffHleJ1SL5Jl1atd2Yx6etAupxX7FbtN7p
	 3AikAhxTe6Kgd6tDENTR21vzSYZHNrWJMGoFDxtKua/L31Sluvq9qLg2rZami2gfgD
	 LH2gexUOGqjRXVv/JrrxgEPuTdtVLUlQA7qkdVbLwMs3IkSAMXt9UwJbCCrFFIwPlC
	 cCfese+cu+u+kHAWNTOg4RgLsAv0sE+N+WcxQCx13iZ8SmuKBLcvdt20aiJUiuQ4pP
	 qQKGndi9O9KCQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BBAFCC4345F
	for <ddprobe@lists.linux.dev>; Fri,  3 May 2024 23:32:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171477914276.2508.17750612306788078668.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5ffe4338d9cf2966afe657a180cda0251c9c9aa1a8c45feb718a4fa17f2d6fce
Date: Fri, 03 May 2024 23:32:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714779142
