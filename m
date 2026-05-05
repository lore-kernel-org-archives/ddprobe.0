Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19E9347DFB8
	for <ddprobe@lists.linux.dev>; Tue,  5 May 2026 13:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777988854; cv=none; b=CmoDtyuQk0b6lNG+2dZEGLmydbyEbx5Mi2FXRUtx7RI+UH9sWthHmtJ7vnsixxuAHnY4FKYe4EPu34qJ4fN4Mab6evS+ZKQD9r7gKiNUL1l4TDJkkJAFtTVzLUtVpCbB5kS8CTZx/leHx6S5gp5t4glL7eJrfYk0UHEAP0OKIWg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777988854; c=relaxed/simple;
	bh=+Aebeo71xyF19Ogv3/9dyEitwkej0ZuflctI6LLgpo8=;
	h=To:Subject:From:Message-Id:Date; b=lBJ6CtHJji7z/KYVyDGq7C/Hodwmt/3YDNPoGGnX731r5rtPZttshCzJDEr8obc48YXpCeCtHBh2loF0g2oau75VhOaDetL+CwA8msNkqH2oLehI+HVAHw6y4Lsj057CQECiy9x1rMl2ybM56TAwCCdJXXy4E46NWmcM6iv5OY8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dF2wP6VV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dF2wP6VV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B88B1C2BCB4
	for <ddprobe@lists.linux.dev>; Tue,  5 May 2026 13:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777988853;
	bh=+Aebeo71xyF19Ogv3/9dyEitwkej0ZuflctI6LLgpo8=;
	h=To:Subject:From:Date:From;
	b=dF2wP6VV5tNn5p/8400zx3NWDrjJnLhZWb6/mNhHVY75np6ljueFqAdS4crEHH90G
	 ZPPd2H2zsE9B1pq6ApMUXf48bDSS0LC38FOHzmVapNISuhdNBoLDt7fNw1E+rCuLQq
	 YDCK8p7MeUOxPFvIs4F+fELKBl46fhMTnPuU6M0yoBx6g/II71XWFAX+bvp0CF/LFs
	 SHw5N4IaAPjmTPwZbP96WgzyjLOkFZzIIbvcxErs50WCvy/XNY/TIHRBh06L3ur3Rl
	 Wbgbr4HjvXW+niy+dOYo4ciY0lSypCvzyVK5IOixK6g3ad/6Ru/vxl09XYvFHnRQqF
	 l+Ui2d4Q7dxdA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9ECFCD3427
	for <ddprobe@lists.linux.dev>; Tue,  5 May 2026 13:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177798885368.4392.12843371375153604322.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2a38968a9860252d037431f8a0924b1afdcdceb84de3eb78e547e5c73ab3e516
Date: Tue, 05 May 2026 13:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777988853
