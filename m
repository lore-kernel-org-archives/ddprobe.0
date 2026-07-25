Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BBD629B200
	for <ddprobe@lists.linux.dev>; Sat, 25 Jul 2026 08:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784967634; cv=none; b=l+7/a6zCcpdqgUr/swY8zbaFpoAdmLEHX6U6HEOxs4BFbUVqlKeXvi2pCbWh1ELOVnQc7/QyTHg6Nzjr2lWd9pomIs9584101FqsuJU8CtM4iGUaIiXm0XRRUUJEZOPL91UpsC2hzODqozXk8Sfsi6CjwL/Kfs8uMC4CHy3LpC8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784967634; c=relaxed/simple;
	bh=ROKymNGin2bjokooN74xMjRsHimgzsf03m8v8ut05B4=;
	h=To:Subject:From:Message-Id:Date; b=ersQQr6+K0qLatfIW6O5Rxc514GOEnmC2O8Atdj+9S2kdzkfpydFo6/DmHhwdXCGlZvgMuyIc1qcd2HmCxNzsYvs0OoXPE8oBvNCh6RF9OhXBpfyPYMVDLQ/cgGt6ikBaC2d7CSIRQOkXuhXvSKbJ7U9BOD0xHeo4c3skrjXtTg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rpRt58M7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rpRt58M7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0D23C2BCB8
	for <ddprobe@lists.linux.dev>; Sat, 25 Jul 2026 08:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784967633;
	bh=ROKymNGin2bjokooN74xMjRsHimgzsf03m8v8ut05B4=;
	h=To:Subject:From:Date:From;
	b=rpRt58M71HALLK6gqwoxfJEL1ARNorVXNq4x9KA9F3ef/0Ckm+GcRS6wSlAE8kYt5
	 VD+SH4C4k7npqfcSnM+8G6e3L1H9YE9/UWcfLOwbqZnLjJQj8ZjirjGkW5yRmWZAN7
	 mnBjOvcNsDrnmSykPj8vg3zFlf5bL5uIGx3EIGVpOWena/Hj950DWHRW/qTlNgpf8J
	 FsuTCJEmwvHK5BitsRhuvPZDjmuSaejjLMqb05PArp1kqhZl90J7zwsYAtqKDNTW9X
	 PjbXwCYfy+B1uje0pk1UuST/LITscaNzaZjTpYREAUlAJSw+Fud8nbaPIgmXrrO5GZ
	 zaXaexQikb8pg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE741C531F9
	for <ddprobe@lists.linux.dev>; Sat, 25 Jul 2026 08:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178496763368.4136.13204114224973033128.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5402194c4f66027be0e511986ede802f94279e74e521158b747c7daf50074fd9
Date: Sat, 25 Jul 2026 08:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784967633
