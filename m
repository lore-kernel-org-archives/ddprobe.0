Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39C052D7BF
	for <ddprobe@lists.linux.dev>; Wed,  6 Aug 2025 13:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754486394; cv=none; b=CvA+FUlel7/lk5b41PBkQib27NOVLwFzTHwU8lVHgxOJ/w43l/TEOF9EwNUqcY1eU0cYtg7gjKZ3xftI1R3wTGyeOPcsP+tC2MP0d8/IMToFozF/4h00x6sKmgslJroNncJ4mkvxiqRCjneAg3bzlLVJL+W4Tn2iO+swWrJjJ8I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754486394; c=relaxed/simple;
	bh=YIE3tr7nXwvA1JQn7vw5GW/HmAM2SqJDsWcf418aSps=;
	h=To:Subject:From:Message-Id:Date; b=VJez1mH4FMfb3FmjXstOFPb5SDGnRNDkalbV+SCeWHkOER4PLbUF4u65qY0mKinyfkAo9ibKhVXJ4DjVKZeFzvST2UUrKU+ePkugc3PvaT3l+zNSdF6juE29KELq6sUv5JkwpLb1mb7ewvyLUo5Y4UO6qBf5D6PD0sBsIXwytXY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NDaXsGYJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NDaXsGYJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A53D5C4CEE7
	for <ddprobe@lists.linux.dev>; Wed,  6 Aug 2025 13:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754486393;
	bh=YIE3tr7nXwvA1JQn7vw5GW/HmAM2SqJDsWcf418aSps=;
	h=To:Subject:From:Date:From;
	b=NDaXsGYJEKCpqzS+0CsdGg9ey3XqeAFmjBuQ7GNTyDivly7Bwz4aXRlUiqUJpricV
	 TuzBoQKfpNxGQA23BHCTBuy1mLB0HriBBIcFcX1U1CnXq6UzXMERSnOtp/9H2kz3Qz
	 ZVOI4gbiITBBX+3X6kmeha8EuzXTOPY0SyYZUbPVykH+P8G224wj+PyVzfGXZFJ///
	 XncEUHhRu8c10MlCP2xstaSAoUNolATShqvGsisTnqIq2NPsT+nWOA8aFlG7J0Ob5g
	 nvdkV2KH/hE1ZLtjT5L1avKRNsHeEfUwZZe61R0RAVxeF7+X6WjoyaUr9kmZ4S7x0I
	 h4pFm8uU8naog==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 901ABC87FCB
	for <ddprobe@lists.linux.dev>; Wed,  6 Aug 2025 13:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175448639358.4346.16686702745043092504.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 45109d7e6a86e0e04ca2869fce5550542bd1a2b42a114c434ec334727d24029d
Date: Wed, 06 Aug 2025 13:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754486393
