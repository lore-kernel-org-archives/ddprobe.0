Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20BDF274B35
	for <ddprobe@lists.linux.dev>; Wed,  3 Dec 2025 04:52:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764737574; cv=none; b=iNcs4E8NJpJl0DanDu1GMes45EdpVM+jgFOhL8RoWqX599/bMez5X3anRqbEv5+oR1n2Cgzbggs2fufiwegSZ27texueAe7x98ZO+EThZuu2NLuQCceryBc2hxT3zfjVFLdRtIGYYGPM3Br2g+FBB26L9XsSOyakZ9vvr+32s8I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764737574; c=relaxed/simple;
	bh=KuxSnsAFIIGB5kvCSws7aJ8SsFWg3wonusdlujqSvf8=;
	h=To:Subject:From:Message-Id:Date; b=OpWkoGoq+z44j6VQcz0SyNBzGyrmDw9ahWJGNe0CO7TxEYZxPmvKDk+ruwr6QQHRUqbf7+JTCy9cKuF465YEjhjcRWPCNK0M5S/+GEdBilXjP4tGbRhIq5qPSPXWSA45u+YZptauMaT4D20K8HwgE4SBtlzh4SYJMNlym8Fmp0A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BbAgYtNi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BbAgYtNi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A643AC4CEFB
	for <ddprobe@lists.linux.dev>; Wed,  3 Dec 2025 04:52:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764737573;
	bh=KuxSnsAFIIGB5kvCSws7aJ8SsFWg3wonusdlujqSvf8=;
	h=To:Subject:From:Date:From;
	b=BbAgYtNiHZ6JWeRIjC4cGuxZN3qsbCxnGKCgLTOxT/jZythBbFdKFYcla78Y+0atb
	 92cb5ip6e9jQJ15wX6uu3CQeTjw5HPUy+/pgBhYmliSPZxMxmS8tUsrAg0SNyVEKvZ
	 c43UtV5B5ZNwpiNN2ct1RQAHB294UoDE6stvynubDDEkqslPSG+gboiTHABktSKGQl
	 BMOJ5hXVM3nMxw84rlgy5fRlJc1Cpt2aPzUvCIul3mtE7436wplTYyCxBTf/k6TSmp
	 /eflqoqETo/wkC96ofLaiUZEwUiZoDfc0FSZnXI1hbICub+zsUmAV1iC13WjO0dqJZ
	 quGvlAEiV+qsQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9432ED116F3
	for <ddprobe@lists.linux.dev>; Wed,  3 Dec 2025 04:52:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176473757358.4430.6682038373440709064.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 40d0b37d32c0cd5b95f89dee496ddc6ccafacdb9132f6f2f911fefb326803b6b
Date: Wed, 03 Dec 2025 04:52:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764737573
