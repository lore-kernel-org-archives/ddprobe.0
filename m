Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F87B3D75BE
	for <ddprobe@lists.linux.dev>; Sat,  5 Sep 2026 09:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788601834; cv=none; b=KuTXvCNUVoac4lTKYcw4U2fxPGZBWqdzooUwQggOk6n/c7vsI3WEWuJ6wfgmGIwT9WfQOmFzmtrep5tkGmZRsdZpnSM6995HJODpFEBJBSTSHuN1ZfVkhtZTfo4REj0GJmLzNt/msVLbtHrIkhTnPn4UW61AIE1iM6suxbxbdZU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788601834; c=relaxed/simple;
	bh=0bbf1kUs+9OwsV3MmFLiUqTw8P/zZ84V96OrR3S1rJM=;
	h=To:Subject:From:Message-Id:Date; b=jyTUjeX0R7YyZeifTbPedlpU93/mVxCDU1JDbtvsPUxiAEMHqbtjAibZ1e7HALXctAE3czM/InVpBr6g+Ro1e67OsSF6ESlibQd/QNHJQueZ482WY0GT1LXzWJ3fssubfeihT8veHoS93ggydxr5U8dOw7oFL30CK5DWe4cWAk8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tHNnFaKR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tHNnFaKR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3B84C2BCB3
	for <ddprobe@lists.linux.dev>; Sat,  5 Sep 2026 09:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788601833;
	bh=0bbf1kUs+9OwsV3MmFLiUqTw8P/zZ84V96OrR3S1rJM=;
	h=To:Subject:From:Date:From;
	b=tHNnFaKRufJ3LX3rStZCBvsGyEkOw6RwESl4qnO+oS9pKoy8K7MmRXWuSg71KEKkN
	 2ZQeAlR19Kuu42aDMGUzE6O4BiN0DnHtkIQ4izRut6mHiRdFtf6xXQ8Gxw/EXmiGCZ
	 bQSeBSJaUJyhIo+EBhJchz/SYKCh5PdrzfNnnrAmThvuOBoTEIH9xavi+8/dORPoJH
	 uGAc4gldj+yON8DSVircascFH7NClL47qKfKvA42h4L2hbOoRU0CFmn9/KFmw/KHqD
	 izek8JUzBG+83YzpPpKl5U1vPllqd4+Ir4ErtlSK0Uy8wrIoaU+SB+PVnX5Tgvj1Gw
	 ru0Tam717QL9g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1322C624DB
	for <ddprobe@lists.linux.dev>; Sat,  5 Sep 2026 09:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178860183369.3204.5880757438967912702.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 763e8ef6c0c60ab2592ae557406e4d0a921f26736a8f30cb134195db4dd27c83
Date: Sat, 05 Sep 2026 09:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788601833
