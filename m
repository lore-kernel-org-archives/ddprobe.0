Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A1ED4A29
	for <ddprobe@lists.linux.dev>; Wed, 26 Mar 2025 10:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742986195; cv=none; b=aKud2tIz9jvom+/9pQ714xj3oZrI7haRqkH91QMcNGobo9qA/cQEN8XqrTrArWcoRqPD0E6G3MLJmC3QnhTkzPFz5L0c1H0cnITq2U3hfRLxxRjzmz0ha0hU/3/fVbkqFA1j1q9Vb54upG2l1fXzfzefHr31EZjBvgC+FlLuqqU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742986195; c=relaxed/simple;
	bh=2NoeLAIoLKOKr7EfWqtNjMBBrij6Y0C5cZWGLebjGbI=;
	h=To:Subject:From:Message-Id:Date; b=jnuFPkjQpMId3uYQ2eKNF40Vb12Zr15e8Bift5M5VKQt25rjid7JRfT75283Q/vC7zHF4mAOdlnGTGtNxKWmFYuDCZMRs+mEV9OjiQjPBs1eGtAAlOTvJPQc0vmoXc3PR8H1777tTsDvQVhIqPGO5mkfjymPpnd7jSc05YJdzRw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eT6ZboDo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eT6ZboDo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BEF4FC4CEEA
	for <ddprobe@lists.linux.dev>; Wed, 26 Mar 2025 10:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742986193;
	bh=2NoeLAIoLKOKr7EfWqtNjMBBrij6Y0C5cZWGLebjGbI=;
	h=To:Subject:From:Date:From;
	b=eT6ZboDowdCfLS6bWU3znW9qXB0oq3OW9z47hkPX8aNlgEmZZrJ0+9Kro+L2hzUtq
	 IfcvjFR+kN7+nigwtBW7a0MBLo9kYrJU+ScGkvtt2+i20xULi7Cn453NT7YwlVR6eg
	 wVQxSCSG0PLDQIvDM9ak82EMJwiwViAQKyIDTbhT710ZS6/6fxcsp9zxiXt5oX/Mhn
	 FZLOC11DBNbRsdG0OpFoFFDN/8gaetMgxDoISZCQrYeHoGo9zYVV7C3Vi6KRhS/rLY
	 I+ldK2wqkXbwyGW5xaOeMetSYcWKdUL3v+AQ4eaRi+PEP3kRDjGbxu4IULrXap76VJ
	 AX1nQQm0sXIzg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE855C36008
	for <ddprobe@lists.linux.dev>; Wed, 26 Mar 2025 10:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174298619367.732.16540558793293048462.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 799866f844676ca5ccc6c236e5a4d7202bbec345787f4d5f2fcd93ced90b0703
Date: Wed, 26 Mar 2025 10:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742986193
