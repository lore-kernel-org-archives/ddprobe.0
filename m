Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 72E6F1F2B8D
	for <ddprobe@lists.linux.dev>; Thu,  8 Oct 2026 14:00:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791468034; cv=none; b=S9VZd8nv9LkqN2ACploIyVDXbp+9oWNrmdw6RYmgGeslgAPzrrBFBahBKrqwKC72pcVqoU9Wfp4qttyFS9schay1azeCQ3MT322DEX2ktGGkHhBIARFA0TA+X+KIetLMfnswy9VVDihnL/1P98wejUPGFHO495deNs/4Ec6BZIQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791468034; c=relaxed/simple;
	bh=MjRtfH7PT3+++qlSC4Hl3XEnvFUVxsNZnVbW7PjDJAA=;
	h=To:Subject:From:Message-Id:Date; b=ar0d5FqKGxiTCPMGEnaZMvkLyNl5nisLN9wtDaE50ESftrSg5e0xF8FTrNR5XsNqn7N/Dd12Q82OD3GPMzcXkwBnPYZZcTnz9zFdccJZIZLAwUP86fPAf3y0JRNU5Nr4R6xIlToyqOEsHidPBpI7ztYX7XGG5E1vn5FBiDjnjOw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=M8UNQw/s; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="M8UNQw/s"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C6472C2BCC7
	for <ddprobe@lists.linux.dev>; Thu,  8 Oct 2026 14:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791468033;
	bh=MjRtfH7PT3+++qlSC4Hl3XEnvFUVxsNZnVbW7PjDJAA=;
	h=To:Subject:From:Date:From;
	b=M8UNQw/s3/BPiLPHOEno82jdkSermseJLRH+/EuumCc8el9nqKXG5FyXs9SNQB5El
	 2NAo32dSNYVFJK3oylFkB28K1LRt0YtXT4t9kn7TUdrRxe/t7QpbxyF1QEZ/JxNLLL
	 j92R8U9EZU3rlbZL+Hf9R5l27VOOa2d4pJ9Sx2eCRXOFa/MycRUBPXV+ZnNIpi0UHr
	 dyjggwH3hrS34a804clpdqBZacgi+LluPOd6D5GyJyoTr0Pn+r0sV6wmlM1fAQ1kVR
	 fDJci2GRI3Vabyqq96EBM/V5dc+0vkUrbI1ACPkC8hIEJ4ZfF+Th96hVrTaYpg9D+E
	 IGUSAUrvnonDg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAF67CA600C
	for <ddprobe@lists.linux.dev>; Thu,  8 Oct 2026 14:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179146803369.32706.4998514975126414445.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2c1fcdbefe021bfe077351d858d6de09ca5f0933d992f0743ff86b34c64783e0
Date: Thu, 08 Oct 2026 14:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791468033
