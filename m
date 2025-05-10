Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3DCC41DF256
	for <ddprobe@lists.linux.dev>; Sat, 10 May 2025 08:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746866994; cv=none; b=dcBH0Yok4igeQnBIfDkzN1KVFx5FXhtt6GuVuxaMkcIxC5dY1snJ/28TUcmXWfD87uCXAIKCOHNAEEnis30jWPTTzKosDUKtobbvqQqaCq12hf/w52NCsuFXl8rd63cNNfX1TjE0V+KezzOfVUuspgehWcfDTwgc1UtSb+7xJ9o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746866994; c=relaxed/simple;
	bh=6uDOw6Xg3cZHgpqo8dT8uLO+HFwJXmskZMvO/PnLZDU=;
	h=To:Subject:From:Message-Id:Date; b=ke72DlPFQAcXvF7k7GBSi79JJt5geFbsmQllfT8L9MA4YtJJuN1fBf7reBIU95q4/vzKpoSYLo6vXEdMnaUe/D4M17DstoS9r7nmWrFUnIcrhhP3ODfbT+um7d+I/+8tDkfSncebtfCXKpqnNQ8fsSEPzVUSFkd8btIOd4PobP8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XIyiXSfO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XIyiXSfO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2BEFC4CEE2
	for <ddprobe@lists.linux.dev>; Sat, 10 May 2025 08:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746866993;
	bh=6uDOw6Xg3cZHgpqo8dT8uLO+HFwJXmskZMvO/PnLZDU=;
	h=To:Subject:From:Date:From;
	b=XIyiXSfOsh3j5e7oGqvQULMHvxLhRt+g3+3j8ti/YQlrUrqg09kY5TEo0QIASinyH
	 CzVilFvoDtEXSzQcjyKBtz7+JWHab8xCpO7vUnd1IKwfv42yVcN9XK5PaSCoNDmG95
	 vrphlK6z3aVhCt3oEaBRnkYdugxWQ0QyNVx8kW9N1BrjH3uW2fmzcE7Ta542odQmb7
	 j5jQ9JXEf3Dsp1UlpwTBx0bY/mlmnAhi36G2F1TmyVRTvDyksY6xkfKcogH59HT9f0
	 hOLSbOrIMaRjQZXpoJUGhy/7x7i/ayng4+KT1ERvZ0TyKxptIHw+6j5MEd9NtXEkG0
	 ICoWNBSxDgT/g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FA9FC3ABC3
	for <ddprobe@lists.linux.dev>; Sat, 10 May 2025 08:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174686699358.25954.1332638141251236440.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e6bd9e65c79bcbb45a19c190711f17dbce5f68c184cd0589e35adb180fea974f
Date: Sat, 10 May 2025 08:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746866993
