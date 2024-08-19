Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 49C2B1870
	for <ddprobe@lists.linux.dev>; Mon, 19 Aug 2024 04:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724043354; cv=none; b=offfN3dQW9VHJe8sluus2Ppag6D3mG3RanD0pjhti5lLYEIvNeIfCLbiM/jQNRe98wBmC7SEmjzJvakK4o6OnHSzyt5QvHlJrjEH1op+fEvW6eVVHwgUOH6zzSEUOKk9tWyefZuYrYX8HmKWWXuOZFoZjQeEU4rDuvQsurmJhu8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724043354; c=relaxed/simple;
	bh=GUWWl3Gu2FnPk72kCfptu7wXV6+OOb1z7oNRVB9Tvk8=;
	h=To:Subject:From:Message-Id:Date; b=rMM0rvogY4041usphuYkJ5xOA+b0tz/b6AKogObK9YCu2cfyXFiXyP7FvFzxLRcSkM55cd9vLLQf0d/skxjDADiTxGVFaLcoSM/VqAjEVL4twgCMAP2wVKLqep560AI0QXZ0o8Bm+z2RMsDr3lmu2DH9XCrIBBt9gkFVGhiIDxE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eyYmSpVK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eyYmSpVK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BE240C32782
	for <ddprobe@lists.linux.dev>; Mon, 19 Aug 2024 04:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724043353;
	bh=GUWWl3Gu2FnPk72kCfptu7wXV6+OOb1z7oNRVB9Tvk8=;
	h=To:Subject:From:Date:From;
	b=eyYmSpVKTy1e60iei543y/qIOqRggm8Oov4yyksgVZapy+ca/uktJ2uG1rsVHkr3M
	 egCTUWZSxoB4Ozr5VH525/fKfoK1XKZKfAgxITce90T6/Iwiv3RU/ufLwo28QMeXj2
	 UCUcUxq2WH/lDkQtAQc3IPxYcmkdgjGnuOyuO9mbBr6jsNY3/IvUoKl+PAHNweAA7F
	 +bwZ4QxkVkNwpNWljeHJQj18KJtRnKL+EhLBbc6+cpiP5bGqG9X0wccoll2IEZPaN1
	 Sgr1QtazX3SKEywk0e8GWAVBI2yz9FPbr36aKjJYqFLdqmTLypEiSS/7ceTBl3VIXa
	 1q+BGop3KCT9w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA237C3DA4A
	for <ddprobe@lists.linux.dev>; Mon, 19 Aug 2024 04:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172404335367.30630.16526690269968602337.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ce7b01bfa2919356256e8ddb499568e677a7caf73146785fe4de238e05933d36
Date: Mon, 19 Aug 2024 04:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724043353
