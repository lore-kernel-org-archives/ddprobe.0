Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3343315E5BB
	for <ddprobe@lists.linux.dev>; Mon, 31 Mar 2025 08:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743410994; cv=none; b=mewGOox6TMEJ7NCCidH5mSdR9T0UfSsdXMLzFYfkAIucAbdiWqi+Fndj9MkQFTDBijamF/tYasEGvn+KzI0rJEMaj0Xq0iF89uHfuozibxUbAN6ojsKRPrXE6sR3Z2olsiURC8m9UehvtSaZp+D0Gt3bmvS613GAL2Xk65J/S/s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743410994; c=relaxed/simple;
	bh=7WVjn2MMocUWAzjcHTSIdipXLfCLuRIamIwfJ0telpc=;
	h=To:Subject:From:Message-Id:Date; b=h2HHIjjykJKXUXop8IfmXA9cf6LncdkiZci+xx+bhqDv661HTCRN/z0bS36SIyV776qWVFChZ9LcWnYXnxhBbJb6ohyM+jrJTQSNfUwyjxStqdXtrYzxrl5+8iHSmkGK/8I+YTxEydniMnZba3kNOnsKKWGUcn0cZip1g/m5qpU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Tk8YZPR6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Tk8YZPR6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A03BDC4CEE3
	for <ddprobe@lists.linux.dev>; Mon, 31 Mar 2025 08:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743410993;
	bh=7WVjn2MMocUWAzjcHTSIdipXLfCLuRIamIwfJ0telpc=;
	h=To:Subject:From:Date:From;
	b=Tk8YZPR6NikqaoxCv8YGMbKhvjXv84Mi1vVECynjNcMIYHnsZS7AD8e9jkQnKRtl/
	 jtEOTE6CiJwE8qIpTtJyAUp82ndYO9/C5Qt2P1khorLY+NbOgKyoW6Rtaf0Rnbraj1
	 EbTfiKgATryF2kUUGGEQUW/S5pu9FH9Ag6OU+sql981ECZWa/9GVcgviVn/wLGRX96
	 tEnKUZxcYnzsWz2K/Eo6wfjmwWXaWii4sD3Eb7pyP1e6S62hCfDxviysF6oCZEYMd8
	 W1DlBhtnYjxJMr8DNnSbSITJmdRz+P80l2UqEe0fAxK8Mgz6yqqBPwkFiSM9yoabCV
	 lGQK+DQv1T6hg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E69EC3600C
	for <ddprobe@lists.linux.dev>; Mon, 31 Mar 2025 08:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174341099357.9216.12194086868134074187.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 74d50477b38c17dc648062601996f005adbd5265625e9ded697e8cdb221cbc6b
Date: Mon, 31 Mar 2025 08:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743410993
