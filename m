Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C1C2EC5
	for <ddprobe@lists.linux.dev>; Sun,  8 Dec 2024 01:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733622954; cv=none; b=KCeH6oGuxjKrtFcEM8DIDpGEBz/fR2E1T81loJIRphjEkxGzuJBbiX9lXrEOF3Y6qovHyKjQOY56I4lF16YRgLUIN4p5G77TErjjtfQ/z7PV4rAuHsnsxXDntSsPFPiM7HbGRbhKKP3xRMYD6gwnF9R9Za+AHbrZe6jOoo49FJ0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733622954; c=relaxed/simple;
	bh=ysXhD4k24WfjQdNY/1P2AtH5GVrMf5l2aSSiE/URaQo=;
	h=To:Subject:From:Message-Id:Date; b=Zoq9SnAqpbrkzC3XwsKIjTp+JtizIBy1yPJ+wyYHIU2fe4pGfiDiFmOW9zuyE3i+CpimZYRSJf0DEvll09q3Pkm0+fWInpKKSa8OiSbIXyL/LMnoq+eefwVKrNa9XqykuBPTc6eyTBPQ+5gY5UEuOoq8SYQKAMx7EVqXjbX+7ps=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DCYsBq/b; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DCYsBq/b"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA053C4CECD
	for <ddprobe@lists.linux.dev>; Sun,  8 Dec 2024 01:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733622953;
	bh=ysXhD4k24WfjQdNY/1P2AtH5GVrMf5l2aSSiE/URaQo=;
	h=To:Subject:From:Date:From;
	b=DCYsBq/bA08qkZOqxsbMrHVfBT8PzSjHCeOJWcUECzo13MmL+2mGC5R8BfSERWitV
	 InPII2k8COac49uR09WvzmMBPhHfYMayCSwRHKs/T6JT8XqhjplW6fGA0Ja8TrfEeK
	 ntUNNbKO8QYPXGqErV3GBboWzT79ywlTflYjYWlJCHiB98r+U/58BSGB/kRsHwq8nw
	 BL66P7/woxAFAMx5chykq+xsZvHsv4BqnSOKOLqZYmN2qcA9Kf+uUZ/l1ZHb5QxHTz
	 TyENMJ5X6uttOpG7M7fYEhXBd3WGefloMvbXv1C4otcpRLhAKzkrhR6J2iqAYutF2N
	 IK0jh2Jumftdg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A764E7717D
	for <ddprobe@lists.linux.dev>; Sun,  8 Dec 2024 01:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173362295359.3040.615710298834413308.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 82b224fe508721865d2acc5f2a9c8f4c7c8ad4ddc8a874fff8ac33abbe0a8f80
Date: Sun, 08 Dec 2024 01:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733622953
