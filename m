Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9CEB42DC78D
	for <ddprobe@lists.linux.dev>; Wed, 24 Dec 2025 03:13:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766546037; cv=none; b=jkXzopMAbJv63bQCwsM7Hd3rYDSxEtr38jIcmbd1xly6/FFsaI2BJG1MXI5qswhT33tMYdJ6r8Tjn/vokTmk4yXnXnOTPGFB76Bmt7yfraGNzaurhPuffvXs0AqtwbsCBMs/5EwFYslvsTGLONtXcysNhNKLP/wdbxyikvc/+NE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766546037; c=relaxed/simple;
	bh=XgLeVW+lsW0YwlQn0XyDug3MBOahJSKu3qg3ZHKd/4E=;
	h=To:Subject:From:Message-Id:Date; b=MU4hH/kreUfebNGj3TdD11mTCjXXoX4um57KawPkXNhoWq5+C+WnGfuJqR0svOwiIxBf4NOvVEit+iaZkHgS91GgVpkwtUIDLTq3rkxG4xuL0UgG59By6AiZbfxlMrnisR1F9ntgYMd9oGIR+xKu+jhsZO2RhcW3fmGe03gq9lY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PKxPQ4E5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PKxPQ4E5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A721FC113D0
	for <ddprobe@lists.linux.dev>; Wed, 24 Dec 2025 03:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766546033;
	bh=XgLeVW+lsW0YwlQn0XyDug3MBOahJSKu3qg3ZHKd/4E=;
	h=To:Subject:From:Date:From;
	b=PKxPQ4E5UAfZCT75mvTCVpaO43XDUF/Wjvp2z2h78C7Og8Q18h2Zb3ujE90mGUS35
	 oD+IPT4RldWczXCTTNni4FBbtXnhL/b7Ewf5abb0P4vbaAuzeoDwXa7nTSIJkP1hLp
	 EmPPtPxXDoxmCnneouplu8Hu/Awo/x1F8HHKZEMZaXDwQHkY2Aw1e+gYFOjerTdsih
	 rpeDqZqs8feQ/3UouWJa9ylzFSdziLzmx/gZGsgUwbZsyYwKNc29UZYmdGplIYJJ14
	 jdMJdNLh8s1oB5wg/Pm/G7d/74qrsQT1oCl8H8irvFr+0wkJe+qxJdKe1uGs3tFz76
	 3rlzEXBWNSE2Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 930CCE6B270
	for <ddprobe@lists.linux.dev>; Wed, 24 Dec 2025 03:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176654603358.16169.14728856913099063444.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2e56295c3df8a8c1ee83caf825b5cd40ca4ecbd7190d48de707dc5d11ed91568
Date: Wed, 24 Dec 2025 03:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766546033
