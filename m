Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32DEE376490
	for <ddprobe@lists.linux.dev>; Mon, 18 May 2026 17:10:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779124234; cv=none; b=EPDVG1Kt6e/2+CE6lMDxR89FWyISRuYrQiJNKRxVQAhqgXwK/PeC84T8gzzKs6+PRGREI1/Lik9AidEsjBNOnjpz9PCTzM1IWWLKKSuMF8TIUx/kRFCXAOPLLA0XGmi+XM6hI1T8IrWfORYx3KBGj5cHrvW6Ev8dCa7zlRq43GY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779124234; c=relaxed/simple;
	bh=femH4RuslxKl4JGvzjTNupvacGubsl3Bj2DzQxHiqk0=;
	h=To:Subject:From:Message-Id:Date; b=NWuN3Lh1HeV6eQkE4doSSpkJtGFhJVRsHl23FcQDDrcd6jOR9puPau+Sez3257HABFfUctByoXDFOx6NNmT4+QVHRf68ZuO5UXMbr6JI3vYiNYE/Jy3aQWe26ACxSt2irAbQG59y032ndvmyoyIBHPR0CLe32FoPTaDuFNtiN9U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LGfmnJFY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LGfmnJFY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD958C2BCB7
	for <ddprobe@lists.linux.dev>; Mon, 18 May 2026 17:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779124233;
	bh=femH4RuslxKl4JGvzjTNupvacGubsl3Bj2DzQxHiqk0=;
	h=To:Subject:From:Date:From;
	b=LGfmnJFYAUWNkfmBnLTE0YROMvPVs+rRLH01lSrdPbmHt88C+k92BlLBUJ5aqnye7
	 MS36dmGtoN3C6N+8Sj2vT30p8zLv3pC+WL/1AQyzgLd+y+YF/1ifFC0YzdZZ4wgWU7
	 AFVGRpkcttb6kmzhv6DTW2bB8L/sfRtsYLFCXqVhgCAXMj+tQjBu1y14fbofY64SEu
	 VtlEcNqW/u1DFLmOopufvlF95qUadoLhizPSX/WZE+L9E+YzDTWCnu9IW3tuwT9VkH
	 u/A82Uox3PAO1KqIEwALWkb0+VYFWnUNhKM5BGFqz0GP8fpA5bI4Tx9ilCC6WJ8ZVf
	 wfuHlf1d/XoFg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD72ECD4F4A
	for <ddprobe@lists.linux.dev>; Mon, 18 May 2026 17:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177912423369.15817.14002474076033362973.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0fae35d571603c362961e8df474690996dad7b5263d1e55abdf3c4d0602785e9
Date: Mon, 18 May 2026 17:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779124233
