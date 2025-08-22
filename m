Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F6D4393DC4
	for <ddprobe@lists.linux.dev>; Fri, 22 Aug 2025 11:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755863394; cv=none; b=SJdqLkmuh+Xrkow4s6QZZCOcGLtWaVje7rP2/nvcsX/w5/k5d1KGpc4N1+LTZA/Uoj07tZkoY9LZxinmBcxMEi8dbeKy3nTNg9SK5K/GMa73KTtCvVhJIgGbsWayKuzDXPfhzwX+irb1ppvyTVE4muyt0rRp4ngXTk62Ju1zkJM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755863394; c=relaxed/simple;
	bh=3BKNo8PuDy/+GoUBxOXDLR1DSvTfEKFsmIu/46p58mo=;
	h=To:Subject:From:Message-Id:Date; b=WUf3nZj6+ARtTXrVSVV+t0yw9pz2Lmefmvc/4oO1mP7HW11de8Yy3d4QJSV6qA2+yeI8NswNV5zDuxsVBGs8XFGt+Gkj+hwmTfVlYu+dwCrzX2TyoQqV8toGON3teoP1g0O1SO660io8WAvlA8c3MI+KrkIoALQ6luzmmrjcoT4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XHn7ofsH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XHn7ofsH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FF62C4CEED
	for <ddprobe@lists.linux.dev>; Fri, 22 Aug 2025 11:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755863393;
	bh=3BKNo8PuDy/+GoUBxOXDLR1DSvTfEKFsmIu/46p58mo=;
	h=To:Subject:From:Date:From;
	b=XHn7ofsHHY1PfthfngeraMsB0E33ZLlnK55/Ev/rArQEN0Si0tI8EJuv4H4GUhCfV
	 jaG6I9OFwdU3aJXNA0gFHYhrVviszsTthqzox7k0XsmKcjZkXA59PxIYDq97wiAmyj
	 z5xPUQtkga0eskE8zWF4JoG4tx7gCx1GwFJTqD7enbOopuF9WnkL+fLsVgoKIporb+
	 ynqg1qoKPXlrIhoLXChyKMTAaSNzlMfAmxqSAfU76S/nIfH8QKQHgdi+r4YLD2AncR
	 bHmfWXfLytZzEqupzOBhxIaoNyoB+cw4JaCflBXuk+/KjK0nuLyhphYVmFr6VxQg60
	 IOWEthOX2LPOQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90229CA0EFC
	for <ddprobe@lists.linux.dev>; Fri, 22 Aug 2025 11:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175586339357.10483.14208920424741202047.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 72c9b8551a461323b5c8de9fc82016538fecd6422581178fc8582077c7495ae8
Date: Fri, 22 Aug 2025 11:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755863393
