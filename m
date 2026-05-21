Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43DD022A817
	for <ddprobe@lists.linux.dev>; Thu, 21 May 2026 23:12:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779405154; cv=none; b=LOLCjRBlaCPkI+BxQJfTC/XjHpUmrS4dE+jwuDpq7X97+eB9tdKtLN015IRwBxJDqDEh/h79L5AHboWJSXtHsG0vuYhvgSOPrTr8hN8kI0DEv+Q1BiduGBC2ECyCd9w1iJsGiGDRz5Hv3wu0j3FfoukNLUXlaQFIS3IUcYk/5xg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779405154; c=relaxed/simple;
	bh=JqoIHC/3mJSbRu4euO/DPfvVgjyvo9NqxScMTWRUxuA=;
	h=To:Subject:From:Message-Id:Date; b=slFavOaBl1N5z2t258oTrmSm9vX8kIJnFDMYkzfYj3y5HmGwctFOH/gNSKV29ZeBEDCZ/VVKuD9yse7TTcVr4+g6n6JAWqEL1j3jYrVjqTyFz5XdUk80dwT+aiahRQArSTIJN0jsptczMM21K3RiZ7dRFk0/5B77I5kC5GYXCQU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TU+qoSXY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TU+qoSXY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CDCFDC2BCB4
	for <ddprobe@lists.linux.dev>; Thu, 21 May 2026 23:12:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779405153;
	bh=JqoIHC/3mJSbRu4euO/DPfvVgjyvo9NqxScMTWRUxuA=;
	h=To:Subject:From:Date:From;
	b=TU+qoSXYc2Kv9fNk4uz0+OEANvCjcCgpZoio8Kak77xu6rYTp5Ned0kuY30rorJ4z
	 +MIGnNF5dtwaMYV2rH4aJbqgthI0jHqR7qqso2dDS21YBHIptmdSZdhkfAxLWvnKHM
	 1DR7jq6jHdl2wqKBb/KqmgWQrBnk/JmzvUanAaHfs8kYfwSB+0eEi3vUkRM7YNnfMk
	 W812c5f2w2bT1Rze6i8bbYIqYXZNACP8fPlict7A102+Qc38dqEDLZChh5huyuVHye
	 i3W01dfpPgg973hErgQJJFaID83r1cPddBX+w0M8FcwoG8WxRhls3sMIdlU3e1bZnG
	 unLgWBno3vPww==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC896CD5BAF
	for <ddprobe@lists.linux.dev>; Thu, 21 May 2026 23:12:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177940515367.1343.15712212235562623080.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: be239ce0164a7435283cbfbeaff00241ad4cf2625dd334538e4111f612e7d4f1
Date: Thu, 21 May 2026 23:12:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779405153
