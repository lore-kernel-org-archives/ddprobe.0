Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B41E366
	for <ddprobe@lists.linux.dev>; Wed, 27 Aug 2025 03:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756265994; cv=none; b=VOvnxUNRslougZbzpXaQZIGD1abiuOWmpE98dqhA9lVYSI9YbujA3ZQ/PQln2HXle9XlbkNzFEq1CloK8TlJrNrgZNsBwRAamlvkhOEn+ptqGxAHWRF5INYP3sJPwO9uUzyDUTZA8LkqnjgPStizhS2mjZZEqEjOhotimLbSuhA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756265994; c=relaxed/simple;
	bh=8NomiB901WFLFk8OqabaezrCd3/4rpPFSqfjl6GM3jo=;
	h=To:Subject:From:Message-Id:Date; b=o3HGc0FbPgJ5+xZBmcGTGD2eoZYXX17EnKYe/BrJ0IpSMJYfUy5LJEtvO8tap46MYHx+JW3db8VWpP6famWnLLtYrc8jWCVsAsh9jourfg2OXDj/YTJ7d/DyT1XwvkIVMqzu6Y7LMvE87W2CNaMrY1STrbDfjkO2n0/CJCTwI+4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pIH6NmcN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pIH6NmcN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE8A4C4CEEB
	for <ddprobe@lists.linux.dev>; Wed, 27 Aug 2025 03:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756265993;
	bh=8NomiB901WFLFk8OqabaezrCd3/4rpPFSqfjl6GM3jo=;
	h=To:Subject:From:Date:From;
	b=pIH6NmcNiy8U/JY7iq5bpz5MagjIiNhALA2CU2AH3WEH+GBPbnWbEFnG1jpuU+8dk
	 XzN/u9CbvkfgfxSroae9+l3UkNmiT9BQUVOu8vUDAFPitzZs9ii/LMzj+MnOXwb5ey
	 V+3VdMGhyQ9mS/RBDPEUy7UNCp5dPtWjK+8ARQTMQnzYEdYKssELqeIvk65zmsdFKW
	 UlVWKgLYHyOKu38LWbclvCa1jXUMYpsG4R4iF0Db5v11X8iM89jSvW4XhEI0z80jcy
	 YiLLGmQQoUr+3k3Z7iFtllHQzXmNTOf0nFU8rsjX0b2vvMxpiH2iS4x6Ti+EfL4Lfc
	 Gmj3IQx2nganw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91ACBCA0EFF
	for <ddprobe@lists.linux.dev>; Wed, 27 Aug 2025 03:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175626599358.29875.6949871542813510210.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eab374e32f4520dd806ac7fc279bf3d9e19e5212a3f0a6d1e915de2843b72d24
Date: Wed, 27 Aug 2025 03:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756265993
