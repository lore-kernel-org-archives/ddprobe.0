Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 411C67260F
	for <ddprobe@lists.linux.dev>; Sun,  5 Apr 2026 15:25:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775402734; cv=none; b=J8VDjz8QLrXD9+jS3iwZ3p25gdW4dGOxCiJOWjT7uTJinIEICxHQth54lVLLMOkxRkoGxkKjcJ3G3mEpfQACa65AgE1azjpxEtLao92HrkD448/AITxj9u9sGuM0nL2B/PyduAzhCO8xYbgu1PuAo1xoWaJEGhLeyDgLQybJp2g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775402734; c=relaxed/simple;
	bh=7onTw1C5a1P4zwdJNbrFekcb/dLjWAPBtx79GRcZO1M=;
	h=To:Subject:From:Message-Id:Date; b=pe97xBzpbhA9+GMp9Wao9qw9eQ0F7hmhRhFYCDSoMA4e9QKlMOE0Nmg3Bwvo86ejFINRL9SveayqybQqw3lszDZb1rnPuV62IhxLIZlPJCtvs8Dp+mHF2Zfv1N6Eclr8GUbeRwVMJLx+bMLOhbERf/deaoBeDv3UexTE5C0uhh8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XNUHzfmE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XNUHzfmE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C4E3AC116C6
	for <ddprobe@lists.linux.dev>; Sun,  5 Apr 2026 15:25:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775402733;
	bh=7onTw1C5a1P4zwdJNbrFekcb/dLjWAPBtx79GRcZO1M=;
	h=To:Subject:From:Date:From;
	b=XNUHzfmECpoOVNoxYz/LbY/2BI3Jx+RhJ6ec7omB0ewU6jzutYxiIjtSuTnZLaDD1
	 oX9tTh6SBEZ2TqzZbfvkdYdOsV/8v22bAi9b6wIJB+8Vmsgqp4HcB20jd8Ztn07Qkw
	 N0cF9iBjF8lgrNfHGQfOLHysYzEeR8hOz/RUztGyFz5irfImHNEIndqJqTmWMAyFBE
	 Z5Xsu2aF0VLfgYCXJ9qhSSf8d4SPYMMeU1GL/3pg/XjD5rHI/v2MoYVang+e63KlLB
	 xpv9Pvom/2znIy1zu/3lgeUqfgUZ0G4llNfNjVP6v7wfqIlx44h7RRmbRscOA+okuC
	 7G7tQzwr4G7Qg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF2F9E9D809
	for <ddprobe@lists.linux.dev>; Sun,  5 Apr 2026 15:25:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177540273369.18935.12026540791798783037.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 25784346c988d24cd712bbf47340f92a66cad203bbac6d9eba6e0eb62a5dd15c
Date: Sun, 05 Apr 2026 15:25:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775402733
