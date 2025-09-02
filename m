Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E1EC320A1C
	for <ddprobe@lists.linux.dev>; Tue,  2 Sep 2025 16:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756831194; cv=none; b=ZPSjPdIjnFNuZBHprNRu1UB0sAe9C1tjeSSAYWZBxPFVJDlW9aOpyeioj1v9R7AkPpoL4/xLCxNgUTciZI96FtPa0Tkyo8f1fE0vDiItV2nUJrFEHek7DtvckK3jKXjUZgMBVafoTuubbrF4CP+KPyXgI4VScbQO9ZxpEPqjlVM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756831194; c=relaxed/simple;
	bh=wNMWcT88sOs4PcbaEILKkC+aGONpOkL0NuQQ9g5WZko=;
	h=To:Subject:From:Message-Id:Date; b=qKU7cM6QFgg5KqVrUEFbxxjczb1HMwJic4Yr2j+Q0/bm5X4ZHFdUc+O2cHm3giQdvDvtUa0PBGGGrPVkYP+kCNInVnHF/XFWHxOkFTNJsrVcQCr8FilDTXvuLi4b34i/1C4TV7+rR6tcG+n31RGaEzQAlJF+SAV0Ezv/4VqMLCI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NI8TO0EZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NI8TO0EZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1396C4CEED
	for <ddprobe@lists.linux.dev>; Tue,  2 Sep 2025 16:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756831193;
	bh=wNMWcT88sOs4PcbaEILKkC+aGONpOkL0NuQQ9g5WZko=;
	h=To:Subject:From:Date:From;
	b=NI8TO0EZq/d6zoj7TMEpRipw83ruhKY72K6QVp0wxdsVSSogkVT/ay7OO6SwNKi0z
	 lqwPUw6Fn1ICSzlw1ERCvBlXj9MeO6Rpz+Wl3H+j4E3nn0t2yLxck/lpIAH+s+ioMP
	 bGpePGTrc7xrpD/ZFixg67WO6iJ2+BjKaEH0kRWVbCplJusM3gsyRACZ9dveX21OCA
	 D+Y7WJj1oHmv2z3GaATXMyajI0WqNsvS5o0ZH8/rqoHJTCD4LwxaWHMMIroXjocSs5
	 AF80MvukgrA+1wmehXOH7n8CljjrZVAkcTa2lob6yBBdyrNwLCY6vf0kYcNFYZUVOS
	 pL/MokKnHb17g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F731CA1005
	for <ddprobe@lists.linux.dev>; Tue,  2 Sep 2025 16:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175683119358.2630.1268234615330034578.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f3df0b44ff594aa11dfb0f78acd30f253b74b99ef4612f51cff2b551e0428d32
Date: Tue, 02 Sep 2025 16:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756831193
