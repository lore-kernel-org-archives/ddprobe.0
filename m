Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EFD6E29B764
	for <ddprobe@lists.linux.dev>; Sat,  2 May 2026 08:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777711054; cv=none; b=cPKzSJ3cc6DO7twEnjlWS3DJ8AIyQNaLoA2N+sTEvY4GgIBTor6ZNA2TkrLAnEwNlOrVCt0FxG/F4rMnaKxi6Y+ZZtZ1x0rMljT6e/s2jB2KwD14VwgEX0ucNvEICOxmbesWcaXp75biaH1uN1dI7irbfNOGCW3untG14WbqaPo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777711054; c=relaxed/simple;
	bh=udFltaBf1S6fGH6w3VK1IngOcHz4mRNpCupa+5A2k3g=;
	h=To:Subject:From:Message-Id:Date; b=qvTiXl/DcBqk7W6XCUmgPWtuVQkyvOtWrbTq1K8gXji/vxbxoDcNYir5pPFcYr+DbGC59fDI8hdy0F8dxmA082QB9RjqgO1oyQNsYST3Caju6pCEvczkZZ3AP2ADUymITZoFU+ueMmKCIDEWlBbKYxNz7Qi5hGR2INsrUXAgBIM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=L2xvZ6OZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="L2xvZ6OZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0232C19425
	for <ddprobe@lists.linux.dev>; Sat,  2 May 2026 08:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777711053;
	bh=udFltaBf1S6fGH6w3VK1IngOcHz4mRNpCupa+5A2k3g=;
	h=To:Subject:From:Date:From;
	b=L2xvZ6OZDgHtFrHZVj4UQGyel5wNrkBhmfuuVUTLOIyvBo5a2u14fnrUlKzbrSFzx
	 DEcLJJwlDPXdq6HenWF7XGj2/MCSuo7+tghDWPusmS1vStH6r4z44T1qE6ArE05bvX
	 ufzZMV7aD8LQ2+bY7C/vkm7TA0ItA4wzC76jTNcn7KdOlBx47ek422Rw2516Z4Krm2
	 quNpxOE3xa2jaU9pV0rC1ANOiTFf++sJvWSs4EwW2lS8O+DdM3JemLoy0PzK6cpEAs
	 8cXSh94pd8p52zJYQywzuX08rYXrsMT29drV8tJ/6UsDowa2UeUPGc+ZjfF47fArhA
	 AHKDmkd4LXEzA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFBA2CD13DA
	for <ddprobe@lists.linux.dev>; Sat,  2 May 2026 08:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177771105368.12310.620523482205796963.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 38c36675f0e5fa260402063b4fa10e1e4ad7cc218029a1df1164f96fbbc53291
Date: Sat, 02 May 2026 08:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777711053
