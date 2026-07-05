Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 61B4A304976
	for <ddprobe@lists.linux.dev>; Sun,  5 Jul 2026 20:48:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783284514; cv=none; b=ag751mgtk9lVCSQ7YOUuUiowKfh/h18VmhVRVFX8LkBrk1dHaGgectLignxvlFNROkD/fZDfr+EVH5xAyom5b9gtbN6V5C2320HMkB80vRpE0hEiD3Uwt7Zk8PCQMEdR8Oi8PlmB39zSR2pPVe9B1iscS2OZ2fZt+Eht1CbJZZo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783284514; c=relaxed/simple;
	bh=ABCoftw7dcFLtuIltdd+YM3MYyaXSh+s9pzCEG1JV7A=;
	h=To:Subject:From:Message-Id:Date; b=TQah9PStspB9/c5GGqRZ5q8tOkKV5mK4WQ7xuJ/dYJ3mZv1KWOX4rh8Sl3kXXmnju1L/CKkS6PEQFJe7x53zYCqlSP9/tIm496DlrcewfdIkysVEoM1SGbsMQQi66DNrBK9aEtzRsXOPS0zGz9q9kk4St+0Nz9T4Gg6hOZwE8T0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gfZrTt7U; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gfZrTt7U"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D67CBC2BCB8
	for <ddprobe@lists.linux.dev>; Sun,  5 Jul 2026 20:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783284513;
	bh=ABCoftw7dcFLtuIltdd+YM3MYyaXSh+s9pzCEG1JV7A=;
	h=To:Subject:From:Date:From;
	b=gfZrTt7UfH1K7jgkLKs5ipvZVc+U4zgr4OSiCMK9yu+5Pn88P3hc0Og5JBxaRKWDE
	 ahZ6BTc4Wp69ekbYwcGSA6aiW/SqhqnuI5FPP/DYV6AYf7oAIauZbtTLi2mvLesMcO
	 MuIdn6eSODYvrtfc/79IQ6H1iqHe0YN6UBc3/5XFEKhsRKL15R0r3CPGEgNpGsvVD4
	 gj4xC5kJSInezwobO7+CYFNhuNNKv927iu+N8ghoPdvL9bh4TsrfDKF0t0e1VjgdaX
	 fA5xRds3EnG0eUhynJ5VsHvAO2U3cQO5eqiNLqbhOqGspmwL/ScUuU3ZnjEhnXs1mo
	 KLROFHteP8+7A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1561C43458
	for <ddprobe@lists.linux.dev>; Sun,  5 Jul 2026 20:48:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178328451371.19419.8962973252066578279.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e061eab03024cbd14c913bafa7ed974f51251ef76cba0937e5c618d8c17a8ef7
Date: Sun, 05 Jul 2026 20:48:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783284513
