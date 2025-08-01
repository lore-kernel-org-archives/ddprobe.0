Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 210E62E3709
	for <ddprobe@lists.linux.dev>; Fri,  1 Aug 2025 07:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754032194; cv=none; b=CVlnRxgNwGQy66Es3CyBUjvfNsdV1KR0kxTF0SpbfcRJdkJh4G0MiuReakCa5v2gEXP+dzfCEXH24zqLzRFapR5BrOgqF11HanFPUqcvJuqjWO0hjMOO6mqRaSG7tKXRhVWIFvNYU6IKsruoFpqqtZOLNr99sCA8cj0bi43Nkb8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754032194; c=relaxed/simple;
	bh=42vKxaFM9yOTCQd96dcps/EmgQw3gesR+sqc/ysAkcY=;
	h=To:Subject:From:Message-Id:Date; b=khDMTY6f9HnMkO4nOjgVEYIjDZ9BOO1N5veLyVqlxQT+0vuWmP9A2S12rSA/DNONvJfg5VtRSWCoeMnK6IGNSuwe6jGBOc1FFch40byxW22OP4arhJM9CYd5KqeJ0yZBKg1kv3ROkHrCqtxOQO4Yioh4NvfwYpTFxYFSCcoCLAs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aneqsv8G; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aneqsv8G"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A13B8C4CEE7
	for <ddprobe@lists.linux.dev>; Fri,  1 Aug 2025 07:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754032193;
	bh=42vKxaFM9yOTCQd96dcps/EmgQw3gesR+sqc/ysAkcY=;
	h=To:Subject:From:Date:From;
	b=aneqsv8GuWETMtwzqLaxoFypmPyL5sd662+9rpYu6wqy+2M08JJ/YB7zYddZvRxpa
	 RlcUamxanl63HPsMn0qMvVJqUCEE0j2/T1p+vhuX3Pfuk9pysLz84+vlWCg/+Z/udJ
	 JP0k4gjxa3RoRT+r2GgsR7QEw9vcijUx+AB37vHBu8rZtRgmZwLZ6xx4oeLvHvUpgg
	 dgtESuvIZXn5m5jH1MboUel2vKoOUA26coIVIJFYGo8bE5uyD+po89NR9MEzjJWGm2
	 oAVEWxD0RDcbO0payk5vLOfwn3IRDX2NkvmgjeVz46Vz57xg2ZbRnp5r1kN//pMHn3
	 44I5aSDF+Y0nA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 900B7C87FD2
	for <ddprobe@lists.linux.dev>; Fri,  1 Aug 2025 07:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175403219358.459.14601145664088421770.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e3ed614ae1d74736df9d9014d0a93b46e0642a07bda1fbcfa7ccbb6b762bbf33
Date: Fri, 01 Aug 2025 07:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754032193
