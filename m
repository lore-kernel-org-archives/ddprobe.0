Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 224292F8EA7
	for <ddprobe@lists.linux.dev>; Fri,  8 May 2026 00:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778201854; cv=none; b=WYKij8nXpE86kfhMhZT/hkLqmYC82FK+JcwwU7+TezoQiyZD2iUwfGKDQFwjydEd6wzgTluJqsgrRDnBivQLOaRqYsU6DSuW2RwtR2di//me5noZ9a6Ldf//dgc6FCtEzO6ygiZhd3TSL8X+aC+22PgTPp8D1SqTwBTuxQvwIm0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778201854; c=relaxed/simple;
	bh=pFx54CAKKfV5Z6yt+47fN3kG5dGElLPw+7nnXbPR/5E=;
	h=To:Subject:From:Message-Id:Date; b=rFQ5Zp8cFvwEUVTVRjNflxiRrC0cdMg2T5dhttQ+aLGSnGbielmiwnVdhL4Y/Qxm394egLUMiCzv/xChBqSWZZI9qH6hYCWJQGyCZAX7y4pkdHwO+5zmqFSJuv0Fh+3q4WeXn/hRH9LCfiRQDyf2AY1cXhcIrMFDBBLYoH9YGoY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Lb0lCfIg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Lb0lCfIg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C2559C2BCB2
	for <ddprobe@lists.linux.dev>; Fri,  8 May 2026 00:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778201853;
	bh=pFx54CAKKfV5Z6yt+47fN3kG5dGElLPw+7nnXbPR/5E=;
	h=To:Subject:From:Date:From;
	b=Lb0lCfIgZ3AxeIw5hx3E//DZQFeBzxnp8F+2HTZwEVzjUt81NiOriY2EvZl259y0S
	 qXy/kwjxCGWhrb3OR+NCAbDEdVLzINLZpgYSLfpCj1CpRGkpPu4ZoDVDfJYqDgdtFU
	 f+XPQpBztKpVo9q03EQJi3XT2cinl/btjMNQ47Jeuqnl+2nbMxUQZd6lXVbSbhAERo
	 TKwmeutj38bHzp1rodqcq+ZdtNo8b4mD3jPAFgXsH80uYIslpN5KXkGaW7ZOjjUmM+
	 zGDE1VXLy8kp6CrSDrZtWuzUSfWPjxWtYK4KGwhskAVxeZUSR+SHStcU/hxTQkI96X
	 YSuSPKaOiQEoA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0C0FCD343F
	for <ddprobe@lists.linux.dev>; Fri,  8 May 2026 00:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177820185369.19117.10251130996078091313.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a08e0ec1f46887b3201866505813c7aae7e82a45766c68e10f51d7fb30e333dc
Date: Fri, 08 May 2026 00:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778201853
