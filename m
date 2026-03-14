Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0AF8025A640
	for <ddprobe@lists.linux.dev>; Sat, 14 Mar 2026 12:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773489894; cv=none; b=TEoZ7/gH0ZzulNksxK23k1B7GQYt2TfGowr5IghNX3Ra06sZj2hb7mIwczMRvSZ304x4mNUovQN5TRnNKEIlkWivd87HzaKSmLytNkpLdzm+WmuvyMatH6EPshwTMuVJ8GOZmqHSHRbbVsujw6LFIl7+BrU8Ntv+XNyCz6Rm6cw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773489894; c=relaxed/simple;
	bh=QMyq6BO3EeVPwpUeF0W7w6LtqBkCayR1eTstWlxoyaQ=;
	h=To:Subject:From:Message-Id:Date; b=kszMNCnEFmRusKZQyVkSUkPDT4N3vOkhuNCSinefrGMmpNjXDvDjvj8l53kumqct6AjTrGb4d/IPsAgc1OoAkPnSNbUxjVZInKmF3f4kkZHX0IgPZgotfZEr7hxIZwW74g69xlf+aHQ5YuEdK3hXnp4PdJGF07pvBRtYesHedR4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TfuBIX4q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TfuBIX4q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A45E3C116C6
	for <ddprobe@lists.linux.dev>; Sat, 14 Mar 2026 12:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773489893;
	bh=QMyq6BO3EeVPwpUeF0W7w6LtqBkCayR1eTstWlxoyaQ=;
	h=To:Subject:From:Date:From;
	b=TfuBIX4q8Kf6bURK/CqDCm6pnKOrxoXOvm+xCauUqi72Bv0UuKZGXTiH7JVW4SPeT
	 EVuu8VL0H8u6jowx/Ug9joat18MlyXKjRNV/TPbbQeXbbfDo7jgP6J8od7LTsiE17j
	 sqnXMw2SsgFPTMSr2Ou9V870L4SWo0LA0k/7/7vh6vTIZBqU/eR21uAyrhWfjny00n
	 lmQmP9cwbssegPnA8ztJLaQAVcJnx3tpeGMp3iW7yXTDAx4Am0/EJ3Kq4jKUqgV1Vh
	 wtuJNquckKcK9+G5BOpfh2UAwxD1anBgifgCL7Knx+Hp/SSp2Jd9rXi8P9HiWT8Xp7
	 uslmeKSxwdxgg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9639510706CD
	for <ddprobe@lists.linux.dev>; Sat, 14 Mar 2026 12:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177348989357.471.13592516806364469466.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f816a6d994dbe4c01f2b3fe9850f909f46ff7831917793f375355c507760e8b7
Date: Sat, 14 Mar 2026 12:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773489893
