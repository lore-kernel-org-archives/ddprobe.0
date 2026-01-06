Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 522292E090B
	for <ddprobe@lists.linux.dev>; Tue,  6 Jan 2026 20:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767732834; cv=none; b=C+dLFKpsfxpzYo1Aw6iOTCJENUGtym7bNNR4NNMiEAyP85cND5khOYHe56y0IbTxigmeJ1VjTPVF6hU7xcQkjb7XyHTJ3NDV5cZZ5HZARD29IQXfMVr9U50/geP1R0od21HOSkbAi6ysoTM8rI1O7FLjpprHjriMVD2D38N9GEs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767732834; c=relaxed/simple;
	bh=I/1pMA9F/HG9ZyejYhHr+RF6Z4d1SaWfsbkfePtACXk=;
	h=To:Subject:From:Message-Id:Date; b=RWDMOj+XbWl3sgDgo0VUA+LDOLKXEmMVNptysKSx0uJHGSsYToRT84GsDHO6CBz9p9TcppD8ufPyMWa/I85LjfcnL1ezCgkoS7e0qu+qjib6u/m5N7dYuIOkW68MR2XT8d1Xwy4Vw7rd8rY8ocVMOh1Nt4eswErr3RYC4L1Q8Vk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YR329Ia1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YR329Ia1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A035AC116C6
	for <ddprobe@lists.linux.dev>; Tue,  6 Jan 2026 20:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767732833;
	bh=I/1pMA9F/HG9ZyejYhHr+RF6Z4d1SaWfsbkfePtACXk=;
	h=To:Subject:From:Date:From;
	b=YR329Ia1EcqHVa4eDQ8WSfaZM4AJ1b47CaUWzTE+I9u0YPgpqza3wOyYAr+5owXX+
	 u5x05pp7q8qH+25zHFgOkZcaJ5S8PhuLbC+FKng3gWZ3BrWM8B6+SSr1lcSYlEN+uV
	 mj8bY4nbZixFHnQhjSYNXg1IrZiQVLCWs9XZt43uILMVCytEmZ2/fHeQ34IUKDFEq8
	 bOyYqUCAy6Q0da70hZ066B1PczwDK+HfAf1Bad0NBouW4wy2ZzQyx9gaVTgPcPgO20
	 VCRZsysRBskADx33cTjSzIO2dUzMOBibxdLbRNifZqFMvOUDpLd/8dfKHZSnotOziO
	 5kmYNTMNMqGLA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E9DDCEFD08
	for <ddprobe@lists.linux.dev>; Tue,  6 Jan 2026 20:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176773283357.28338.853178448933325842.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 936f14299f56178271a86a630af3efeecb02103f5f19eb4a462a408f33115a36
Date: Tue, 06 Jan 2026 20:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767732833
