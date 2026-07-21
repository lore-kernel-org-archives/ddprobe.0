Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E91032BF51
	for <ddprobe@lists.linux.dev>; Tue, 21 Jul 2026 13:08:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784639314; cv=none; b=QC/pHbESox98OAqiuWG34813YdVmfkAYh9zyH2vOyWR0Txg+ZQE/P6vCJN1SMVFUoCgX1nnWsnLabv6w+FOUaTTH1hrzPh/z94cGk/qxj74pjMYxvK+gAOdBZLfmPDzkWH45oFqvfrW5Bvwc6Ec0jLGsPRQsrt4kXtVXe4v7ScE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784639314; c=relaxed/simple;
	bh=qodckZN1oI20Igs5EkGL5PlrJHi9iIXnaj0kzdPvpvU=;
	h=To:Subject:From:Message-Id:Date; b=t2KT3uwwWOOyg9tXaDGTuTFd8cXUFrjNBK7dFecCrPOERBjhhmZegQrIo017bp19KEThUf+pWhvRYB2cxlbCx8f9rLhqIlhEf4HY388f4cOAZH+pu20r8huI3VwvJ4l7XczxG0hhXwVEdb637L2/Z6MnzEUWigX9YA55fhFwmmc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sgYgUxrx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sgYgUxrx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE932C2BCB8
	for <ddprobe@lists.linux.dev>; Tue, 21 Jul 2026 13:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784639313;
	bh=qodckZN1oI20Igs5EkGL5PlrJHi9iIXnaj0kzdPvpvU=;
	h=To:Subject:From:Date:From;
	b=sgYgUxrxoPR0UGpQs4y+R40nNNWRz971SJ5goetIiyBMOxFyOY3TrelKynr2rrwxz
	 C9VFxpO8OV0t0QkSyD9NkDy6Zbx5hxBAvso0FF/rnxRtEwTXd/LCHXSYyX1MpntWWO
	 X0KyCaxG60/80BYal/mcmIfwiyuSuOv6OVW0TjqSWpXjQMPXVgN7AftZbL1I0jp82c
	 +ATeXJsUCVDkYtKJuo/6vISbsCI/kMSWTML5/3wQKoBA1aSH4hIWqtGd5oM0EEE/Vu
	 rBJZhqi2oNd3aIf+weYNfmkt3IZoAPnLw2k3EAz9DlXA+71yxPUZz7Kk2CT1eqCl9j
	 Qbq0qgd+CX6Dw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB26CC4452F
	for <ddprobe@lists.linux.dev>; Tue, 21 Jul 2026 13:08:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178463931369.23362.3806401893453765819.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e0aa7eefb6dde9ad1dcd49b261dc75540f3d132bd9a7f029dc9f60ff968e89ae
Date: Tue, 21 Jul 2026 13:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784639313
