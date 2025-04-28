Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D0FC72918C2
	for <ddprobe@lists.linux.dev>; Mon, 28 Apr 2025 17:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745861393; cv=none; b=HsLUUH7VpPjU76isMj289GjqK8CqucgmoPtmDF2AUjYCQpvJHUMPrYonYk7j2nG16eT0fdYC6MCcdBC6knNM8iMgPDccFnWmcvmixHzRjmLo73z57KCeAGcyQ8JRBx1TfdU9MslKPeGuV4F/TS5WKIQuLXex1WsbNoDbs2ZdKFQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745861393; c=relaxed/simple;
	bh=mTXFvLxGiSKt+q+wUb8csTNxlEwhPRkbwcVxSk+VRcU=;
	h=To:Subject:From:Message-Id:Date; b=r/43FrKewwlWce3JF1FfE/4mjKsWqz8dI1uUH35haVBe3JG0Z7Sz45Wrg6XESyLhv6gsRW95rru+pisZoEpseFlLHik4aerBBKbwmvrX6j7mUyqWgBrS8y0vGwv4mXJDlya2exNKSxiw27RlVa9N+xwrOyxZycZFxUh5dOuIGCY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=f8e/hXtH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="f8e/hXtH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DA25C4CEE4
	for <ddprobe@lists.linux.dev>; Mon, 28 Apr 2025 17:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745861393;
	bh=mTXFvLxGiSKt+q+wUb8csTNxlEwhPRkbwcVxSk+VRcU=;
	h=To:Subject:From:Date:From;
	b=f8e/hXtHhJUuVKEtD3GTc9z6T2+6J8/8WJlBQ2RgQQz4Wi03Xlu5zieluAOmZ27VI
	 JgBqnRLjjx4tac614TRMy5pNbvSIdNhs5q2s4O9j16mSPeZ9uTfXGK9/GqecesxVf0
	 rtWkq4xbqk2dtOGAQqFgJ8grnBE+nN837fWtKzxVbztGj8gose7gF+wt7+JW5DW3f2
	 TRwEchYyUhMiLnLkG0Jctop+eXIlvD8on/vR9kFW0Ruw58ZGsUFCo99fj8Cy6CrT1p
	 bp0mqLY5ah+l92gv9rnqa91Ug+e1//dmGC9jCX4oEDty9NFu57PhPtkZOW8wCCgp9J
	 5U4UsdIL5aMNA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EF44C369D5
	for <ddprobe@lists.linux.dev>; Mon, 28 Apr 2025 17:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174586139357.7482.10251693748096248070.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 18dba412a2e6d803233313055c96340ede17b395e5b924f052aa618301c7523d
Date: Mon, 28 Apr 2025 17:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745861393
