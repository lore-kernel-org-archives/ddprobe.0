Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 448E71E0B9C
	for <ddprobe@lists.linux.dev>; Sun,  2 Mar 2025 14:08:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740924534; cv=none; b=CYYoqJN1Jp7yZ0wnc059mMAr1JYLtTCxUf6diYS/Pd+JW+F1Cy+OyPJWmfP5vAtrgWhtPvBtoFn+0WTEyJPtYJgRlBJzSRahdUDuz5eFny3MyMWCD7cFSqLyjEj4XA9xm/kYKabgszZzwro0bDwilb3mdRWToMeMpzq/zs6s1Hs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740924534; c=relaxed/simple;
	bh=mnnSztGi0yjsnk65hmvv+65NwQPA/CqqUlKewRi9GZU=;
	h=To:Subject:From:Message-Id:Date; b=mHEih1XFlG5TsIJYdkzbol1YwaZg7jr5/bXDqcGCXMshr6AWq7wDeDyhYbqCCKDWXoJdH19xVdHs7NqTKWsdt9HCMT4EoQ/cIrz4KAfmo6adIYelVCYIfgSSKVXf3Nukd7L80eY5CwZclg97iwXvVtfqhJvehfiLtdlfKKYG+NI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gqPqgAYl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gqPqgAYl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AFF1CC4CED6
	for <ddprobe@lists.linux.dev>; Sun,  2 Mar 2025 14:08:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1740924533;
	bh=mnnSztGi0yjsnk65hmvv+65NwQPA/CqqUlKewRi9GZU=;
	h=To:Subject:From:Date:From;
	b=gqPqgAYlKAHIGfA3RBAxjZF06kMrbWIoXdWKBqJD4eM30QFAubEq1kFtOrmvJXJM9
	 fcvtIiAnDXmkrWwR0e2pHb/SiFSu6i29XBGgeYFGAr9/zXKdwO1GqhGPDpCHWJG+sF
	 IMY2DmKcx7naHxQgwa25lF7J0qxiTKwSumcu+yzVWkTck3bZJ0C9OeqhM8hkRZ+lhy
	 Ua5LvfS75/wCcmvHmgz04kxgBa9Z5rDxf+DqV7B7w5e7C+OCR/HK7p91S/x9GIIjcG
	 IvHypr49tp4srMT5pbV3O30EY3/sXv4RS2+w3AfCSOsXaa2jO8Exi9OKKh5ZyHL7gQ
	 c9J7gdcYo+s9A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99317C19F32
	for <ddprobe@lists.linux.dev>; Sun,  2 Mar 2025 14:08:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174092453360.1766.4544142664600829745.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: af7557f1ee4738801e99671dbda7795c1a6f499244d2f5b9d6aa98b6e56e3ea4
Date: Sun, 02 Mar 2025 14:08:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1740924533
