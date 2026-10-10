Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4311828B7EA
	for <ddprobe@lists.linux.dev>; Sat, 10 Oct 2026 05:10:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791609034; cv=none; b=U4vA+Z46LwHEhg2yx28bp+UbTwK7/r5dI4xQZ5mfy1HvX7pgrNuoY915qvETYJaEywi/0sOsxzWsdzxS7Estpu/BuWS57tEd0qZ7lOeziHPhUIzz9l76RVBNhRGyKhITbahivk8xgtSKE9NZ6pQiAx2X4/Jm1tHrSA++10SUsf8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791609034; c=relaxed/simple;
	bh=F6+0+Kjh915YI2qacCtwTq+eA34c8r1Vd2cslOqdf/U=;
	h=To:Subject:From:Message-Id:Date; b=px92KSXfwhhKZEP6nXlJCh6+4mhtzNhrAnFADjgOtI0HPiVXhlQlo8F70b90TjH849fZLp8rAipf8A0Vc8T3Nc4gp8Q66TAaXsT5qZkP8qsYvifXAFDEoxjvdp69xKfSRL1rjcMveoR12udsnippLUrZhZY9HZKq/eUcifbNpwQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eR3zPx6j; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eR3zPx6j"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BBD09C2BCB9
	for <ddprobe@lists.linux.dev>; Sat, 10 Oct 2026 05:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791609033;
	bh=F6+0+Kjh915YI2qacCtwTq+eA34c8r1Vd2cslOqdf/U=;
	h=To:Subject:From:Date:From;
	b=eR3zPx6j6/ZVteNiT1u1QDVnNzYmMck6SQAEW5xtuf1d/362/zPYMOR0kCANdtKDi
	 pOxuGQxxU9GcOieSpAULMNsNdUEv58+er9NBSOshhghPaNzm1ptL8eo2QjaglrEbX6
	 FBbb6YV7Hkbwvi6wObGYtVmX4LAgtQw23M8JiecIfXtz0P33XvXkHvEAeAG3a9fYKu
	 YnElbXDnuAYTrHz/K14WeLOn7+HBHKQ5FLS1QfVmfijVWq4dtSVrC99/rsYGDVSc1e
	 lMsx5sTIDRbUTwgcfl47VcT34DOlfGf2l3Fyj1Yv3bSoL4bKaLH+71E4n9ry1RUOUj
	 +OhrKAnwIT0+w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8D76CA6004
	for <ddprobe@lists.linux.dev>; Sat, 10 Oct 2026 05:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179160903368.22083.337189389699698609.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2697a07632196f3d72ef80efdc0cf27cb56c1a6769bc1989cdec0b968596c5c9
Date: Sat, 10 Oct 2026 05:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791609033
