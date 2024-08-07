Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31F881386C6
	for <ddprobe@lists.linux.dev>; Wed,  7 Aug 2024 18:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723053954; cv=none; b=FBs7x+biOMN34DZtCY5eCfXgqTlHngCKaj6Vcq0YnrKLwjDq129JusPZA+raXPgPBk4b79R1z6aBUW3Gi6m302KFdRQ1YcsTz1pk6ovper17DXh6mUy6nf9rBoIp+DAZ1rVOoZ5P/smZndZaRMTPb5/fIQfLZ0Ws2/m8urG+TL4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723053954; c=relaxed/simple;
	bh=UKrPGiuN21p4AvZJlZnW3+5xnr9zdpWOZPk5/YPMqGM=;
	h=To:Subject:From:Message-Id:Date; b=F5f3L85/3d/u4SQoSOqIDZr4GbHVGPQenJ3zIVQvL/v2wazkzvF0xrr59Bik7fcnawBdHslCVGYoqR0ZdoOWeUoE7KEBaG18zR9PAMgRt5BnyHTdwVP/bKZgnoeRbdjIT5vLLi7/KOraqRlD6jp99Tt0btHPEBEmdMNDseETAYA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ypq/fwNP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ypq/fwNP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7995C32781
	for <ddprobe@lists.linux.dev>; Wed,  7 Aug 2024 18:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723053953;
	bh=UKrPGiuN21p4AvZJlZnW3+5xnr9zdpWOZPk5/YPMqGM=;
	h=To:Subject:From:Date:From;
	b=Ypq/fwNP354gkLo1MraSjAYyE4rP9gxTKloVc7ayuUwExNf3BP0pNR/+QRP9LfjuQ
	 LZ0jPIumnx0aLoGmkK2DATn2sgu3DQbIamK7895hyTMwNeseYX806ibwussxl+r0LW
	 qVDPButsj9G5W4KGlDklGEPlxSJeKZMKmL1GW20e8aGqH19zKWbPsFVw0RDED9Hc9o
	 0uU4HNc5uTd+KnFd+9C5UyPeZMG6EVnrYsxTrs0r96919Olj2y6sE6Hlu8oQLasvzz
	 4MBRNHSXIQcuO1zzZQlG8dFaf2GqKA4I3IMun/ZbnucW7hILNlO7MweQV02rzO0u6n
	 L4o0ZCRbvTbSQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A3E2CC52D73
	for <ddprobe@lists.linux.dev>; Wed,  7 Aug 2024 18:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172305395363.11436.14995479218306709727.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3fbcc1ab82b1aa59136b32f2f430fe72e9f8d26b6ce68ea20f7334ed63c9bb58
Date: Wed, 07 Aug 2024 18:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1723053953
