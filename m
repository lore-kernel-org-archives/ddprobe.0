Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C0663D528
	for <ddprobe@lists.linux.dev>; Tue, 16 Sep 2025 00:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757983193; cv=none; b=a1lhZLjaxkJwQM/WdxAwxFg9bGwTIb05DSmxlYoSumi8xMENx41PWkz9aiYiXqr3dp+3KaZiLHjxIwanN1gbXeHrRCE3jq0ehVVsKvRqajKbbj0M8ITAIdv6TSD30/puOw4O/gg102Ywitz3kghdb/kCdXYnLvGkXmBS1/DiJkc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757983193; c=relaxed/simple;
	bh=WGV/F02aOLcVk9Y33RbniX8EL29EsbpJaVoctZzo52g=;
	h=To:Subject:From:Message-Id:Date; b=EZV5FBHIs9q4qylIHmHV3xDX3npzvP0cDe06CI7Jm672d0TS3FrZxXgBRWg1DiZgYbUaCwn2BCvtPNCbDWtCHHvXtHvrlYtP8PcJcCQhQtKf1m841uwegjTQ1K78fkGke+RGSJ0P0zTPJD1FUi/xDMUQp2oQ13T6JIJpS417RPk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hDD7Umu+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hDD7Umu+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1D83C4CEF1
	for <ddprobe@lists.linux.dev>; Tue, 16 Sep 2025 00:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757983193;
	bh=WGV/F02aOLcVk9Y33RbniX8EL29EsbpJaVoctZzo52g=;
	h=To:Subject:From:Date:From;
	b=hDD7Umu+7sXOVOuWAYz9PThEr7zsxhbDRt2wFg3Ja7jjDkmNnuB2MTPZSugf6gK11
	 3fADELNKAoD4lozjPZzwkCeM/KbsA2V5xhibhXZPK25npnZ2b3Pzfs11TDy9UcmtUe
	 j4PNksQ0ywU+eo2pHyo+KYQydJAVF0KTzHVvvc9bnhT3d3Nju7LXaAMzMHDA4NqM8Z
	 hCR+mmCwi2dBQ/Ew8M+TjjViOZm+6PxHhMN2e6nlO6ast9oScvTfaT9FKANPXdARsn
	 oTx1s3apDmEE/duVBheFHq1ENhdUjRobO9RwB2QD7a9isjkPbk0z69d5XeOFIeaj8M
	 X3umPZAwA3ULA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91047CAC597
	for <ddprobe@lists.linux.dev>; Tue, 16 Sep 2025 00:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175798319358.25640.11377218643575412607.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 84cb45d7fd745765f3d44176499e289011a34f47986f725919f5a41a7724cf25
Date: Tue, 16 Sep 2025 00:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757983193
