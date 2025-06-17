Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F27921507F
	for <ddprobe@lists.linux.dev>; Tue, 17 Jun 2025 10:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750155594; cv=none; b=azQYV35+q/jV9bMhqiat87WavtZCab1qzubrSeGIKTeM8tlSKyiNvkvKysBYS0Ez9azBsfWveN2RUfN8ZeQUFC9qEIqmKRUxb6htgx3Muq2+CUwC4YX2PEedaTAHtLAbPMx+NKV+Bjh3KDQH0bkbwQQYl3ltSQujWVf1ksQSC7E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750155594; c=relaxed/simple;
	bh=JqpaXvHI2UD5vRbVwnr/4leS6+aNCtS/3t80dfKM2Xs=;
	h=To:Subject:From:Message-Id:Date; b=D3TSlYuZaXD/S0OTWvSlvogIcHAMJ3/fMe9xgNsAF6zZjEn8kvK3H7I6/ygifO2QdhTnRz2i17Z0WYkmX+sDq3b7Rgpv0NlndAGaT7fwDcbPbVh5EGEou3T2sa9hSqgby0KgL1oKqo4nBEx2+PSD1BQ63d2KOxc+dZP5w7XDwU4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=C6bxidN4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="C6bxidN4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A537FC4CEE3
	for <ddprobe@lists.linux.dev>; Tue, 17 Jun 2025 10:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750155593;
	bh=JqpaXvHI2UD5vRbVwnr/4leS6+aNCtS/3t80dfKM2Xs=;
	h=To:Subject:From:Date:From;
	b=C6bxidN4BeXt3gcBUUVUBrd6NUiACEWgmHWnjH0KsyLdlPj2maylM/k0db2AOZlqp
	 d+lXrtLK+bVcGvXUPmPMjI0QFCQCin7d1t27K+qJKljhrajxDRsXhtmGBS27Xfodia
	 oOml9HN3uqZlB7xezvt9vKo9R9mMa5NwPmM+AbpLxFHB8W0mDHcwhGlIhxAnBC0hND
	 bs7BH9GkMUyJU69xWSyRl6o0dnL4QJ8UujyT2nfY5SIBEmFyEeb6/JF8JnYOZTN0l+
	 m566SfiEBhXTgl/jR8ieBJZ1GGNt0rGWUnz1HkQ6/pKwznoiwrLq0vnn/zdX2NDRNQ
	 rwpS9x6bsuVYg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90111C71136
	for <ddprobe@lists.linux.dev>; Tue, 17 Jun 2025 10:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175015559358.29850.11781279934694922576.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1666c00c8e708fa91d3c0c4ceb711a390ae51a560ce4cc9d732f6061062c68c8
Date: Tue, 17 Jun 2025 10:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750155593
