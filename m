Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 366B74E8DEA
	for <ddprobe@lists.linux.dev>; Thu,  3 Sep 2026 19:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788463235; cv=none; b=TE00OCYoTumt7jvfv42ZBazvEYButoL2BSYQ+6k9AvcgEHtD8ObXRIW/nk2Q5WIKHgcfLpKtMRsJr7SZHfu4GaQBAJa8kLEdh3OMbzWiHMaklmjHM246ObZw/yuU79d6xODPUr89CfMYbhDijudY0bPu+/E4P1GW+GErC0x6q40=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788463235; c=relaxed/simple;
	bh=d2Pxr4uzpQvJUBhbzI4PRaHSk5EjCB0yL56qRbgNdMg=;
	h=To:Subject:From:Message-Id:Date; b=LhH+L6m1ETvwFH3sTFzQqeCgoFsuK9pUc5kaZH4KMrSSothoWZ54N6R8Ph+GIOTqzbrlpT7x/1Zb398SvIwcG+jRlPT3mN0kln8LquRb1pbhGuSkwbdMzcjt7G+BgSHClGdADZt4P1ZzExfpUcSVoBLVR+N3ttig7yVZwHtpVIw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=L+pM113/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="L+pM113/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CDAAFC2BCB8
	for <ddprobe@lists.linux.dev>; Thu,  3 Sep 2026 19:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788463233;
	bh=d2Pxr4uzpQvJUBhbzI4PRaHSk5EjCB0yL56qRbgNdMg=;
	h=To:Subject:From:Date:From;
	b=L+pM113/+fl6kK34Cr4yizLHJ4te2fQQtl+xUODLRWwKXM2CVJFFRy0A7qFGIe5vs
	 ZmIKVXBjHqI7ZbDD/Um5fWK9sIwli63jFGBgeT7NoQMZZGU/CDR9ie/KgHzfc1auEx
	 /qOfykg/YmbLlF0elZeaFfa+mh1VYqJWKl6GKCEuZU3czPwUT2c2/Wy9zm8Y6GWhv4
	 CGdULqcpmjfag52ZX6FzJTJEOpnax7M1c0tv7WJxnb10AdCOHJ2Sa947N/S81OH3nb
	 +DQEJ8e0+Q1Y5LMj0Qf4FKFjT2G1Q5bMmmmsdrcE/8WrJJ+cLfZlFwEZuKx3DwRLvX
	 hadNMVn1hCVpw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA5F6C624DA
	for <ddprobe@lists.linux.dev>; Thu,  3 Sep 2026 19:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178846323368.5483.6403561540007234813.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b47527bc3fd3e602fe8b4a89b432797b3864835208b9a3f94404cfb94c613bc7
Date: Thu, 03 Sep 2026 19:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788463233
