Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DEEB2BE622
	for <ddprobe@lists.linux.dev>; Fri, 28 Nov 2025 03:12:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764299574; cv=none; b=o4Q8CQ1SqKgCu+8QXGgrT6wuis2gqwmkW0pR2OfS6O36lRr5tlMqn9s6WJsuu4lqO34KqFMaH/tI4P0yZZFyRWMZbl8opa2JFpWKYgg3ImOQO2m/p4eAhkBm4rhLKwPS4mex2EkIf7d8PaOlwWZu7T1S567LtKEWQdCptNrCsEs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764299574; c=relaxed/simple;
	bh=j6Ac/417ljmJ2x4sWzwnxvEmmtnrVa/cNKqz7vK5ib0=;
	h=To:Subject:From:Message-Id:Date; b=ND+113EkySW2QtTdn8MoWeyXFOpRiIHpM2XipK6p9OTNJ4XZN3aL6DwC9PP4c3eeeQdl3iDkns8BTPwhJwUOUA8kdE6f5w5FvBKpraeiJZI6ZPNCDatIQbZih7AcT8qcG+UALs/a3cTFEWC/fpDXAbdCGZV5qO6YWND8QiW0OVU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GzuOXDo5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GzuOXDo5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A52ADC116C6
	for <ddprobe@lists.linux.dev>; Fri, 28 Nov 2025 03:12:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764299573;
	bh=j6Ac/417ljmJ2x4sWzwnxvEmmtnrVa/cNKqz7vK5ib0=;
	h=To:Subject:From:Date:From;
	b=GzuOXDo5AHLGPBUk1mfP21HCa6mn0/LGhyP7Qz+gkglpNApx9uZOrKaGRMMBAgPhZ
	 nuzuK1M9EQHwuVPho+Rn6qlO19cyFJnSjOuMJc+0Y6CmATwykWZBJXx532/0/txmRo
	 dGkeKxkE2ym43RtlZMJBHkzMvW4WMIIrpaMtELb8ne33cEuNRvZYNfnX+cJMviKqqj
	 nhPjWrL5PtxA1Qkwf5rFwOSFq0QQ8raf3f3l45p9NJg0n/jz4q2ABc64nm2btpv+kG
	 n4fseZ/HjMapmtIENsl2hHWrFq3LqQFwffsKQjldmySPs6turC97CjWplDepaVj4bv
	 8IwsugBXZeomg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92C14D111A8
	for <ddprobe@lists.linux.dev>; Fri, 28 Nov 2025 03:12:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176429957359.12435.1537188243338131573.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6aa1428b1ee23d71d3ad65f49959759fb4f27e318270bb6d09d187269455122d
Date: Fri, 28 Nov 2025 03:12:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764299573
