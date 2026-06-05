Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BDAD33F8A1
	for <ddprobe@lists.linux.dev>; Fri,  5 Jun 2026 14:24:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780669474; cv=none; b=ja+XzgNOQYUbU8PPsT/64Ryf6nL0Se46wwM/7ZmTJXzsZUfhUxJ5WyiOjfhiQ+W0+u6rOgPDQAvznwrF29W2NPMCc71zoW+mQH8Ik14iR98KMBoLqVbxhzWYLqXpzcyH6GsJNnPE1C1wMrVYC9JU4y9wixayX7Pm4v5+VxcuyBU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780669474; c=relaxed/simple;
	bh=JBkHMvBTRLzf/448EoPi0bjJo8hVQgXV5hCfP0hJph8=;
	h=To:Subject:From:Message-Id:Date; b=h7qGhT5EMm0H7ElXsDFbcqNWStQh1npoAMY9K8JV5IuPutIN+mlGW4tqjHyh8Ek7+IvuLNfLwq276rVBFZGoLEFJdVf+qes99PPCbOZmNlTCtzjBldGsu/AV2/JJITC9Wf2SFi19fCYzQ+700aDxBf/vBH2iTNrmIO/p6HDutDE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rDO57iwV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rDO57iwV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA6E9C2BCB9
	for <ddprobe@lists.linux.dev>; Fri,  5 Jun 2026 14:24:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780669473;
	bh=JBkHMvBTRLzf/448EoPi0bjJo8hVQgXV5hCfP0hJph8=;
	h=To:Subject:From:Date:From;
	b=rDO57iwVTk9tHroG68FxeY+3WhAgrGEx9w7v7L332LpMscy5w9afny3bUDu5Wx8V5
	 WPdkFLxy92q9vQ2N4TlEWGdZqUZhUbrtrX9aAKfLyKSHIiz0bDWoFuwAbSnRxMzC1Z
	 iUTbzTp9CptBjxTd9yF2jzCRUn8q10bHdl441ETE9yMiX9FR+qvnbUmpU2TiqJbNFM
	 +uz/37KiTkyl4XKFgdmejf2LcYM2gA8zsTlT2RCCeKWX27jee/4CeX/B1VwehzPPlM
	 PmygsDljABmUOwaXVMNfo6WtzPEn8rTgDJRAv3+ZGPVU6sxjHt53nPeFXUhTWf4PRI
	 cXpu6ktOB7IYA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B7BC3CD6E7D
	for <ddprobe@lists.linux.dev>; Fri,  5 Jun 2026 14:24:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178066947373.23609.172818624672108531.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f13c00a15a70369f6af89d7df1824e3c89eaeca0d354c26b78dca83e1f352bc8
Date: Fri, 05 Jun 2026 14:24:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780669473
