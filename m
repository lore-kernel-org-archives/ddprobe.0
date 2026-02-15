Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 259342F12A5
	for <ddprobe@lists.linux.dev>; Sun, 15 Feb 2026 12:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771158894; cv=none; b=hOopYUio6lXSA+rPJSoivWB2AUq0++wVEaZCtV8RRzwmPYS0OMvAtHy/MvVVn5Bz3HyDyXsG/d0xSc/JZ94mlaPTk+ETbuNtWyOlrFK7fIkmJmegUCFKcIMikg7RNbbnsDENK6/JlMnBeu1r2M7PBNt2Vr/gCkJ/grzsxDnCaqY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771158894; c=relaxed/simple;
	bh=1BV+7dmMCov3+PQcxiby5v5bhDdj/xDcFqJG+gt3CAA=;
	h=To:Subject:From:Message-Id:Date; b=UFa5Mw2slM6G3d5q+Oq7sQ6HcyUQrdemiG/QBk7GsUnsRgXgei/+S5JU5x7BlnnKS/o3FNwu/8vLEI0OcqggGs2ahh+L59lt43cq3IKYwabLoNbnFxtH124urxNQjUgXl8Wat5U5tGs0i5OPAHsegfsKriMVXBcdrNn6q1ENe+I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oPxW1Gob; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oPxW1Gob"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8549C4CEF7
	for <ddprobe@lists.linux.dev>; Sun, 15 Feb 2026 12:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771158893;
	bh=1BV+7dmMCov3+PQcxiby5v5bhDdj/xDcFqJG+gt3CAA=;
	h=To:Subject:From:Date:From;
	b=oPxW1Gob/oi6BqxYMHOntM4FLxWjRusWEkFv29WdzYPIcC88Ej7/QIjDcjzYrNo4E
	 VpgulZ/G3gdBCLRBeCVtOtNlHU/p8P8AMPWIWW01VGo+ZespuCkQQerxn87XMOxURH
	 +LIcNaDseR5zow4Cc23ZeNEuWZBtOrXtjYhBCXi/HHUVFqMQh2ZYqn1ll4ikx4dXll
	 JMY421eig5c6no+00nlzAvEuPUgNWM5lfhEHIl4jLS0qjuprPzxFCP4FPPCzVNCQrn
	 JRzdJgvKCk65vv7M44rbHGJVcTjgHOYzqkBYSCoUiVFpwCPFsLiTwR5q8ZmjbtM78V
	 T8YCWg9gNoJ/w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93610EF587B
	for <ddprobe@lists.linux.dev>; Sun, 15 Feb 2026 12:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177115889359.19143.10805814883858366565.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c80a3931d994cb941688c6f83cd4504b8dd7eba9ab6e38a3ffedd5faad153d9f
Date: Sun, 15 Feb 2026 12:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771158893
