Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 17E46309F1B
	for <ddprobe@lists.linux.dev>; Fri, 15 May 2026 10:50:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778842234; cv=none; b=Ywq1e3vQiepZ5Coqx7DJEubaTUmnZkZJUbLibEk+YAwstrIw6t6AUzgKmnuN4q7gmmT8xH1oB7z/HRm6gVEbhvNqo+UABNdJ4wR/ToEC4+ZqhxNwVuogHaUIYMEE0NWro0XwM4GBTpqLmpjVevLO3O7ih8p7wVH6wJ+9xP+Umc0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778842234; c=relaxed/simple;
	bh=bULycrwWGeHU0pvSnbqDtF70EptCrgIcLQlcjaE4UFw=;
	h=To:Subject:From:Message-Id:Date; b=PnSgvZRl3Kl/q18pTIwAXXzuHGJfl5JYyuEaP/KMxDMSZtbO8ZA1JwVuLMwurtIoL0XajImGyMUQqABOM6y4Dusev1wFpeXQWgEXuLUAjGHssZxdZC7qm5Mkz+b6c+U+dPFQdXNKQI0n3Xnp9zdfDIe+3BCaDHsHWQI6UIxaLTM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fEbhq6Gq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fEbhq6Gq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BD536C2BCB0
	for <ddprobe@lists.linux.dev>; Fri, 15 May 2026 10:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778842233;
	bh=bULycrwWGeHU0pvSnbqDtF70EptCrgIcLQlcjaE4UFw=;
	h=To:Subject:From:Date:From;
	b=fEbhq6GqTlPB6g2thOml4mWJz8bSH5wtb+GGeI/KYikE5B3L7Acu/Co3iT2ZTD9Nf
	 uej3p+HplIWqd3jbN4FPBGzPkVRr8FxkuET8PWt+N7bc5zXha5wNOTEK7lyqhYfv9D
	 m7lxycGk6p2rnxCBoA9O7rBTnFnjiun7JTYo+ccDRyYxnYyAsTMRPrXt2B2R6A+XYN
	 1P3222NrlAe7uXtHtD8OFA9G8VYg55vt6bOavK2sX1pCyXyNLQa4wDKmu1qZrnMwYi
	 k5d9y/UnL+2V5en5TKboVCTeCvmL1zFZRFutJFFFYVxCetZJ+GyKJuh4toHtEZtvDN
	 x83pPDvWLFSWQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD51DCD343F
	for <ddprobe@lists.linux.dev>; Fri, 15 May 2026 10:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177884223370.21987.15313615660577667299.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bde4af2694406445aa4158c093522043c235b09c1c8c6985056f9343d6ed2e56
Date: Fri, 15 May 2026 10:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778842233
