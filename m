Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 65ADE14AD3F
	for <ddprobe@lists.linux.dev>; Sat,  8 Mar 2025 15:48:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741448935; cv=none; b=GnHb4HYIjf42NyOiXovG+foZ1C6O8N6A8fzSYcbuzPUxFoD1zaHIZJvPpU+plq1rVwB73NuEjWILgFjpuUaMaBRRXpsNeSO8TGWe52zLmQ3je0thHzvKUS8oewvpxDNO+C/jJLCS9NN2C9pXXOO4Xwkb2ep0aabyiz8wKMkl8zE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741448935; c=relaxed/simple;
	bh=HfImCrfcHcBaNi6cVbIAlSrvHq62d2yznUhmQKYNbl4=;
	h=To:Subject:From:Message-Id:Date; b=iEQ0AVKT0WzWmWkWN+3M/aNTvLS0O6+hSv3GPzkKCfd98YCyMlUNnqufz8YRbovPf3inzGlnNA5ipE4eI8oyEY+5io0AXLE8vRcQvXKrpxKeuSOTXNESyfTKJjTnbb15uLY0knxjSXgiaEyjR5HlH1B2BCrpENU3d6jG94wTzUU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=r4rBol0R; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="r4rBol0R"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C78E9C4CEE0
	for <ddprobe@lists.linux.dev>; Sat,  8 Mar 2025 15:48:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741448933;
	bh=HfImCrfcHcBaNi6cVbIAlSrvHq62d2yznUhmQKYNbl4=;
	h=To:Subject:From:Date:From;
	b=r4rBol0RHspfD2c+bCFQRwnFtcvdTeIdRGqriiWRrT0S8zKTtUYxp2kqm6JtuEo5k
	 aYsL2dV/RPsgXRELO0YHs+miOn22k3Tt8br9GS052zDF30oSl6GRTv/Dv8I2Q6ytJH
	 RGQfnPZifKQUlrBM93LuLqHH5zE9sSkDdQ0e3OxPEn5Nhm1vIMixzcAOkTep9fMP2R
	 i9OnDDklaDzQ7kWfgxRYg8S8xj3YuuKNywQiF8RMbcYp5JPWRiJ4rgt+U4YUc6Y7Cf
	 hAxmf2mkX3PnDmbX8WCgQE7CzIpmx6pCjGuNG/X1RrKP63wAiN2pHSpBOlPSccslwZ
	 jR0+cNx6RADEw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACA0DC282EC
	for <ddprobe@lists.linux.dev>; Sat,  8 Mar 2025 15:48:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174144893366.5050.10431101907785606799.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4f6e74c5b3c161851c7439a8fc28eeac3b3c3edf4e0c939e61de5ed0be255ed5
Date: Sat, 08 Mar 2025 15:48:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741448933
