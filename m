Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 10C7A2F83B7
	for <ddprobe@lists.linux.dev>; Sat, 28 Mar 2026 02:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774666494; cv=none; b=UKdQv1QPe8nYT8CDi9VGnRByQiJSc7GuiQrNDHxU7zcF6lWcPyT16wg79GBoZYTW1vpNxb4aPiSQHZoLyJD4aFuC2qRBUB9LD2+ZeVKXgZt97FwS52SI5Hqk8+5EWhPQXWlOXbq46U32PafEjF2f12LU6w40EJh9ztzvjMvgnjk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774666494; c=relaxed/simple;
	bh=m22eApZJuy6ZJyy/lLXywc1vRDFdwaWnMGdXWUSsCXQ=;
	h=To:Subject:From:Message-Id:Date; b=ZSoDL0o4O91DfbjdU0VjydeonYrEDAsPnejtPLu8QbiKNuG5YOJ26csv0IsxfncRauNvdrMCrQBwAGAggMRcMGlqTdXNmx24z7TYrMTVJs9uRSSvkmN23bjSRB9Gd/WTxANeBVz60H6WNSIJcH6tjlzB6mGw8PM4eTemdzLCWeM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=icOchSY7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="icOchSY7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABC53C19423
	for <ddprobe@lists.linux.dev>; Sat, 28 Mar 2026 02:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774666493;
	bh=m22eApZJuy6ZJyy/lLXywc1vRDFdwaWnMGdXWUSsCXQ=;
	h=To:Subject:From:Date:From;
	b=icOchSY7zhDwLE0hy6v8DZK92MhqZLZDtT3GTOHiautiGtr25tXAq+1l9I66w4rQQ
	 WoPxrv5xk95Uz0DLBdrakR6HrShbmRZtxSquK5+SMfwfDetMxhJ/xsS2KmbOY+zl1h
	 yib8PHkTnHfEp/9Uuot39niaAnNeJ+8Y2DlEgxYvteKqwTfgZcsEffdJjYscVJI6Ek
	 H0nhCbnODHxU80uJhtM8j5TPBLt03VTvnKb0IHqbzYouFCNGOOVwIegY/BKBabOvxY
	 1ia1BJcqh4bFtmAT1fDEH8CkCJY27ZMPW4SmB0H4b+uc+dYn6N95Z6hzUOUAULHWS0
	 N8tQb3vTUFv+g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9577910F3DCA
	for <ddprobe@lists.linux.dev>; Sat, 28 Mar 2026 02:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177466649358.24300.12049402081016253731.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 11ecfc5854c2f18d9311f1e9c83a0ad3cda6872e3b388a6fa664f2d7062fde13
Date: Sat, 28 Mar 2026 02:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774666493
