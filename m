Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29071B663
	for <ddprobe@lists.linux.dev>; Sat, 21 Dec 2024 00:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734741954; cv=none; b=uF9snRL1PLit/H1LcbwiRGT38F9fXyOziiy+6w2SDQSdJ0OUhHWYHoNqccdYTr0jLnSg2xhJkFPtJ48V6Jx/JT8F5uADe+gACETuvXdfpdzEowbXsdq9V/T4CyTmC+WRsXZIt6DxELY9jbeunc8seo/wyWkpXODH42rwXbdX2WI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734741954; c=relaxed/simple;
	bh=DLA6VCdBtZ9aYIAeB1hzlMoCsKIX5yN+2XFTlalj9dY=;
	h=To:Subject:From:Message-Id:Date; b=qma42nmLpQMXdjk0EUCthnhHyi0E/QiUxp8srV2ZYiiAsLJjPNVKEibVEXdV78wIhpaVWI7P8EKniUwhNSFvcSAs0W5YG5U66dNuaw7gOyApzeGjEf1MR+6RDhLbd+2Eu4EMHl9xl22p4SeESPGuto/LsL9nQWIRO/hJqM+MC5g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IHCMHhpF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IHCMHhpF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9F99C4CECD
	for <ddprobe@lists.linux.dev>; Sat, 21 Dec 2024 00:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734741953;
	bh=DLA6VCdBtZ9aYIAeB1hzlMoCsKIX5yN+2XFTlalj9dY=;
	h=To:Subject:From:Date:From;
	b=IHCMHhpFKuJfhv+m5T26KIpwrAOBM0D0rW4goYRNez95bLtBzO/FiSnYuI28Ei7nh
	 EszxYja+4W1ZecYebQjKaxCqWOwiKgVdP7NKERsU48WVHicw8T3f8ETcSbs8Y8tZQQ
	 Z0QgZC011mdAcPfR2M0QrtRfiE9w4pLN+A5ViOsX+ovmt9V1Alm2hBmyZqglZ5nxEp
	 LoTYLnHOwSQJ6Uclp7mOpnLkaPZ5rgVBsNXRBoKWZia2Y3ajQVhiDGNnm7/arLDO2x
	 hi0IDlnjKwUV/s5dqH3stp5X71Y9LrC9p3m5xia0LEECvzJaJlpqQkLEcnobE/Wvya
	 /GhU8uFdqQ2xw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93C09E77188
	for <ddprobe@lists.linux.dev>; Sat, 21 Dec 2024 00:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173474195359.24464.3402565631557600600.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1a2e1f7822049f22689b7be0db04fc685366be3a23205a9e3e04ae1479e57e07
Date: Sat, 21 Dec 2024 00:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734741953
