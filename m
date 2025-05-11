Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37EBD18A6DB
	for <ddprobe@lists.linux.dev>; Sun, 11 May 2025 10:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746958194; cv=none; b=LaQ1rxc1xlzBFQ3akISBKIqkKKm9YDYYF8Tft1XkLvllKWm0Nr9XxfrZ84IlOXXE7D/qMRn5u2z2iCdV2O55OS5dFTuymiz7vWWKY2ijQPBZxaZHQrCfMG47324iR0RYWoaruVULhk/Duj+W/7ivvzULqU+kjp77cMgaC0kuOgE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746958194; c=relaxed/simple;
	bh=HsIRmOvfU0J1dzOp+2Ldkkco1XJugu4oNRYu2tYfuMc=;
	h=To:Subject:From:Message-Id:Date; b=Mni9WmFU+cWM6NR6Ic4kYubUOh13G6pigPcuvYio+k8E20Y2WfEkWHbNJd9lXeWDPZPM+GT9r8aE3MhfN6U1BQqExQVKY0sJCn6LCNuwmUTi/SQBt53cJG1tjJS1r5HPXs3SJcTly0zk7R5CXAXtTYUwJ+RPFMl1VNNzl1oOuak=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lqqHcE8T; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lqqHcE8T"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5D75C4CEE4
	for <ddprobe@lists.linux.dev>; Sun, 11 May 2025 10:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746958193;
	bh=HsIRmOvfU0J1dzOp+2Ldkkco1XJugu4oNRYu2tYfuMc=;
	h=To:Subject:From:Date:From;
	b=lqqHcE8TwoH8jq6gzPcG1OS+uFoTIzSnaEjkefrp/BJUK4srS8REVv7Q5PhEQR6ED
	 Y5d5V9CC1Y6sw2zH91Zhq9cL0OqT2zpemvHSspe+kv/4TOaKAAXz/BONrmqNTMWWtr
	 F7GnrN5nV995zsdzd3EAKoNKumx18bYes+57RsXCh0YxZhwm5M2oskyeFlhzaILgxE
	 oHKgBjdnfnbqy8HnfTVEhhXagNaeQ5V7zVybGMSyjmI+SryStTrcQUKZZa0S+uDdWS
	 +hlrnmuOtXVtNz5e6l+ECRPvJW8pBWUYsKox60NzIXJx2lF9LIFIvLYC3FkV2ApQoF
	 fhbZFkGLHyRVw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F6F6C3ABC3
	for <ddprobe@lists.linux.dev>; Sun, 11 May 2025 10:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174695819358.3833.12533527807975074818.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 49ebf754fe34c1425a301849f00e8a6f625c8bd6adefae20f7e317f4f3a0cb34
Date: Sun, 11 May 2025 10:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746958193
