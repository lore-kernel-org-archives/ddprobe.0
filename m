Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 521CA371D0A
	for <ddprobe@lists.linux.dev>; Sat, 18 Jul 2026 13:28:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784381314; cv=none; b=Eh2q5Eafs236rXMkH7N7zBVksQbZxl4N/T4tIxfIl11EynTwm3KpQ5fIMYy5Zthj6ZHcw77fWfLX4Td/vx+oBR0qQ7iRTJWK2+MG85GSPmRjt2DEC/D8whtmXz082nWOlNNNT1ZujVesKh10vcYdtK73LaSltmZhOgX3UGO1j9E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784381314; c=relaxed/simple;
	bh=hyxYN0TTQ03npKqGS5ZOxpfpLp6PZV4g09MvsDkY8N4=;
	h=To:Subject:From:Message-Id:Date; b=tamJA/BRq18h9AE4sy7Y03j0niWWMtuyMr41CAJMwrhQxWUhcdg9ETVUtmG+1WVTDs/EU4rY67uNy2EZyJsEpbHelA0m5FD2OTaIaT+Z3VxlKKvrpBLyoNCAiDWHWXgk+LrTa7rTk2GwvtbFIMu7+cuNvQjc2CoK8ZK8Efv0Lis=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Q2WX7ZjI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Q2WX7ZjI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D57A9C2BCB7
	for <ddprobe@lists.linux.dev>; Sat, 18 Jul 2026 13:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784381313;
	bh=hyxYN0TTQ03npKqGS5ZOxpfpLp6PZV4g09MvsDkY8N4=;
	h=To:Subject:From:Date:From;
	b=Q2WX7ZjI2s6zgkxaTkbSh/ozTSSo/O4bZIBdLflGcpoYkaasvIhGFTrLC8gjnV5xO
	 UTzOIaU2bsS8Sa532EQ8g0tOIdwdpfbvvtRYGpcNotHNCaVOVhdzmfQD5wm82rVQIT
	 JfAReMl124scWVIr4HW6T+ULmoMsiyym7Id5iiGd4cUqlLTsMJAn2C6vr6gyLl4d4B
	 87lqL2y77Z4uuLbVAJJOazsbStBCfK3IVoJslTpDdx6YlxCL+uRaCbkGM+G9HWWFoM
	 wbl/Z7mJNxjSsXbmn/CbYy2i35MotWN/As9tx8PTcl2MZ/uIEavnJcEmb2g+0PZnXm
	 4tutkA1RvqPcQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE158C4451B
	for <ddprobe@lists.linux.dev>; Sat, 18 Jul 2026 13:28:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178438131368.25289.643322378852495946.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f2747a604fa5d07ca9af470875659ce047e562a13379f762274c06c71b3bb070
Date: Sat, 18 Jul 2026 13:28:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784381313
