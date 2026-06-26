Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 528B53AE71E
	for <ddprobe@lists.linux.dev>; Fri, 26 Jun 2026 18:08:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782497314; cv=none; b=l9p9kALEoaGyY2FNIDrvPDzbhKns22ve3omKefe2UVf61eO3hZYtT7TtJPLXY46vxVtUJdZHV5TIsRRCCGwdnwEZe9kh3OApSj8EGtkBMSpmjowYZvZDlJNpuaMMDhdAO2AW6toO3REewQDbLNKPjKgrf5EV16Ag+sHp9IeinRc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782497314; c=relaxed/simple;
	bh=T6m1jmtEETPWQDJeFIqiVk+jv3NmSylI45RPyWSv7e0=;
	h=To:Subject:From:Message-Id:Date; b=VpyV+g9eiyTsDXAUMe+G7FO73mlxR32H4TaQotivYtnkZVPz4QTWrbI1WI8qTQ19Gd47NsmFPYV9yVY8PFpogfEXswLkWluF/HJW2uO+X0p1yiHEeMNcPq0KowcdGeM/rE/xj8wiTmTa+W6pVVQGqNVr17Os188jFKtv1yCMMcs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kcj0GJ7p; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kcj0GJ7p"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DFF95C19425
	for <ddprobe@lists.linux.dev>; Fri, 26 Jun 2026 18:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782497313;
	bh=T6m1jmtEETPWQDJeFIqiVk+jv3NmSylI45RPyWSv7e0=;
	h=To:Subject:From:Date:From;
	b=kcj0GJ7ptjXSZAwH04Tr76QIhDtE8N5w9sW8uaJNJZNQpVY9I869VpYvukGa3pT0S
	 lyMFkJc5eHDHoYWnrACeo5ceAr/2qnwPEU2v5GjI80WMLLPc1qZnJGDkvE2CBi8r0T
	 51ZSH8ZaDZkgWYOQW22jAw9xWMIkE+MIEw1C12NvAA6JsC8NLXO3iUXy8oVgWN9VsR
	 R9rdwm4NqOr7AkGnSDZtyDdwGM8Tn+06RtfDDMDrihEBaV1CQJgowMSUew1x6DDhIb
	 9ib2N5h3jWH+GR3u2Ao+ts4bFijAZ1baT2Ai10NjI7gsOjnKhUnn+ti5NBVO9KDlVk
	 RjwtQLqlMdfDQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BDEF7C43458
	for <ddprobe@lists.linux.dev>; Fri, 26 Jun 2026 18:08:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178249731374.31153.4722980111476874786.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3c58a310d549f718907dd519c7eed6401d112a703a373fe8b5a8e2b9be1492e3
Date: Fri, 26 Jun 2026 18:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782497313
