Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4074B398F99
	for <ddprobe@lists.linux.dev>; Thu,  4 Dec 2025 03:52:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764820374; cv=none; b=kUcn9CMM0kjRhD/CcUzA2TMgTr8fucWYHcuqvK3V23KRvwTO0f1/EO4wtn/dUJw/pttMtwT33jcHx/cHiAWopYNIgVr7f/n46qB6klhWkqC+zea3ZKNrQ/ETtW+7bTr3uBCZIROOJcEjEKPfnQcvEEJL5eySkGJv4bV4Kzp0pY0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764820374; c=relaxed/simple;
	bh=PnRbLRFgSnJ+2nu8W9MTsHMLusL3GXvwMKEAMfuC+2U=;
	h=To:Subject:From:Message-Id:Date; b=gbO3gHv0VzCf4QjRu1AuGEK4/EVBGWMrvkp7ESPrRyabBitMkurAUd7lCfTuQFUSNiUKrToku4qUuyE25f0m0qat7/8XISlfzYBB3bLp5cwajIA/1Ig1nT+2rxSkdFZTnJrVPJyPNY43gWlw017kPtCZ9WFwN2IhCu2xJ9op+jE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uxHcdhOF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uxHcdhOF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2287C116B1
	for <ddprobe@lists.linux.dev>; Thu,  4 Dec 2025 03:52:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764820373;
	bh=PnRbLRFgSnJ+2nu8W9MTsHMLusL3GXvwMKEAMfuC+2U=;
	h=To:Subject:From:Date:From;
	b=uxHcdhOF3AvWn0nNj7bQ6g/a02FXxs4QAhJ60hWPQ3KdW7pAHGf07fNAa2D3onrnF
	 V5LCrrDw3CoLeb3MdLouKiauW3KiOF9IAQeKCzjvE2MHWE2M45SvRQhuaEo85xoEpo
	 v/vkWsH9UqW+g9YGqq2SMG+DxKu4sRE/yy9I7vrJgcKkgN3lcbM+rifxC422AhjPY6
	 d2NwmGCAZkYrYJGNRIrsA4duakBFGKlBnHoWfaUMiQu+Gx8U35/bWrGBGV+oPv5c6P
	 EBcIuFN4VdtjRDZHUMKhQQb1an7XHqKtyKrcudVO3zkHhIjQWNOzQ5TW3BLjqvgqaZ
	 36tY78UEO5eDQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9DF34D12693
	for <ddprobe@lists.linux.dev>; Thu,  4 Dec 2025 03:52:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176482037359.28057.2529120341868877721.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4b3ba1c5e31ed50a14d1cd63894d450c1019c37937a06d1a42bdc0a78ed92a37
Date: Thu, 04 Dec 2025 03:52:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764820373
