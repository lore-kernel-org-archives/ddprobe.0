Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2ED43171CD
	for <ddprobe@lists.linux.dev>; Mon,  8 Sep 2025 02:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757299794; cv=none; b=pLbGMlZXsRLNuUbSa6QNhsMWbaF/GXRmiNKiQETd1o9StzcAqz3cp4aFCfpNtDWdkduSkbx0STFxIkoR82DMyGDew8IA26b7H21066nhlZLRWdZwgBBNPB3EplK0MEeai0O3C1dgOXcuullmcVivoUfzzx+7aDASJqPvnmJdJwg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757299794; c=relaxed/simple;
	bh=VnxANH3DAXXNKXOlzpl4/0DpBfYAHWpMvgKwoPMb4sw=;
	h=To:Subject:From:Message-Id:Date; b=eTVXypb9TE1cvk5CUn/F+yx7+OTfcN1Ag1Qt5Tgdo1SVx3boI68FrmCvlSI0CJooV8QlrZqAn6SrBTqo4r2aW8qFC5bwLhmPNw9Dx/ZZT3WImHD7TGHhsSQwTbbXw4JuvwPbNpYX91b+y3ZsfO/CWXSD374klRHVSUiaNhCreoo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=j+KelrGu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="j+KelrGu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4BDEC4CEF0
	for <ddprobe@lists.linux.dev>; Mon,  8 Sep 2025 02:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757299793;
	bh=VnxANH3DAXXNKXOlzpl4/0DpBfYAHWpMvgKwoPMb4sw=;
	h=To:Subject:From:Date:From;
	b=j+KelrGufEi6xgyrCVHY88gotf5wC3J9u7pGgXdcJM3x/lQoTwJMG6/lMyCTQdDnr
	 0UlThnJAe0QAMjUhMW8oJH2mPkSpVF5k1NKMEqy2SxCcKyjF3UzxfYADJz7Ug6aFEy
	 IJLe5H2j2mFh4BQOeICFw0qayh8bFJflBLYz++lWfQH9DQS1lmZ0qBl+YEasOVMZhT
	 y0SHrIwdIpKh1/bBCwuOmJexG8k32GDRr/ilz9F0YTFJ/fr9SHsqexDh1L9TFFrtso
	 ZqrXEZntI1qWwksTCs1S3IXyFQ/7kPG7CpaaxY+C3Eozd9tbEHS3VJH5fUY8UMwtlq
	 f5tXbjWOzwDHQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92AC3CA101F
	for <ddprobe@lists.linux.dev>; Mon,  8 Sep 2025 02:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175729979357.20838.14202306742290804910.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 104a88b76719f943050102e3aa29aee624836222178d2532edbb736b19bdc2ae
Date: Mon, 08 Sep 2025 02:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757299793
