Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3DEAA226CFE
	for <ddprobe@lists.linux.dev>; Sun,  7 Jun 2026 08:34:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780821274; cv=none; b=QxqlAVRSpmoetTTVqUewAI1DYMI9/fB+DY6DlokGAobkB8awYroHjHkzoHFEckgrD5eDMQC/Be5rWiGlPV6+b8BiPVDRqRQhh9w8ZXBirq9KHz3HvnSx4c7cvvFfR5xeRRhK2dPlqoCze/HHGjx7yrzPIeCc2QVtK6OuJPFwfFs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780821274; c=relaxed/simple;
	bh=re+m0khhBapcsZu5zfagXosBXCHsj94lAR57+ZCV/Dk=;
	h=To:Subject:From:Message-Id:Date; b=R4aw3wLmCmM6257ZfzR/459Q3ndhSgnpA2u4FfjIGJr5n6KnmtdL+yC5JXGk7pRw6rK5a5f75uC0SmMCGCUAIKhyTBa9oRlsYSIgRILWWH1Z0ETTsiK71ujjA9Cwv0AegE9zxUTi+tytbCPyisHEK2aib3rM5/o8dZOEqqDzmug=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dqOL2y5v; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dqOL2y5v"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD932C2BCB4
	for <ddprobe@lists.linux.dev>; Sun,  7 Jun 2026 08:34:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780821273;
	bh=re+m0khhBapcsZu5zfagXosBXCHsj94lAR57+ZCV/Dk=;
	h=To:Subject:From:Date:From;
	b=dqOL2y5vU7ljZnUl0Zh/TbC6OOS4H/gTYoQ+2kVL4ul/G8WLMsUJ9hGz0SywppvKk
	 c7543MFJysjdDMols5r0fvV42X3WZJMyrXUfU/5OHfgtCAU1nJ6CgocGyb/3dfW/9E
	 g/tPzciN7lULsC6wDvekrUXE/o3ybZZn3tu0rXrA9/Uor7nNNUtYzpYGdNss829G1i
	 epxF/2wRORMVlbTUPwS0exjOXvhZk8a5/rcjQ4NUpEKbhZJYsjp+h0aZZG6+xgIk4r
	 7IOqFaPkvOlox9qgRhjmMJEFpLCO7gKD6MT8o80v+9kp/FAF5ZbsLxI4TpYQN3urYs
	 McBVl0jciWSrw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD864CD8C8C
	for <ddprobe@lists.linux.dev>; Sun,  7 Jun 2026 08:34:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178082127369.9761.9075570419664915914.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c7c7a18f72109735cd9c580d7d5358ae61cad8ade415533b4b5fce36f77e60cc
Date: Sun, 07 Jun 2026 08:34:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780821273
