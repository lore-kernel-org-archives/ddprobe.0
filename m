Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 524EA3C1F
	for <ddprobe@lists.linux.dev>; Sun, 13 Apr 2025 00:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744503594; cv=none; b=JrVVNxLcqBMUjKaVTFcHumn/OTEE8fFY+6NxBX1nkQCIFlkxqnFsaT5ga+S/YI+LwbVcL6N0Fe4a0hGJaHFeM8SppoD3Cx/9uHQolRk+CECRnnPzSrE4ogtNcAVZGi4f5U3uj0OogjrTDvl73SnuOadfHNXmJyoH4dQs4RCfLcE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744503594; c=relaxed/simple;
	bh=oobxxD873GFijV4/cF/7rw04NWIQZ0i/wY9cXeUJSRI=;
	h=To:Subject:From:Message-Id:Date; b=YAmsztk/w0FUjzwXzGiEKLgZMp/uWqW8FwCYCLmOe4BO3Fy9UGMlOLebaY1uyLgyRHQs7WLH+bIOH0aCxEBTz3+zKH/fVBhC0U3RxGdbPaxgidN8cub3EAv49wKgvyamUG/x5ZoT7//2yyFJWawigfqUiKJD3VnEQajR5XYnUZo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hx7tm9FT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hx7tm9FT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C3489C4CEE3
	for <ddprobe@lists.linux.dev>; Sun, 13 Apr 2025 00:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744503593;
	bh=oobxxD873GFijV4/cF/7rw04NWIQZ0i/wY9cXeUJSRI=;
	h=To:Subject:From:Date:From;
	b=hx7tm9FT3cv4eGriEY4MLkRKF+pr21IwR2PH2PV6RwO7alxxL900ra4YhTYnsM7zB
	 tsWHPvovw26+BQ1X6pV8VWhPaTffuuLryFIIF9/7MF/vS+aa3K8VXZ82iXhsz72kVN
	 EI1tk+xGwFxNLOEmSFjomgfYFu8zrIlv0OU8NxrWXolkBovmSccDjcvTDM1P36Dp+L
	 YSEYFvJoW7BYDInLJZx7VRj/RQTcd0ZmoBIr7XBqSKy5aY/CWla/91YzPbrt548hGH
	 3srry5tSwAN+0ippkO4UUyQaeRdSPzo+VwVrUNVRtKOBWJ/WvBpYtXrV9VnYuDp/ie
	 06aJvZWrtXyoA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A165CC369AB
	for <ddprobe@lists.linux.dev>; Sun, 13 Apr 2025 00:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174450359359.8083.18087455556366699575.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3c0e0a1772b8116d10d0a20f65dc9b176ac63f2f8c17c61ab6e547b4b49e24fe
Date: Sun, 13 Apr 2025 00:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744503593
