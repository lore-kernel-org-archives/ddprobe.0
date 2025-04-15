Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4182B2973D2
	for <ddprobe@lists.linux.dev>; Tue, 15 Apr 2025 13:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744723194; cv=none; b=nIywZGb8RY4On90TyIWVOTr1HmpsjuypmvqlR1RVsTCnGIXTbyRblBOvRnXi85WTh0gS+MvyrTRKhLOBw9rwRRHfr/svAbyz8MZWyIflwM6OItI/iP15rFucN0jeVOhnVc5T0uSZiZ7fI7+rxKjNy2GVr4/ludeUbCwHbpLXrZc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744723194; c=relaxed/simple;
	bh=xkfB953b5TkTYNGOvMJvwkErm9PZEGT/XC+n1nsOKgo=;
	h=To:Subject:From:Message-Id:Date; b=WtLfvFW18MyiKJikfFEUfYkbCdxTbqxjC8l6a397m4s6Y0On5U47hZgK10N+2Mye0qzvqnixOaebUi8SoGYPfwJ5Yr4D0K/yIN5R/4u+Imf8QfV1RhdRStaj56O4DxZR8FnItVvqDbyWohw1dL9iV06Xu7eyCz6ww1bt/5BG2rA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XXg0POyK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XXg0POyK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB5A3C4CEEE
	for <ddprobe@lists.linux.dev>; Tue, 15 Apr 2025 13:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744723193;
	bh=xkfB953b5TkTYNGOvMJvwkErm9PZEGT/XC+n1nsOKgo=;
	h=To:Subject:From:Date:From;
	b=XXg0POyKcjmuGlTSmlKzvJ/mPkbvV2QG/NT9yrQcxcR/CIskL8mHpWiNLnNKXWKi8
	 5RxtTMDayN1dWNuvx5Z/JR1JKwCFyXG1tTgrwYsP41N+7tWhHk6nXc/6wVhh5ImdmU
	 +Y5k01fMFq04d0jY4Ph77Q2z8EPGUZTY/65TIZnk6cVNtcDE294B8hhf7zKvY1CSHu
	 iPmFA72LtyZJALTM/z5WSspPTEqWQMBU5qSVhZH1/XUMZ7xC22Dbl+oH71ZFx1hlhZ
	 e+2PDXzpkveKOQIOp5XUpERHYIQKIHcwmAFJvo8b6YS2wgKKydTqSsjLqBfN2y0ChH
	 fX1Qz2KSPCh3g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97335C369B5
	for <ddprobe@lists.linux.dev>; Tue, 15 Apr 2025 13:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174472319361.10218.13857509717873268809.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 63c59751e4bfbdf2d061b2e659fe8e358791ba9e4ab7740f9423354f6bf418fd
Date: Tue, 15 Apr 2025 13:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744723193
