Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4FF8E1B86DD
	for <ddprobe@lists.linux.dev>; Tue,  9 Jul 2024 20:46:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720557983; cv=none; b=ZKpDfuP4SlQdgHuhh8qxTscQ+F5EVaMonBafHVUIv/3jLXuYUGFqQCoURLSWRNelbPMl+g3rYC/DHeFVDtBOxMGmevX4EuB6TH19I22Q4Ql0q0rQ+k5EmVRyt2Ijq2F3/ME/MwgnjE5V5zQqiG0MphuGV+VNx/HXJVy66x7Wk14=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720557983; c=relaxed/simple;
	bh=D4AAHFmO7Ev0ZYxVzxTF4ND5Ez18A8k6nx9utxWGeo4=;
	h=To:Subject:From:Message-Id:Date; b=jmeSbZET9krlMpf1TVsMUldsJexawcBfV/JVP2LsH/YtcwORxpsfJ95CPs4fmPxezDxYgONq+ASmtDff5l74R990b9NlgFBDRiLBPTguL8RBkjHhThEbviWgmZJ3WrBn5bPsrnHyZ/n1Bewsb8owl5XQdKgk/eBswarXekISOG4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KEDWXMsa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KEDWXMsa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D45B2C3277B
	for <ddprobe@lists.linux.dev>; Tue,  9 Jul 2024 20:46:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720557982;
	bh=D4AAHFmO7Ev0ZYxVzxTF4ND5Ez18A8k6nx9utxWGeo4=;
	h=To:Subject:From:Date:From;
	b=KEDWXMsaZ6nWyOozutQ7tq04vCbUhugpzdnkGlW3Oj+z4QrPQ+Eh0joeZXcFEeXRF
	 Q+12eqBuFN2R0QY6mgjb5E/OiC61VSEEmj37l0I6FTxgrzfQz54iPiEnR1CYnJA5ET
	 Vm2Axndvc5OOwUkBViewFAhJkXZvCpSVfktJS/+OGBJ37sujYygwkH92dfd5DWMMuO
	 EFV2lAdCzIP4Pm/ve6Pp06wTzDzMZG+KDy/XFtUVxuxkJMqyoC6IFFDayHJRCmAGtJ
	 j+8BGKNKbaj3ftqwOsh0TJYhsdDbVOct3vN/eOqhpZc2W6r3z4S+EQraqBeY1WJXDw
	 WN+x+YKbTp4hQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C5113C2BD09
	for <ddprobe@lists.linux.dev>; Tue,  9 Jul 2024 20:46:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172055798277.21537.6160924179420756173.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7c9d3ea6cb7b4020bc6ef4874ab48b9d35fe99ba02d849165ec8b469a9bcda8c
Date: Tue, 09 Jul 2024 20:46:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720557982
