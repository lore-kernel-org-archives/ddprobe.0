Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5E6F937F8BC
	for <ddprobe@lists.linux.dev>; Sat, 18 Apr 2026 13:57:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776520654; cv=none; b=FRHT7FlUx4gxbPWnpoNPbnUt/XTWCDrRMDHIrcme5M43SDgm6/6ofeKdg4ih1q1SlD6FQm7tVXfvk4KIcZRa2sO88E80G6gtaGr01bQ/sle1k+9FNW7M8wtDtc+agJ2syawjUzrH1arxa08NJ2vLVcEXotP5FDhpUD0r8VVWDb4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776520654; c=relaxed/simple;
	bh=U0QLtHooLdTuabvyRYk4jabZGVRErS/OF8nP861TkjI=;
	h=To:Subject:From:Message-Id:Date; b=tUV1fKCuVswS7DYR+pvFn4FCvpyylRWoH/UN8aLcq+0CtgIz7bu9GJgjJ7gzMe/XsO67+zNOp+qfeV/4low7fOlNAeX0PhrCqKohevFxits2xXac81BYbzWEosFZEhr+OTlbw2GiNiC2Lr46bTdRyJS8FYDAczRfFwDbyWlScbk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=T+RCkntA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="T+RCkntA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1811C19424
	for <ddprobe@lists.linux.dev>; Sat, 18 Apr 2026 13:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776520653;
	bh=U0QLtHooLdTuabvyRYk4jabZGVRErS/OF8nP861TkjI=;
	h=To:Subject:From:Date:From;
	b=T+RCkntAkgiBCTFNZgVI0svSO/xHTIWa44MNemQjG4EGORoVV6fLhkY97eNO9MwQA
	 xff3/pVlZK+eXzFvLJD8TAgBTnm81Qcfj1ZaVBBBozbLQ5OZBtHGB4hiufZ3/xcny1
	 OTqMTKOUta/rTvzFkcSTMHrHdbW3tVzUidw9pBDV3tXuNyq3yZZbvjG4W1DZhbvxgT
	 V83MeDpFvgtpa3TLdSxn3WbZQzMfOXtG8y8jzPnmIfE4o2eY2tmStSATN0gKBZOP0Q
	 dXMpK0PF2/S6iVzQhsP0LB/Finj38W2SPdDfSLcwFGxB32qv3taQ6XK16hmMvxSHnh
	 uQ3ILP8M1g+Sw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF631F99C84
	for <ddprobe@lists.linux.dev>; Sat, 18 Apr 2026 13:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177652065368.26587.1561723212522445457.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7124b960c07b95268a1a4369e1bd353f3542d0d438f57ab36e5b03aa9a8616b7
Date: Sat, 18 Apr 2026 13:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776520653
