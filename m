Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2153B360EC7
	for <ddprobe@lists.linux.dev>; Tue, 12 May 2026 11:40:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778586034; cv=none; b=RIIkXTnGaMMu//ml5TKtsbyzW+ZxE4zuD7rtZ6BLqtq9inGUJ6BJRlZ1PI9fz1xcW6ERM1e98BCh5RkiPDrIBQVdxwX3uQh6d5paiYdOExmfqTZp+koiGsaZ3rXap/iLwoLbEXw6hZfACOvG9wGSy/PIPjVVs6Pb48j/l4TdgiE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778586034; c=relaxed/simple;
	bh=3c2B6hcs0eX+B3igNIHpenbSt7wE9g+ugMufytcJGeA=;
	h=To:Subject:From:Message-Id:Date; b=NNku49qEHafMP8J0iaT8i9z7nS61FY9yD1hOF8rwjH9pEpcvPvsfmCMzu7dbDhVHHKVdOYzNaxIG5OqeGKTgye2MnL9d33xIIRbwcLgaHFxy78pN6LIgulz3VHsizuTd3L/0faJNdffBChekYnBzmDTKx6VmsWnc3UlLFJSI+Yw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dVIJBF/5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dVIJBF/5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BAA91C2BCB0
	for <ddprobe@lists.linux.dev>; Tue, 12 May 2026 11:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778586033;
	bh=3c2B6hcs0eX+B3igNIHpenbSt7wE9g+ugMufytcJGeA=;
	h=To:Subject:From:Date:From;
	b=dVIJBF/5USNz10lmrLsFkqr1xxV8c2ZBv7OFN3D2i8Uv4JY1aFctYtJLFnm5lIaql
	 lpOZUst7y6eKk/+i4njcJVWd1lPILI9JnkP4OKJ0dZlBBP66Ci3J5hrldrPo1z9PB2
	 9qEkoiNxBuaB2o2c1IZvd0Leq7RI0tBobSvsrASrkFXm8gyjKKhvmSnL5Ce7ODfZRG
	 20+FpXqg/d3YBGKuSag9Rqnf72vbHCgWJ+QbuvwnwEOVjHcxeWp6pk5Y3KJT/+Jort
	 KvrokL1kuJbE2X6HN4MGkmxrvogYZCdE88qGFD+4PqPde4WcDlgQgoX8swijyVAFL0
	 HKxs+lfN2TbgA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB4E3CD4851
	for <ddprobe@lists.linux.dev>; Tue, 12 May 2026 11:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177858603369.8011.441746185828689028.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d3742016ce82e61702be7f3ba20242a0ddc16ff5a3956539e81311dc0435a0dc
Date: Tue, 12 May 2026 11:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778586033
