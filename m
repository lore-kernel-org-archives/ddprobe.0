Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35A2E288CBA
	for <ddprobe@lists.linux.dev>; Thu, 24 Apr 2025 17:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745515794; cv=none; b=psKUTtkXwFVCWQG6LCC+TKhJIb7c5sPH/mWDZjliUpwReuxF3sMNLWctOfmChsl17tEPVRmNKku5iXxdHI+PiQUvZpB7jvLKCv0pXl3Wete/XZPp7bpI6v8mQjVfgSzpp7fgLpEbQUuExeR5kOMbE+5WQ/RzqtMsl8QatywrvQg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745515794; c=relaxed/simple;
	bh=y1zycB+vkDFil7e00biH36tQohAtyjFOqhKlfSm7r1U=;
	h=To:Subject:From:Message-Id:Date; b=IS9Yx4hJaHz1L0ahjqP7FqKyyZagmMoosP7AD2Iwiz34UzypFJEv3Xmq+KDO3O6oVziLxwFJ3CDp6MjnEKooqkeMIjuSxTBYzCpZk057Wl993uYjD8PI17Fz/I6v2do3csr8eMjhzk7g09dfZcouqdQ55UWh+pCijcWxN2edKMA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KbfIFdHw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KbfIFdHw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EFE0C4CEE3
	for <ddprobe@lists.linux.dev>; Thu, 24 Apr 2025 17:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745515793;
	bh=y1zycB+vkDFil7e00biH36tQohAtyjFOqhKlfSm7r1U=;
	h=To:Subject:From:Date:From;
	b=KbfIFdHwpdfNDJxjhSjWzcU+hBdf4Hlr+qzfVwoWETlHay/BepqmFQLO8zL3F9fBf
	 NPSY4+pfcjPSn3EwUfm3lCH1VqUl+6F6HkKyF1mHV2vcL71pI/wFeW7+6PT4gi3Err
	 4SZNMHJ0QMaRRh08w1qNyQxYcx2QFkMOJy8X5Uz4hUX28scy5HZYd0BQEU4L+TMsCq
	 4CKTtpnC3lzKYR2VoVcmACX+2sFhqsj6QkJ9DdQSjEwhoTecDPmJyctvM1T07ov/fl
	 TgM/CpfFio425+YURAmeZRtDZ3Yfi3yCgxHtqeWE5MkTIxTaxNXMTXw8hTaS5h/M02
	 6WqWTvAGz+6vQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EC61C369C2
	for <ddprobe@lists.linux.dev>; Thu, 24 Apr 2025 17:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174551579357.12391.10397448742315548085.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 76a8995cc3d1beba3c89c5e5345a849380e05eb3f98ede9489f920e0d7c99697
Date: Thu, 24 Apr 2025 17:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745515793
