Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C1E91D5CD4
	for <ddprobe@lists.linux.dev>; Thu,  1 Jan 2026 05:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767244434; cv=none; b=rlNVk84QVhd35ls1/tNLRUujmf3bs0Rp5Yj6grLIi5u0T4yG6nlRYSR7ilrB6WZVMGVuyjexoRmQTSmGLPHNHGofoGMncgHLuxmaN9gybvLwxpFIFAqguwFhf1ad/S/cPXgrvRyiocBlQJdENa7ZZ/Nb9QIQi1645y0QFmu22Dc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767244434; c=relaxed/simple;
	bh=JdmC5n5vamWt+Lcbya9HcSvUvnEOcwFuVxydBy8XRvM=;
	h=To:Subject:From:Message-Id:Date; b=IB5c/I0SUDN4DYzjWz7Xvglad+r3lYHdW0B+LzI/LMwyl4A+bXHvTi/O/4kuYAsr4KTr2jWUywfSdb+GiwONv/1qYuSGXJFxoddvmOMl6Ms/NsL0PDYunxV2YOQCNOhnSaaOxuzfQf8cZJvZk5TawuGM9VQQNDK8irHmZgFTGo0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mwGCp48Y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mwGCp48Y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9558C4CEF7
	for <ddprobe@lists.linux.dev>; Thu,  1 Jan 2026 05:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767244433;
	bh=JdmC5n5vamWt+Lcbya9HcSvUvnEOcwFuVxydBy8XRvM=;
	h=To:Subject:From:Date:From;
	b=mwGCp48Y4ptzCFUt2+vv/eGEXbo87XTeZiojPe6mdtwQOSVDCsfX0Le9QkEYmLb5L
	 zHRnxxFQGM6PrlxXEDoqp/d5hul0bw+oV8LbHEuKGTcn16UQaEyD8U2Ud790MvOg0U
	 h9Y4qp4bTuE9ymRWRYPogP5oMRhbjngcrVuO+umWFVc9Iw7TNiwYeXCMOv7fgafeNo
	 BJeFmX+d8gCF6hpo6JcB3Vo1r0gCHpQ2LaQVzfqToJ2Zzy64D4zHQYoZheL3TjYb7Q
	 /n8REJUUwNBPqKzlRuHVlUjUX3elLgc0eE5mLr4Lu8hgJkc/iD7p7TBGfHSS64CAj+
	 oRWqmqDDfwqRw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94CC0EEB56F
	for <ddprobe@lists.linux.dev>; Thu,  1 Jan 2026 05:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176724443359.18707.17336349822142799661.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a84190905f5941d405c999cebeaf696e9fa47150265c5e3d71755fa4f3dea8a4
Date: Thu, 01 Jan 2026 05:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767244433
