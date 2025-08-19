Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1BB491F8EFF
	for <ddprobe@lists.linux.dev>; Tue, 19 Aug 2025 01:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755568794; cv=none; b=LiQ/lBT68P0ot0uVcpL/cuKyvJAkhYL2o830pMHk1sSQAqv/Z+xmiXPnNf1W0JU+FgEuAjEiEFlcU3Lkg3xrxUgof7lZKvXZ/wikneLWzzk87R5xFir1w5qbLXztS6jCoW0vO2XidmR6cLJ+jFe4jAGuLHg25PF5tUs4s97X5EY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755568794; c=relaxed/simple;
	bh=Zmvexr/36x8ClPh6z0l7NdD0qXRY9AsfgvOnXA4gEl8=;
	h=To:Subject:From:Message-Id:Date; b=DVL2ETHnFawzGyw7jbRVWJppmrSwMhjruORGHzIpEQ1gWSTwdPYfBgdWDs01h3ofbaAVa5ur9fv7Ml2Sce17NQH0s0YWzUQ7hp4eXdCQv8bmE+BJriOt/6Xh+vDtgd6yqnAiUutQq7bTkXQBALw3rj9WTnIXmjcHV+zVPxJIrKg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WjK1Lad9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WjK1Lad9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9CB8CC4CEEB
	for <ddprobe@lists.linux.dev>; Tue, 19 Aug 2025 01:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755568793;
	bh=Zmvexr/36x8ClPh6z0l7NdD0qXRY9AsfgvOnXA4gEl8=;
	h=To:Subject:From:Date:From;
	b=WjK1Lad9zgXXfiwQHRHqTCrddrK5/svehQxQ+E8Mq2RaMdBXWlBJ51sAYrEBWqqKd
	 akxiY2Zl6lZyZUWqm0SgzJVz1i8m0iFGcQejyqjFSyDgA3g1G+NlQLtHUZvs3NfBgM
	 9TiWjiUwTyJc1rjMz9X+jIj5wJTfqhsgwpgk37eW1SgohNjtKqz6zBRXSiPQAd6trE
	 MxEOHyVURhdbfUuEiXi/MV5ZuwPRba2rGBeeZRkag+LnyYWZiuh15NbNCyXaTmRWTU
	 SMDaGJVq2qolXlFM2RraW4KyYEjieW6lYjZ4Nd1CPjstYuovJhojZrrgQo7kpc/8LL
	 3V6t/4S2C4JhA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E948CA0EF5
	for <ddprobe@lists.linux.dev>; Tue, 19 Aug 2025 01:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175556879357.27418.13109539391596408005.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fe9a76981c45765f18bffadff2358d43ac50c7cfc458f7cfc9610a2c18fa2af7
Date: Tue, 19 Aug 2025 01:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755568793
