Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7270A15A8
	for <ddprobe@lists.linux.dev>; Wed, 17 Jul 2024 01:35:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721180124; cv=none; b=d+78FWmFhKVlW/TnzsYGk2wuZBTeI5z2kmNDVV2cej60qBEvKOqjLLH+XfJ5t6wi0KjpkVjRgCWFdUbhP+FocDpL39orFAEs/2WVD9aIXiUfyJCO5vVK5THY1J9eA9PkwWP75OTD5dyt2XPQjxKrbCOn/Bi0w8qfV+JCNcGHO9A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721180124; c=relaxed/simple;
	bh=z1oXuD8ZTky9TrtfQbeINlfiwmWretlNcaWN1mhamM8=;
	h=To:Subject:From:Message-Id:Date; b=ts2GAPr6KvlmdOfgjmi5LCKKU+nSVFhBfKswpmUzFU4V4qXH9QQzoaKaj4/ViDyCXoluyR0lRNqDvCJJZvpiFr9gbzjHEYtIBH0sCO1iJP/iBJa1E7OKj6f3ZN3rYFOOe2PBiLRPYUoVF1SOZrMzuG2E+uPFGmlcUMDLWtQSGY0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=myOp48av; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="myOp48av"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E7639C116B1
	for <ddprobe@lists.linux.dev>; Wed, 17 Jul 2024 01:35:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721180123;
	bh=z1oXuD8ZTky9TrtfQbeINlfiwmWretlNcaWN1mhamM8=;
	h=To:Subject:From:Date:From;
	b=myOp48avzBozOsWlvwd5lpVU9ByUR5o4iU0Z2RRZCME3uqj7XWa4jrPhVpfw3jPwd
	 6oXtfbM0ZoirkoM7DDxNX3z8U64MCe86cbzk/UmvJvJXsrnw00tSH/jtB3TySiXahj
	 ADI9KWtv3sZtDEFPoBLkdysQoP4VWoMYva6p87cSuhoQ6+g3ScDGHd99yFHovpSFnY
	 JqxibeKc1rP/Zz1ZeF9jge/c7JdoBWRhNb9ncm00PXn3gW5DfPUyZB/FNtWh24tM0m
	 KVWwXFkrk3paDF+O3eiyAX6U2NoMuIMcvr/93U1tuctl8xCQeU4u/BFC90u+oVYDd/
	 2xNfMAqBi/P/A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CCF2EC3DA49
	for <ddprobe@lists.linux.dev>; Wed, 17 Jul 2024 01:35:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172118012280.3137.11735609397244151110.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6306901ce7f01aa941221291adf277e08ab5662aaabb255466db5764e7445317
Date: Wed, 17 Jul 2024 01:35:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721180122
