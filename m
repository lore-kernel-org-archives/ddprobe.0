Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 636695234
	for <ddprobe@lists.linux.dev>; Sat,  4 May 2024 08:42:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714812143; cv=none; b=NyWq9vYdS3G4rEJ7wLIAv3THxPwg60zWbv07VZ3+jg3G449Em4+pdFFpBeyH6SZ70wDkBP02v9s1oQGRPnZJSoHn8NOZQtRyV3SxFyaDgWxQDlJXkS3vBEmsyeWsMQJMxPumBm4EZLbAjKV6ggZvNPyeUHa9NH9zlAszWC+ENQ8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714812143; c=relaxed/simple;
	bh=CPzlsDp5WKFTnn1RSWLg3y/Ck3UpNSND/QwS2GDrVxc=;
	h=To:Subject:From:Message-Id:Date; b=j3awlfqPUN0tupjWg/OLX9KylMJ5R3mDVPgZMMTc4vQy9EQNzZxcG0xv5wxpZYDTcu3tz8/P/+aLJgF6vQA4jxb0g29Zh7dDqg6dnTnkd2gvYoi6JFl5gowca6RZqxrtzOAD08mQBQcZqRKRaUD5vYMApVajPxoNRCH7F41SHQM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AUeQphq2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AUeQphq2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D36A6C072AA
	for <ddprobe@lists.linux.dev>; Sat,  4 May 2024 08:42:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714812142;
	bh=CPzlsDp5WKFTnn1RSWLg3y/Ck3UpNSND/QwS2GDrVxc=;
	h=To:Subject:From:Date:From;
	b=AUeQphq2EZ4YhaWd98UBZ/0LwYQeXBdSAAjqjKpbg1CrxWvjFLGN16hDk+dZpR9k8
	 KhJfaqOiQXImOLoTe9Liw5atgkgOeYNvjxPt2G86ovbMG7RuX+g5tR2jhEP46Zatu4
	 4+TNxz2fhWjOVB51gewMBaB1rq5i8tLdL26kMOaFI7pIgJ7Ys5956Xr/iOb6udEScT
	 VLO3ipzliCBDlbShKOIitTfpSzTFOrI+eph1o1ov3HniYZvJHSLxe7pf4EpzmJCb5n
	 /BJswSaniuAs7nEzSCQLvr6uFYiRF6CetBsn0NrsYf8umMwhOnD5bQ87FERw+H4Q/6
	 1aSfVR6+up39g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C1543C4345F
	for <ddprobe@lists.linux.dev>; Sat,  4 May 2024 08:42:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171481214275.12374.18061010448524799420.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4647bf11d4bad1e72dcca32cf7db7bd5d4a6df56280241ab6c19c43c37b87132
Date: Sat, 04 May 2024 08:42:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714812142
