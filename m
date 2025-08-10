Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CA0A23D287
	for <ddprobe@lists.linux.dev>; Sun, 10 Aug 2025 14:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754837394; cv=none; b=EH7rjoaQFuCfuwPQplqGpWy+dUEcUGRaPCbvBGPEGPZvqXMPbNx3+wxYy/wpjZwccPyqVv5yKmeYsnP1eN1XhsuRCrVZgMNqWT6PfEJsHAtuiKGFCj7NX87ZD52Op2x21h04XYGOLcNCS3ZCIwJ2StYI/W4TzM2CE4zVoynU/bA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754837394; c=relaxed/simple;
	bh=Cv51ewOcxuujnpK4VnCwOastFzjeVijlKR8qbC1S7B0=;
	h=To:Subject:From:Message-Id:Date; b=m3gKTMeBaekqaw1HXKMxgznICo9ULgHet/iaWLJ8IoO/wbxV5H7+pdosdC00LAahnlPMJyY2ROZht75sajooV9buaYYl79k0t8DNmJnZwQGXG68kzMQqlNfcT1V0HBUmEpURiyoS/V7WcVT4zhyETjw9a8UOFdbk+u2sdGmG/WE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cwNVgoEd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cwNVgoEd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1DABC4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 10 Aug 2025 14:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754837393;
	bh=Cv51ewOcxuujnpK4VnCwOastFzjeVijlKR8qbC1S7B0=;
	h=To:Subject:From:Date:From;
	b=cwNVgoEdDENpgsrb1HEk1KLXeChzUweBxbqCqlkbC2I24tu6ay/Oceof6f+kQrbDP
	 Uswig940TAtDWd8nqKqszj3YQfdhm1JYnwpnF5oO4cgGefjlLZ//j6Sgaph/IuZALT
	 Nj6clnNGfO6qnSORlUnOgzUxxEnHpJgqZiLgHJV+jdSIpsVLwhXM/YCM4TNCxqfYkY
	 UPuzFTkjlgz5CBaF+9PCPT1unk3b9ShvwWy/EDKpE08Yuh5SUjmLj1nMrHLQet5sa/
	 2d/9FTeUvUkxcNtYVrO1m3Kl8nz4qlN7w59olNmjIeu91isgdrJcdHcAhYp8yUyGzy
	 QgEG/0J63GjbQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F744C87FCF
	for <ddprobe@lists.linux.dev>; Sun, 10 Aug 2025 14:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175483739362.4044.8582373588787557945.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5379335fb7fd9c18348bafa875b2f9713daac8381b45dad0481e058c45d4ac87
Date: Sun, 10 Aug 2025 14:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754837393
