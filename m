Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6F62E393DF4
	for <ddprobe@lists.linux.dev>; Sat, 23 Aug 2025 04:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755922794; cv=none; b=mhhopJzdC8OCkKDrY0ukR9RNSZQZlsilcHlFWyBe9Rn1/BzAl9HvIRfopR6JFQfsan0vKmQxE5XeDLoeK6Fb+PWxueaPHLX6YzstvoqJ6izIftykzdbSDOu9iqjqj7hUCmtnRFySofL00kixP9vSlPUWCLLKrP3dH4nAMnKNlMM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755922794; c=relaxed/simple;
	bh=KTGBPctulpX/5aEA/yS05jXn9jvALsZz4io3xL7MD1c=;
	h=To:Subject:From:Message-Id:Date; b=IdfG19oCQ4U0fii78qg3GEHpqZctCTppu3RE6BrddcMeriFdFdJocR87nGvq3zOsRSi4piugCWE3tOcskigOGJgG4Yg9Uznb1botvzVIImtZkcriZeDY1FPQ0AozjBHkcIBBCdIJYMFw5Ze2dKcIMA0BKjWfAYao2dwGN8vvsCI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YOLIpWXY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YOLIpWXY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9699C4CEE7
	for <ddprobe@lists.linux.dev>; Sat, 23 Aug 2025 04:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755922793;
	bh=KTGBPctulpX/5aEA/yS05jXn9jvALsZz4io3xL7MD1c=;
	h=To:Subject:From:Date:From;
	b=YOLIpWXYF6iVJ28s0ednTORJbZ6kEacw4xmZqCwygHwdAWh7DXSijugFBmD8B+h8H
	 beZdlV81aC26dZIVbtcCtkrtawe4FsJOqpX2izDGjNpfitPYhnaYrw/bnzHwTDQGeL
	 k86JDKz2YsJPhaygQxXN9kvnix/v1aKlhA9StWD5RtMEwTC4kLC8AWc3GHyeRR98rb
	 nJ2St2G+5Ww1TvxnjsZqUcgrCq/2TW/ncgSuMK/kmnBQjuVV0PIsvafUY0uetvNcvN
	 diou5um+xnHRPPppFeF+VoG6GkTWsrD8Hj35LeDfIzTNGyPL3+q/ahemj69knpWxsA
	 7D4efz0lHjZTA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 957CCCA0EE4
	for <ddprobe@lists.linux.dev>; Sat, 23 Aug 2025 04:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175592279358.13919.8227241053256731488.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cadd7a6127a6d06f75bc1e8547ff421f47be113c76ab2435956d77d86284aa6b
Date: Sat, 23 Aug 2025 04:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755922793
