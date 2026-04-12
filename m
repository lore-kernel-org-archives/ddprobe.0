Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 407041514F8
	for <ddprobe@lists.linux.dev>; Sun, 12 Apr 2026 04:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775968054; cv=none; b=rFGoLqIqne90Z/cENFpfpBxdSNNiQPjIdj1HIqj5IhN4fZnShzk5hdHS6TrsddyyPUQhY5AF+Ci1kOniKfVWhDDPle3VHvdxDZ+Z0Ylqsu2H4y/tYMUobaaeJ3WYkudC7FyXRFxZmR/63aXZi9L7G9WJJp6u0mFLMXhVBOKp6FU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775968054; c=relaxed/simple;
	bh=E8di/4LgQ0DD5vXXt/QLY4aKoyUnSC1hEj0vxcet+7E=;
	h=To:Subject:From:Message-Id:Date; b=rr3t9HHf40aR4+bWMdnzMcNzAmxLGlk/7G3ZAlerRH060R4NZ+J5+UQNzNKFO3cXwo4tzl75erJ191M2mt2f5KJ1AkM2G9EFPq9WAxOfE4jRDl2sLPjK2aS7SR3dGHqUUFUBM3pkvqNt+KM4Cv67Q1ORln0qS1JMuoxyu08s++8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UalU0XzZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UalU0XzZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C95F7C19424
	for <ddprobe@lists.linux.dev>; Sun, 12 Apr 2026 04:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775968053;
	bh=E8di/4LgQ0DD5vXXt/QLY4aKoyUnSC1hEj0vxcet+7E=;
	h=To:Subject:From:Date:From;
	b=UalU0XzZan+VwxWDy7ZH7pYHSHIFI83W4q6nidMs0o//miAxTyKrPZNVvOFPLP2Or
	 kcTuw1rZPVmZk5b3PHS5SbljYs61OELiEAHTvS/M+yK8ZfC2b4kpwuZMFKNMaeYmnS
	 eiOPEmCZ/4WLi+RsySXlYdwxKgMKpodyeBNHPEk5cF5FUnRhjoTP2BIajeDgoQ4a/A
	 Xp8mCFHa08XpBrlZ6mBEuqMkRh4SQIOOKlUB1LcAY3SHL7/MGizM+vPoFDoeJYcMJD
	 bbNJufzkidxrxo4PokV619z33ObMVShoQ7TLmYpBpDfFkrYYquUiGiIujgLezprO+5
	 Fqfr4GrLpgh7g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEF0BF3ED63
	for <ddprobe@lists.linux.dev>; Sun, 12 Apr 2026 04:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177596805369.29588.575496824304067307.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ea4b506775bb52b65ab8a160b47e2d60e27e7479a1bc2d872a96340c0a3b8833
Date: Sun, 12 Apr 2026 04:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775968053
