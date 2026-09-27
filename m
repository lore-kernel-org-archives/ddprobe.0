Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4CC273246EB
	for <ddprobe@lists.linux.dev>; Sun, 27 Sep 2026 15:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790523034; cv=none; b=Xf/oujadhNF6GlkTLQ10WqBJ7mTjOG8gw1l8lgaF6bWdAdu3Zf4/pK0JpZ0tUr2gJl1ChpRftJGluXfRgDBSmOQHiAsz+WY8julQhtjWyLAiE7L8NJifQl1erIfPoYc4lNED3+ZI/kEINWVSXIeCGMc4DbIZkOPwcSN7S2MqDCA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790523034; c=relaxed/simple;
	bh=phGNirrFL5LJSSHtpBIIVOiYRW+sJkPMuRDdwjmUMPg=;
	h=To:Subject:From:Message-Id:Date; b=TYlDQCEUvm77IewOzBwK4337gPN2sFaO7tdAdqhPNN46VA3xp076bXKV4KdbMEqVY2c7WBSoiaLEmcPpzX3OHuXP1k4U8izcUtF73Ry/eI+5l804WmUa7XiZ6nDfp0tv1Iwkx5DNR6YDrP7UFWwMcxWXlrRAgplrWGP239taHQk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oKwf1yxS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oKwf1yxS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC0F5C2BCF4
	for <ddprobe@lists.linux.dev>; Sun, 27 Sep 2026 15:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790523033;
	bh=phGNirrFL5LJSSHtpBIIVOiYRW+sJkPMuRDdwjmUMPg=;
	h=To:Subject:From:Date:From;
	b=oKwf1yxSG4wqNtHyUaW7atVzv5TDrKrobYey9bhQraRwMLqzJkVTPQhmPGO0t5G8O
	 AXAF5QJduhJ1z5Lm6CqBXMEuguxPPkJEDVlpZ2TyMbMbfrOoTWPfEjxs1OrSG79aLH
	 WzPRMDgVYt+g7IqK6knGkLH2KcRXyXWIDW4dpjHTaIeEeA/BeVh6zpweBcQVt0jn+F
	 xUHW06LJL/2NNxJXzTB91E7IMcE15uQFhIzj4WREe6+X2nN8KP2IMmiMY/Ev8gjz+9
	 rH/plqeI5mOlyH+7Heu2VlTZrsxd0yDz1Dmir07zZ5oz0wnYUBwKE/nR9Xf6PRaZrK
	 q+0jymwePIrlQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA359C9832F
	for <ddprobe@lists.linux.dev>; Sun, 27 Sep 2026 15:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179052303368.29152.7721607092760644414.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fe07cb845ce089461a4850460f5ff0efea129426b2c0a0f2612c3ec803fe2c5f
Date: Sun, 27 Sep 2026 15:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790523033
