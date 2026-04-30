Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 248EC17D6
	for <ddprobe@lists.linux.dev>; Thu, 30 Apr 2026 01:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777511854; cv=none; b=WVz+rtshQAt+uflVMAYQxsXX5em83x2M+9JPjjh1o+oscG4FQe+wJVVl2xBdRM38/M/3C5PVmGbBlkgczOl1gK1lChMAm0XyZW5IUE3pgu8AVruvDtkiD78IBnl5TFuquzVAjcDK3zVGWhY8Z4MasuDMF3f2S9MDIOPTJMrIlYc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777511854; c=relaxed/simple;
	bh=MdXMxS4WqDmTFeTdb9ee/ly/yWpfazwGiNRUMXh/CTU=;
	h=To:Subject:From:Message-Id:Date; b=L/FdGjPl0YT0AjKICD8bp2n3VX8S6KZtOFJ8WZAmtQFC8fW7bBZzDw24KF8PJewfg6/AaSScgqYlAdAX97eZ9I8SsghWYWfiBVG58030PJOi+i7HIRzVK9jbrogsHVOKH2FLRRg/48V4UFXFbrYhlNH8tYls8m64nPkqXEY4bUw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PEDZ7qNS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PEDZ7qNS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1B61C19425
	for <ddprobe@lists.linux.dev>; Thu, 30 Apr 2026 01:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777511853;
	bh=MdXMxS4WqDmTFeTdb9ee/ly/yWpfazwGiNRUMXh/CTU=;
	h=To:Subject:From:Date:From;
	b=PEDZ7qNSqRIeEaXowwjNi+umSsHsifm5Vz05P2RjfrTa0vfDa9PXFAGLRJVM9/JXb
	 4xXBktinbT2kCY0DST3EedF0lYUDeH4oKYHwnKx779YXFyKSGZ871iKNI9iVTuFJ7l
	 HY/uCpUbiBUWsjhBbmNSEcTWZCiU3I8UVZeYGJG6eI9pYsq2781gcv4YZnTY2Mp9zN
	 eF09LZAC7R2gXhUQoZiaAhsMYo/TIoskFmpooyFhSupOhhwmOA0Rv5/cpg4r9cP/nE
	 RbLdcGJOSusmkOBW8nU1bw7ETSfjh/Ks4uT6cGRTvsNvnpqX+NwD/VE9xKo0v/M3/A
	 kFdj3ZKqczXfA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B022BFF8875
	for <ddprobe@lists.linux.dev>; Thu, 30 Apr 2026 01:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177751185368.26606.18379708750310503983.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d7d3b4c42aa8a686ccb2186f8565c03e007d1b5ecf4b53d9c8de162340068506
Date: Thu, 30 Apr 2026 01:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777511853
