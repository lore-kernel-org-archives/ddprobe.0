Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 362F51E832E
	for <ddprobe@lists.linux.dev>; Fri, 11 Apr 2025 05:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744351194; cv=none; b=EwlCuiMCKSaCZCrNecf9wWXATI7mZCU7RT65q8zM04fC/6VZvlgxqLMf/6z0uUGKbvPBJK/G2hBefM1BG9dCfr2chMsIvzBz98X7s/Ucb2mZc2yHLzkrf/9xXeI+dIRcl+ZeCG/Amn6zvlxFRoB48MOk8gqabOHyfXtgkqm5lx8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744351194; c=relaxed/simple;
	bh=tjIsQIajInTokTSTMn8qgrPMs97sr+3yBV2v+C6S/Go=;
	h=To:Subject:From:Message-Id:Date; b=l+Np4CqXKQKVTLjLEfW2IWT73jBdaOCZBnNnc2McgRafwqnLlavyIS/Um4pgMyj9jOVjRS4gnL9s58SY+8ootPhHL0AEfEq5wMIH1CRFt9MhgUCYbcWnCXBZD2noNPwhPcKdgMzUmQ3uGORFa0v0DF3P9LTlRa7n0guAl/jsFbI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ieG+LBgJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ieG+LBgJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE7B3C4CEE2
	for <ddprobe@lists.linux.dev>; Fri, 11 Apr 2025 05:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744351193;
	bh=tjIsQIajInTokTSTMn8qgrPMs97sr+3yBV2v+C6S/Go=;
	h=To:Subject:From:Date:From;
	b=ieG+LBgJvHbQNd+OojUfdChL32xyZg0gLfKto4EvEf/vE6ynKdJC/c0WqDQNEXeCM
	 vwzffg3n/9JM2ALSOIkRtGg8ojIlCwKzdgKOlHbA9auRMNMK9fVx/chS8zTopFVBNV
	 n/Lk8oOj7YBKgoScTGAfV0ivReF+8VtP90sK3y77cAgtN4nhdiu3RDHwqWfLUWxaT2
	 A+ZZ0CzLcT8DLxcbwZ96piwdbAZLyaUMWmpfmN29qa0H6+Ljv9JIeWWny2Tku/xAGg
	 sqF+ZBm6M8KctRdZ89eeNw9gQvaqGXmPlBHH33yVaitBZ4eRwRJ/0U9TYnwBN0wXvL
	 l5TsqS449hoJA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99643C36010
	for <ddprobe@lists.linux.dev>; Fri, 11 Apr 2025 05:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174435119361.27767.3993547322256205540.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7010d066e3a65edb4e3bd6101c06cd0725187959b66cf8fc62e4be19029ac66c
Date: Fri, 11 Apr 2025 05:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744351193
