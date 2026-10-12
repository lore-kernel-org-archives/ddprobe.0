Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6A04A442388
	for <ddprobe@lists.linux.dev>; Mon, 12 Oct 2026 07:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791789034; cv=none; b=NYZISpVDoLUjtx50RCkRsKbzCKe9pFJL38XVoXyiWaYZrvuoDPxgxM4TleXutAMsuxjrL8NfRW70ge0lGcxB9GCWd08zn0eRKAFiLLGBvE2ZZpu0dkxXvbPSv0wdH1/0B1MHXMyoc440qTmJMv3RFEKwCNe2SkKfKWfdUTvhmnM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791789034; c=relaxed/simple;
	bh=nooGsK7jGOc00vBk2r3+7yacxnOrzlmM7G/6Ja9Rork=;
	h=To:Subject:From:Message-Id:Date; b=oNIXv0OZZDpWckji4QtIqNsThoQBr8DWcck6w60xl+4RbABDhFB9SDH5WlmRRbpEG43bU9EnhElXSxhIyjcXm1Wdu7Qh/EDONXsEAAtg0KAUBzOhTDknMpliWGS/bOFGybYxN7zv2F6boPxx8ZHlIwmpO894j2WwIpXIlov1uc4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=scKjTg+8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="scKjTg+8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1DACC2BCF4
	for <ddprobe@lists.linux.dev>; Mon, 12 Oct 2026 07:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791789033;
	bh=nooGsK7jGOc00vBk2r3+7yacxnOrzlmM7G/6Ja9Rork=;
	h=To:Subject:From:Date:From;
	b=scKjTg+8kkPOwoho4Q4jJLkwzK2Gj3Q+PBcMqdJskgxbIb/m+EvLy8UR/8Dp+/oJd
	 yUCt99WdoM+VTwILpaaYUkZxvou1ph8bp5Muug3GWrJYE8E1tWY0lYoZmz0pJvHGkD
	 TOYRpGiwYczQ6+FhuNUTCtmSa/AGFYpANX7Ejc317KsxGwOn14UveeUdxULJUqIf4n
	 MXoaRUKTqUEAoCxtpokxAVROgkt23Ji8IRXBEdwQ5YZZ6Q340xmlNCeNxlRo3LxU1i
	 LSMuzoSrsxiscqUfabL/d3SpsvDWoiz4VjhHlruiS1fiDVWSHygOZycMTN6x1ypHrY
	 uecvG0nW97/vw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADB4ACA9ED5
	for <ddprobe@lists.linux.dev>; Mon, 12 Oct 2026 07:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179178903370.20373.13668375375430927377.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f99ea01364cfd505d34febaec45f84354fce25db9e668982f63de45d84af981f
Date: Mon, 12 Oct 2026 07:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791789033
