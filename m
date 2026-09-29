Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 471232DEA68
	for <ddprobe@lists.linux.dev>; Tue, 29 Sep 2026 05:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790661034; cv=none; b=rD4uMIwQ8ViL6S2OPzKA6KgHqS2yN3C37aC7olRRlAMcyWqc7W9NwWBaIBH46mwr+V/HfcCtcOmDjrckT2CJ0aZBtMXgZuJXlm5MKGxhpwiYmxyEb5BBHFysR2xFIccYH6mj1uFb57vg05O+HpoLaH/AojrYBhb9e/1aes0hXUo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790661034; c=relaxed/simple;
	bh=kVGfuKGB4HVjcakIuG9B9qNcMvaYRk7N7mPHc7VsDfw=;
	h=To:Subject:From:Message-Id:Date; b=UZ2TQv9oehdghjQjUAAgQ3nog/L7/+TUh8IuUoQrooPe+WQ4GFGNBwYB0gYXbuhk5xMB4QB8sUi7pYxecMFW/7A9+4xdzsdjADkQGdarp0yjRh8IsF/6Z/BuLMIPNO+YfnC1tkoavramFplVPjgijCyINoBphgcfSVnxp2m7aEA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BBAqyDhL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BBAqyDhL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CCA54C4AF12
	for <ddprobe@lists.linux.dev>; Tue, 29 Sep 2026 05:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790661033;
	bh=kVGfuKGB4HVjcakIuG9B9qNcMvaYRk7N7mPHc7VsDfw=;
	h=To:Subject:From:Date:From;
	b=BBAqyDhLJ0At9z8k8kWM5JdTfhOyUaciKZTsyOpoxDAcXaeMajw70MLPdhT/zfTOa
	 l1fmsPlXwH3jCFAbhlT0N8aLvlE5Xp8Aulduu6RcnF/yAWiESnq7aQI3ozcQJftdPR
	 GXZ2gK6hLBMHwj/VPRoOAeYG0Cmjtrs8NZoYAQKsvhRzkTRER018kaMy2h89gPC2IO
	 1rlNfXaJNPE3To9jIavBTHB8EZMpVJhbM6EtMwVuJfL2fJ2U8EqAD1GlU5+9q4pVVy
	 +CSNR4ePWSewi6lfobcYjg3kWw70jSO+REKql7O/rbzrgVEDyqyOfT+WLoaY2+qEAw
	 sp+5MYBiiS1aA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA0F7CA5FA1
	for <ddprobe@lists.linux.dev>; Tue, 29 Sep 2026 05:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179066103368.14334.18204267873727912680.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 67d2c97200e958c9a36a9625ca38715c7399c8f056033eda0f46e07d91a05b83
Date: Tue, 29 Sep 2026 05:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790661033
