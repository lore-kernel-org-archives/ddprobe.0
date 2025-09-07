Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 240C9F4FA
	for <ddprobe@lists.linux.dev>; Sun,  7 Sep 2025 02:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757210994; cv=none; b=cxdIVKVR4Ps5zVOjP/uaIe2xmKYPlRiuax6V8NQUzocSF/Xo4l6w86Q7wejG8pA5ViAznxUltBU9LAXYHA92VCXI1maEZHFgLqiyNMr7CDO8xK3kE2uTQmBytCxLZSXk21mW6M7pfsGELrAZ2RRi4nBLGgwxGZ2RFTtz+9aK78Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757210994; c=relaxed/simple;
	bh=QqJRjUkAsFGM3g73a0+/m6FwyMELl9bSjkVrowNUa3g=;
	h=To:Subject:From:Message-Id:Date; b=XUqBlfjYcFk5bMFx6fBRECiFRKqzYX4NU5dj326GWvWc98lFR3mYODppPjwgjDsjq0EpvjEwanOFpIipm7MbaIrNIuA8f5U3wUcK9+FIJqhMVs4X57aY/nrmLHceUDjvjSQrZ+e53SHdH8CcHrZJslzk/dKaALC7h0Gk42asj8k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=J6BtYmBI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="J6BtYmBI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9BA98C4CEE7
	for <ddprobe@lists.linux.dev>; Sun,  7 Sep 2025 02:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757210993;
	bh=QqJRjUkAsFGM3g73a0+/m6FwyMELl9bSjkVrowNUa3g=;
	h=To:Subject:From:Date:From;
	b=J6BtYmBI8bfkX74l5I2ONClGES/eH87lq0NhMQMCObqi6oiEVd6fqPRUrq7SyTLle
	 JKUL/6f69OMgIze9FhIy8O+ixOiLWVF4wZsXaq69Lw2qOS5IWkhJqAHSmQICXEIiR9
	 jZ056oyWhLOrHQR07YrlRL49CZXGLcdThLVEzhbMBOZ85OEkE/SGwJt4aiknc7HUYe
	 PZUeD3OifdfHuWyxyswogiG/2pKPVDLv39kLf823z+tiK3TgrggY3QmjbOJzFD/kqI
	 5ckl8jYJOfUR4j0AdoJbLVsZAJJnXqTA558z0eQf77zshlJJJL2RILQ0Z1I+WDwFse
	 1EvPtiCA0hNUA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F2E8CA0FED
	for <ddprobe@lists.linux.dev>; Sun,  7 Sep 2025 02:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175721099357.24991.5213678388898281617.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6b1221f154652839f7dc3cfca20cb1931700d6a941bbb12cd43cec4947c01842
Date: Sun, 07 Sep 2025 02:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757210993
