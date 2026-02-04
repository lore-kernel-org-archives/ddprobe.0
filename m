Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C8F13D667B
	for <ddprobe@lists.linux.dev>; Wed,  4 Feb 2026 10:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770200034; cv=none; b=T0R8NtDAkVTRvnI/viqlI/aZtueGWJ0blAsQFeJpn4tCsA2NRz+EJ1bwRDzE5b9xJPE257qO8PsVba8ZpmvreZQFpY9DvwoWaWGZPsWQkFYhx6jQA1ihqlwvbePuwO2imQI2kET8bvXUeWPZTUaiam+oen6EB23JpRKIaPvJZjE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770200034; c=relaxed/simple;
	bh=9WWAZ3R/V4tXBaFJ3g1Cv7l/a9lbthv/myA1/LB1ylc=;
	h=To:Subject:From:Message-Id:Date; b=c7Wv7wxfUNURwjjGO4TmBUmNXTrIxBavBBetxNDL4aUo63wJo0U46irptIzw+bZOS0bQIcVTHuw+SzXwtDfVWVlvAlDXmVroZNdrKLjBJ6AmXyBb0iPrJ8j4n+2eMxyC42jcgzbboPQc4UVAmku+PUaLbvzKIvPDeUczkq51m8Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QUHg6F2C; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QUHg6F2C"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BCB33C4CEF7
	for <ddprobe@lists.linux.dev>; Wed,  4 Feb 2026 10:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770200033;
	bh=9WWAZ3R/V4tXBaFJ3g1Cv7l/a9lbthv/myA1/LB1ylc=;
	h=To:Subject:From:Date:From;
	b=QUHg6F2CXRwROZqZXBs4+/+F5ozgtXwM51YR6tDuAj/DfMDwX7so2Ngs1cfpY0lP6
	 2OcNN8P5Dy7rVTyhGspRe2f04NiMP9ITcSGljoSPysrbqWwZp/tUU4Vr2qffudE/y2
	 N5unIZhw3Dfew31HHfoEwdq4ocH22kOTjllbJDK4adCAc9QbwkGsLYBb7TZdz3ETf1
	 wYd235iNKwr/vtBZID5DEAYgY7lV18FlesEKcmwmWbouEUHU7Ai3GBDlC9EDSVPbQP
	 CK7NPwfka7a0Ah/c+j85Pz0mnyu4uaKKgSBahdWsokrBxm9mXR6dqGcaHawhuJrHI/
	 2ckazW2Pym9gQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACDDFE95372
	for <ddprobe@lists.linux.dev>; Wed,  4 Feb 2026 10:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177020003368.16012.12848051610577625676.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e70ff526d3b512d5d95fc956e937921411cb0aa43407a9aadb1beadd3b647dde
Date: Wed, 04 Feb 2026 10:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770200033
