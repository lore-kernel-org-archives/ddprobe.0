Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45E15136E2D
	for <ddprobe@lists.linux.dev>; Sun, 14 Apr 2024 21:19:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713129563; cv=none; b=hijYA2LiTEyxiFsK6xqDZgT5u3eV//RO+0B2S8ESalobX3lf05WUNxzPyC0zOfgTP42yvlD9Xg+aExpQZTC0s2p/YjzBbQmR2AYBNYPa7UMvjgmVGpBt4sHB9KsFVvQ6NOwHTb3rGBEtqY52a6onBmBfMq4bvEZK1qgsCoBfb0E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713129563; c=relaxed/simple;
	bh=C5O3wXo0AXHuQkWKKlewZgyZv5vepOkl/4umZPxmwF4=;
	h=To:Subject:From:Message-Id:Date; b=YbVZKtQa0OFDLPnFcrS8qWUkGTqkWF2vS84BHeZxfsK3rM/KP/f8V9YmCplFioQlglmCnNuOi9wU20zEPlLB3CLYbiOrvnxjHbtunPwSCgJlfRzzFPkCP6Uwm7dNX4aJNU6LThKMtkbTT7HJGIB6Qlj90Yui40n3toR+hopSJiw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ag7Efwa4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ag7Efwa4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6F97C072AA
	for <ddprobe@lists.linux.dev>; Sun, 14 Apr 2024 21:19:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713129562;
	bh=C5O3wXo0AXHuQkWKKlewZgyZv5vepOkl/4umZPxmwF4=;
	h=To:Subject:From:Date:From;
	b=Ag7Efwa4nDj8/moZu++d0K395n5k/fp6SfWo5LWF8oELTepsODR04j1q08oZDAumV
	 p4BPJgtqhR2dzP8mdsDniKjVl6RXvpmIqkjq6irv3l4QmvSox8UtR4PotLtsp2Wity
	 Xe3UeuHKnp7UkzhHJW9+ztRV12IusOKful64DgWn15FsgsWACDA5857NZviQ0ImVtB
	 YteqFekovGAVrmWQ4xPUKg6MVPx5A/s4xthQmBrVNiBVBszZ7T4dofVTzVx58mYDrn
	 RKSVgsXGfc13y5xFwJf/CoBgz9gRCA1SJ431AXHxTVd/iRpgCbibSLVLXhYajPQU8b
	 cT5Z4rNok3NoA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C4F5DC4345F
	for <ddprobe@lists.linux.dev>; Sun, 14 Apr 2024 21:19:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171312956277.21572.16626004539399808493.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a4d440902981284203f8b43fc091c2651dcb6df2d00cb45499ba7e2260d70599
Date: Sun, 14 Apr 2024 21:19:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713129562
