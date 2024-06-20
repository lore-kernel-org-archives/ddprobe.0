Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 458284C81
	for <ddprobe@lists.linux.dev>; Thu, 20 Jun 2024 00:39:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718843963; cv=none; b=f5gZfT0s4SpQ+/fOp4OfE+s+9a6rKzvHd26Zt8uyV339JdjkwgjcpaHk9897b/QZK4GAo1sxlUd/dyiWB8lGpfJdAf7pwEnUsOMlm2fQmGAKqyFksECbVLvSeamZshjfZvPpZWkSHzct2mvnZxChO+r6P7uXvV+mPrBGMxBEuiw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718843963; c=relaxed/simple;
	bh=VomuQU4Io1EUykg7zpQiV8YZljms7yXSWmpH/I0rwm0=;
	h=To:Subject:From:Message-Id:Date; b=tdWk33F7M1pNnb/b88HPLNuoVxOD4fsqhW/ANteiYRHQyTA5/wHM3pCBVI5QdGujrcXYhoj9jPO4FeqMb2zGi509W+ToCN7VrbFzzhf39J7FWrR0Xep4roJaZdc0UOHCkHh2GU6Tp8wtZP62aZG/B0LzkIKdVR9rnATypRbzKYg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uw/BT5d2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uw/BT5d2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D156FC2BBFC
	for <ddprobe@lists.linux.dev>; Thu, 20 Jun 2024 00:39:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718843962;
	bh=VomuQU4Io1EUykg7zpQiV8YZljms7yXSWmpH/I0rwm0=;
	h=To:Subject:From:Date:From;
	b=uw/BT5d2AVxwK/E0Ay26Q1aPOJ3qg3it/b3SY6LqTaCgXhEotET0sURI+Bd/wSCz9
	 Jj41iYEgiSphXXJPRYVx0tAKKeUapln+vD0hxKpQBsJPQAJwjdrWqrLT/hgZMOXJZT
	 uVEnm/sRO+1rOptfg4pojIhkGt3QA3VP7ajVMV7MtpQMXe1XG+UU5OSXHuZkewsx0Q
	 FDW0vc7AM0H+WWb4CwkjwZG6pLbfC6xKpbhcl71f/V61aZCzXqlGubUvTFkXGOzB5S
	 0oEoBg3FSoVRBDnty3U+iUvJZw8DzMrjPFfKUcHYcXBmGF00qJmfswdxo3KFUrR1b0
	 CK3Kaz5RYx3GA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BFACCC27C53
	for <ddprobe@lists.linux.dev>; Thu, 20 Jun 2024 00:39:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171884396277.16426.9399470093572115322.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 23ffda5c738950de2596cfa063607a105469a12a8a3089776697b167373353b3
Date: Thu, 20 Jun 2024 00:39:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718843962
