Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CA6823EA83
	for <ddprobe@lists.linux.dev>; Sat, 25 Apr 2026 14:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777129054; cv=none; b=EiGTSLbHXa3W0bFtvBo6voYeFtuSreVyXyd2+/473sjnCb1rBL/UwWckLgkh0jHhaVeC+w0yIlRw6cmebRQEodHNKUxwf61DRT/Soppm+7Aox0efb8B4RaRzRaWCps3lHqZFyQKyu/7FX25uLPbwkAuUk8Z3vV+CUENXzMkZFl4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777129054; c=relaxed/simple;
	bh=SPs54QNyztOIqk9znN4SqQQ08E3DeGeE0zwqAD8lzOc=;
	h=To:Subject:From:Message-Id:Date; b=Y91Ik0Cl8wzFDhXFHhdQ2tpfFzZlSI58gqAmxQyBrUuDTjjUHdiYkAMaj1eB0aC/Pj3BrAn14jX1u51JsfWBVVv2yXG1gdfZS7PD+lRSqAhxdm/b4V4tpto5i/rIgBJOk92lvOELuoCVwL3+gW25RcXkvUj2TPk5t8KBCvAKNZY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Jlw1Hxbe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Jlw1Hxbe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B882EC2BCB4
	for <ddprobe@lists.linux.dev>; Sat, 25 Apr 2026 14:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777129053;
	bh=SPs54QNyztOIqk9znN4SqQQ08E3DeGeE0zwqAD8lzOc=;
	h=To:Subject:From:Date:From;
	b=Jlw1HxbeCk8HlNnTOhIwuWwgtb+PYLv6WPENUBT/GLg2ATAzQBXICoiNvnO56q57E
	 NvtZYgAnSR5AlJuXL4YN/8ulifHHS77ZINxO/TAKgR3kAr5nFuV9kkGpJCALdGpu18
	 3q1Tp/FoXUCmbQnKjqV9x3H0nKJtRz0ScswtGZRTg1MNW3YKVRnSze0F365kRxSBUP
	 6QzW2ptTOswXJcOy0qCGyABpI5RstJLLgScEDPi5BBhWNkEncgTqyRHvjmj91Z2VCS
	 Cwx1ebndEJcmjNllghIF0iXCuZtYSU964Tm5NStA8GBlTedmlzPV3jdyl/3j1D28ZF
	 TmCzcz0DiTxJQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA122FF8861
	for <ddprobe@lists.linux.dev>; Sat, 25 Apr 2026 14:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177712905368.32008.11834647262158584494.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e26e07a55f9471ccf1f32bacb5e48b0323f8e00fd5c2cc5ef82043a3fe897c6f
Date: Sat, 25 Apr 2026 14:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777129053
