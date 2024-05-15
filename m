Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 60D843B781
	for <ddprobe@lists.linux.dev>; Wed, 15 May 2024 05:02:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715749343; cv=none; b=n0YuvHghR+FfsdPpXPuoenOAHohwlQyMADqtr9kSCzmwZ4SXQV+PyzDT9/IgctwwQOelhRLU6EZGVhQN1uU+V0HMn/DgmJl8ZOr/C24gQ121oKDo7xgK4pHz0ni3HY1KTupaE+esUrMvFlC4uEmI5bQTRWuCssfxdY/7JGjDpL4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715749343; c=relaxed/simple;
	bh=fmpuuiWj3QvfJpadDyfeRC9INHRsYT4xFj+uHvC8gmo=;
	h=To:Subject:From:Message-Id:Date; b=VIUaAOfosn3nsjpGqWdUKojFCC3SjPwKyrQ4SND78vICHLh2QEU+5iyJzY+t2X6FmtO42NrsJkULWDsZQAg/VRJvc9i0j6zHxb1MZG5E9Jwa/WwCmU5MZxg/+sU36lTxq02DU1GyAAL5wD2wAmotdsu/FWPO4adqOdChF8beHvE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cbsEH5HL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cbsEH5HL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DEB7FC116B1
	for <ddprobe@lists.linux.dev>; Wed, 15 May 2024 05:02:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715749342;
	bh=fmpuuiWj3QvfJpadDyfeRC9INHRsYT4xFj+uHvC8gmo=;
	h=To:Subject:From:Date:From;
	b=cbsEH5HL+G+EdcA1aNw5LTwrpHzxtXmF/qKnjiPhqBFyInEw+H1cVA0fgX5oovVd2
	 TzLaApfrPH44MeTdv4RvFX2z/by+evd0vWy1lBsufSbjk3KUezoDCQHpMzL713S5UK
	 XvNA2iJkblfiHYUtCOmq9syhgfBXLQhFquIUfIvHNpg+zJy0SWLMPZfEIhNkKvsJly
	 lH6xIX7NxNHNmvLafak2CripWWqPjuD/IHRghNet6VY4SDVgWBcL3V8kJ/aGvkFe9a
	 F5FFX9Qf6e16IsvjrAGS6FQhW1Z3okKxQ9NRwM3uIH+sUkX9mHFx5K7kJdqBSJiQYX
	 b/PcHdKJ/KJsg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C765BC25B75
	for <ddprobe@lists.linux.dev>; Wed, 15 May 2024 05:02:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171574934279.23323.17054508069345104578.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1a8366c8487dc5789c1b9a3a3ae7619d6b1e5d8ffd9ea5f0c1ef93202bc2485a
Date: Wed, 15 May 2024 05:02:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715749342
