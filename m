Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C97925C818
	for <ddprobe@lists.linux.dev>; Thu, 16 Apr 2026 21:47:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776376055; cv=none; b=q6OXFhrhLTjCln1HW/m0HdI9WhtyRXUXAdzH0a3E9WgNOU0lpjQMRahececm6BRxUUufvVFtLYsRa5EkNsC7t+A3qYVOf+jahaXDCkaYJxQEGmuAgJ/7Duxsk7VuLtJGZzCTwEouFP41LsWfbu+SuSzo7rLHFl6PwmKAlFJB4bQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776376055; c=relaxed/simple;
	bh=oHt9FMHMcaN0QX/FMP0gpNSveN6oRIQFC9S12uSt1kA=;
	h=To:Subject:From:Message-Id:Date; b=rDF2QDXU3PhM/8/dr/+WO+2QR9RkTabL3+eqQl70lNbV6tmJmDlKPwI9MCRJa9i+fUi/OcQYZaScsXfl/evYVp99KaKpMbS2vqaO1ulVimDRKFT1Rva7tqgFstKdJmzWN+xR8u2O9B4Jn1dQfIGeBk4y59SBYqf+DSh0cyOmMMI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KLAjch39; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KLAjch39"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C2815C2BCAF
	for <ddprobe@lists.linux.dev>; Thu, 16 Apr 2026 21:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776376054;
	bh=oHt9FMHMcaN0QX/FMP0gpNSveN6oRIQFC9S12uSt1kA=;
	h=To:Subject:From:Date:From;
	b=KLAjch39MOfSJPKtTPhb+ESH8FNY5WeqVzH7FKqGU2ea2qV9iAM0tBxMG3AXBeDIM
	 JH68CDglktRPfOKDLT8+QNEAH07WLmQZf8xzfEMHlCfFnI8OXL1pDlI/kgqDkWKvkT
	 p6lo2aTOKQztQRYn5E6X82BYXe6xKqs4OyBtlHmoxOjPbEDa5OysJ9vQ7rwOoJxBt4
	 l91Ly/KfgvkMV03/6Pb+vj+I1M5GKjmAkWyFZ0d//vDkqtkcq5JawrY/uOVbb0xrWG
	 hazYu1YZiuHI9sOPahCNLzRqjYiRAUADiUiC5zHDSJX7ey2xwvzDUjaRWxo0R7RkWV
	 h8JD7A/v2u61w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF3D0F8DFCB
	for <ddprobe@lists.linux.dev>; Thu, 16 Apr 2026 21:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177637605369.31717.16389383060709330125.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 80ef7d692d73236a732a394d5e75a1ec2b295e4764a335f84477d2d5b3e3890d
Date: Thu, 16 Apr 2026 21:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776376053
