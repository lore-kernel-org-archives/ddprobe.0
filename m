Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2358B2222CC
	for <ddprobe@lists.linux.dev>; Tue, 27 Jan 2026 02:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769480034; cv=none; b=ujKsxZ2JBi2NHTolF0dF8OPWfgX92a/MGxx0Ed1xHTyeA68IuLVcgO1LA+o8C/EpF4xkz0Zes5YkAuSb5zOGZZAeUPiZbJTOej9PgnxdQ1NTVU6+kfDBWkkgBOpPd7qEFHEGJZX11Tkzt7KPRj5w1SFjDk3Te24en7Ssdyps7gk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769480034; c=relaxed/simple;
	bh=YEPTTXQ7wGrazbhAHIUlXSBQBnXy03gBkcHzkepY3cY=;
	h=To:Subject:From:Message-Id:Date; b=DmO8x7BE6/BK0nCCIzotiPUYs0+m8I3Z+sGjm13heon++atzcs8Gk4lZVmr43eNd+8o235PTB6LE3DOPeFoiP59t9b7VvjybTMus0lRhzo0lhoJ2FjvWda+dpntKRdgjmwjtAUNziDZVdJtma8af890FECJuS8OdDnlKkrGJSR8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PHZOn5yO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PHZOn5yO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A441FC19425
	for <ddprobe@lists.linux.dev>; Tue, 27 Jan 2026 02:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769480033;
	bh=YEPTTXQ7wGrazbhAHIUlXSBQBnXy03gBkcHzkepY3cY=;
	h=To:Subject:From:Date:From;
	b=PHZOn5yOoYmrdc50krrPr+lyITwLsZM0d3RPYVjcV8d1xdoRa8Do0dCKMSUX1vIwr
	 3qUQNi62TZgsJQ+OqD6N5qE2C+NncZAh4a0n5hvW4gGg/BhpJYOXpUDrYnD7Et+/Wh
	 ILcWUr5+t+kVOI3a8hjJIbWtXwuXe3ZVcbH/7Tb0TfFK3kMbj5frIo2JuIpDYSLuMu
	 xH5F+F0l+7KxXgvmdGxpQb7ftkElV/cgUZ06L50c+BwhOOIxrfnQoxZoKUFoPATxv7
	 P78GPUVWioXqtiAweCHX6/Hbph8Uybz3tO/a8OJAJB9ucwGPNyIYZDM/In/gwQT4hc
	 c7UvtZYZIEhog==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93187D19511
	for <ddprobe@lists.linux.dev>; Tue, 27 Jan 2026 02:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176948003358.29849.778600732854916983.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3abc8be21b07be5e544eb77dbcc7d34c1c1d23e29945b7985684bb72d8320534
Date: Tue, 27 Jan 2026 02:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769480033
