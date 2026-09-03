Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C315B4AEBD9
	for <ddprobe@lists.linux.dev>; Thu,  3 Sep 2026 13:30:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788442235; cv=none; b=GsC71xqiTnqgALhFMtqHkNmCKnQ1IU2V0LGjJuhc94J/Gxo3VzDxFEyf+aKSoIxe56It5OZthqDy3VcDnwhR+HHIfjhjm70gHgmhl2D+PlNPp3Hkd6i9G8n0UceOHs/k3XZOkxA9VKyG1wXOb5BjeDPUDl/Xcct3Gz2bjOCuRLc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788442235; c=relaxed/simple;
	bh=4GNI0absArk+nquFQbgBS6bo8jewS1AZAO7/eCcEAUY=;
	h=To:Subject:From:Message-Id:Date; b=YXlFMncwZeotYFyx+EpIWXcjywsiN2baqYgB2q/LvNUyM4dqTa+avtqyMp9zPMG9oP3XoLnp5Z/HzmypM0tcaeuGwAkxCiUdUCzy4To6cVa85gl5eNw4Khqo7hs71aMzN8AC0VQM7mRBsBCg3SOkYYcoqoYdUbyoNdceL1823gE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tpyrvxIa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tpyrvxIa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CFB0EC2BCF5
	for <ddprobe@lists.linux.dev>; Thu,  3 Sep 2026 13:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788442233;
	bh=4GNI0absArk+nquFQbgBS6bo8jewS1AZAO7/eCcEAUY=;
	h=To:Subject:From:Date:From;
	b=tpyrvxIa43izuuP/IMZQGxa2vRrUrEwLxIgWkw3jOl/XvomA06l2vMi3k4HA/pQNb
	 V8i6m1PJThQt6lc8BraTIzyZSnvGorjUNzXPkh2ysfLnKjlwSJdviw4uB+WnU/BRWA
	 MeYpGt7UngzLnN0t3IOx2edM5jOz64NCMkHFJK2RS22B87G4XYWXJXWpASL9dh1E7v
	 PYIj1Xh4+yXpogSn5tA0ngbAolwTi2L2m1xQkqY9vz3ZMTTTyzFBWShY4Tl8AtphCp
	 EZ1w/H2GVCTJjKoz8rZ5/0oBvUMYezqwwbvVCp5uHhD/TVu7yh/qrpymxRI8K0Yqns
	 4zW2Twnn1k6ew==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC488C624A4
	for <ddprobe@lists.linux.dev>; Thu,  3 Sep 2026 13:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178844223369.5762.363086074978598792.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f21132818bfcaf24aa2ca509c487d91e6503dfd43f36fb2c41f9224df9952b21
Date: Thu, 03 Sep 2026 13:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788442233
