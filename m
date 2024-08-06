Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2EB3E1BF33C
	for <ddprobe@lists.linux.dev>; Tue,  6 Aug 2024 10:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722941754; cv=none; b=RVmCOGcLrbURucYWzBeGxrU/z2sJeW6f5hP0q9NVkD2AqrP2T8Au6QAC7jvV8r7I9YszTziQss5ghuNG4g1acu/MgXhKsi1Ip8VHQ1qWKTIrBZebpBsLNECW4rWu80hh79rwXr6VvAAanNIISq9eGU66GOrIqUwfJk0D7MHq/eA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722941754; c=relaxed/simple;
	bh=AsWuDuVI9ciiJ2ErS9I5AHWYbR+orZBjX4glL8+wAu4=;
	h=To:Subject:From:Message-Id:Date; b=Uvm/f/ePK2hc5yol1u09OGQioEhSZnCbDUVsW1+2REW9fHNE6rbnmDQlnpkb86UzgWRdryRShh6f5Di+hc1HC6jLODpgSq5MBaso4juQ4BcyoaP8Bkkj0w157aCcIq05kFLDSJoN0gmCesoAqMJQNiPYNwLyN/MpZ+77qIJLwgQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WqVserCF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WqVserCF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A702FC32786
	for <ddprobe@lists.linux.dev>; Tue,  6 Aug 2024 10:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722941753;
	bh=AsWuDuVI9ciiJ2ErS9I5AHWYbR+orZBjX4glL8+wAu4=;
	h=To:Subject:From:Date:From;
	b=WqVserCF8iopAdgSJa2sCRJNVUxPW4mk7zJUxQoP/uM+9nQlmApGirgTdaIlIZZ1q
	 OMNYfW9XxVBlxV5s1uwJQ6y9cUlYJyFwdl6wN2GAg3FMONItwQDmaa0qrrkJAOZouO
	 i7828V5ZV7fk+ncb9rCvlja2ZXigxaVIu+5TX6dychuOUbKfU8Gu9iXu+hLO98IN27
	 OWeIVhoq2MG/q+eyNKP4/osfJrE+oOrbdflyGi2+lz7MJ3v6TmFVQ0WfscMS57eKxP
	 WDd1pxCyewQq1Cx6/29JlPR0HOjmZl7IlbghF98Fag0r0+3MRWuz6BErdozLQ1A3xd
	 pJCu7sazvflmA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 901A9C52D6F
	for <ddprobe@lists.linux.dev>; Tue,  6 Aug 2024 10:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172294175358.8121.6708548709527249740.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d56ee33f4dcacd7f19b09a21117f1a5e7aaf3fe825293e8bed2611a5be97805e
Date: Tue, 06 Aug 2024 10:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722941753
