Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A94FF4ED
	for <ddprobe@lists.linux.dev>; Wed, 11 Sep 2024 06:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726037154; cv=none; b=W6Kp3/hAsA7zETgl3Hh0ORVT90U9Zy/Uawhzdgrc06N6qWEUsr4v/MgYwl8/bVBaxO0fdO8YzE51K2/VODM++/KkW5IYlIzJTALvG34CRc2NE0/R56FxuoPxCh5Bnc+xbgKI7WqpEQeJmD8l9aqqcT+zt4UXf5ZZLONkIc3xtac=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726037154; c=relaxed/simple;
	bh=EQH+/S4ptmywmB4Zw5bz94N0VpMRfW8AdWbh09RvpPo=;
	h=To:Subject:From:Message-Id:Date; b=sbLUZgjhrA0YS7kOXsmSDXh0b9E0xn6hzoFllrUWUz5MWyGXNMaC9mB+xrwildpw41XEtTGa6IdS83uJQyTdDt/N1v2+PA7JdW77/ExMMfDvekToCQgqKdUGXIYt0CT1rc2AacDSZ3bFFM7IlT6wQFAUu3eLuvxo/Mp+q1pnJPY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VeG5CqJE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VeG5CqJE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACF90C4CECD
	for <ddprobe@lists.linux.dev>; Wed, 11 Sep 2024 06:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726037153;
	bh=EQH+/S4ptmywmB4Zw5bz94N0VpMRfW8AdWbh09RvpPo=;
	h=To:Subject:From:Date:From;
	b=VeG5CqJEfkLNgBZKe+wGNnT33zPtfLSyCXSJz2RhkGIklqnR2HsMJLvW/sxVh7+uu
	 y/16o5eGYg8JgcEUeKJ9hfQxnh9N5WcI4oQGwKvE/gLrh91ASLT0Q7qXGKQSoaKRCe
	 TouWuJZXFozNuR1k7xL4HIGIji8vXA13j7lJuWnZ7EYs6a/I683gxVQIVc2c8m1Mol
	 yb7yTIHpoc2HTT8vb9wAA7C3Xm7BOQoDA1la8qnNNFguu2TTk0KKFEi1pP8EKQkifb
	 W5vT69bWIn+DUkIaF3IcV1GS/DuPW6hh+XHHEDxJTG18KLrpAbDxSE+4rep51MAepT
	 3z0jge68o6hKg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96906EE0212
	for <ddprobe@lists.linux.dev>; Wed, 11 Sep 2024 06:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172603715360.11081.7051853163808214647.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 87b0a98c588da2c7fbd7e90d3a06aa6ea53a0d64fe7722cf58cde1d16d53623e
Date: Wed, 11 Sep 2024 06:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726037153
