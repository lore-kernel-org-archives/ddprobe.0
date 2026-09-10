Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 537AD373BE6
	for <ddprobe@lists.linux.dev>; Thu, 10 Sep 2026 08:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789028434; cv=none; b=IcjajmKJxMMlygkY8eW0q3rozUKVXt3f/7BsBNojVlJK4nbLUogeeA1/asoY2nnJ+/nwrr8seoz0z2HIY9kPEd8qofBMK8s8BIfOjRz5/5ecKCYm+J9bkOgZtS4AHkiszkqrlPSBQZIlqQ2jzdhnVfMV3WVh/PJ9La2PPtawiU8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789028434; c=relaxed/simple;
	bh=u5zCQiekMMfdHPYrhhmSz1u5w0wOQbea0YMAV85AHKg=;
	h=To:Subject:From:Message-Id:Date; b=Zduq/GBd9RCFdEubBD8qYMSGVqqICWS5g3SekY3A+onjbfE4EqMMmo+u13NttukZPQBSbXkjYM2JEElwEab+0BPTNgdj6d9TzqW7YgrZW6DUUuTIJqBOmMS5eOsJCYti2RRAXkgaCU4NmeZrZZc28wCArYvx4724JQ8XKdXbIK8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OEjSDTs0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OEjSDTs0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D248AC2BCC7
	for <ddprobe@lists.linux.dev>; Thu, 10 Sep 2026 08:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789028433;
	bh=u5zCQiekMMfdHPYrhhmSz1u5w0wOQbea0YMAV85AHKg=;
	h=To:Subject:From:Date:From;
	b=OEjSDTs0Prvi/qKqzbgJC9jtePFRGInqczL7Zss69/UDLJiYI5ReZZiH1Y5tr331N
	 DzW3GWRWae3QSoXtO8anReWbqqIkD+FaljiHRNAlfIfLYEUHxubKZ93jrGn32CUMxp
	 seSZFC/hHWoiPF7PubWFs+S8CwzJPC4nctrKZNvECM8Pg3GWBpur5dslSqgM5NscWi
	 JEtfDByFZhLjoKEWGJydWwrXNENv7bLxq3ZSfYMVohM73X5ubbDJakDc22oIpWiuph
	 +N9EKBD4OA7kUnmrJbAub8fY+YYMpgEB9FkTHw56xZXRSfCLT/F6OgtfKuXEmpq+ET
	 i8qmXADsDytbg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC4DCC79F9F
	for <ddprobe@lists.linux.dev>; Thu, 10 Sep 2026 08:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178902843369.17066.17486058418798713307.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b7398d8f8cd2112913ecf410816a9f60f857e55d5396e8855209e0dae033b8df
Date: Thu, 10 Sep 2026 08:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789028433
