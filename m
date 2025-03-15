Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 57785188734
	for <ddprobe@lists.linux.dev>; Sat, 15 Mar 2025 18:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742062795; cv=none; b=hrqKLI/Aya9S0uZ9cffWtv46m+rD8u+eD/+PoWEJ8F+phqty7E677/P5g6wwDZjWWV2cBiE9D1rwpZgWeQ8Ybj3Eh7RCNfL/fSID4gWrkKr0Xh4yvROLkKQ690EOhv5+6Vn5aNnuMrs8qSD4I1r72v9K6SKOsRXr8PEWzFnHUNc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742062795; c=relaxed/simple;
	bh=t370TYgfjvtvgbLaH8hbOQzcIUfhcIUY3X9nr28XUfs=;
	h=To:Subject:From:Message-Id:Date; b=NCTxf4dqyB47lrEGYsbgj/6bR2CI39FManURrF85Tk0V2Pu+SKt6jh20wrUXJrUx9v3AD6qeeKATMWG8dAG7IjyWMGj/4WrIv5ES8f92C21J7ng++Qm6nL1yJHEcPFVtXVTczoC1YrJI7NwZ8t9hMvcKWt/778S5gLma+ozB5nE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BeFC+Pgs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BeFC+Pgs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7FF4C4CEE5
	for <ddprobe@lists.linux.dev>; Sat, 15 Mar 2025 18:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742062793;
	bh=t370TYgfjvtvgbLaH8hbOQzcIUfhcIUY3X9nr28XUfs=;
	h=To:Subject:From:Date:From;
	b=BeFC+PgshgViL+X0YWZbzfp/hYOHdKZu4k56XEyKIm4C4uA0TsQZfMOJyFsWn2O16
	 +X0S5bJ811D5k3+4BXZTZVotmLocYpOlWyvjkHVq4oW1DcBiWxl/7h313rgP0ri79x
	 ejtr18Gf8jVAoZuwOGcbl/ZP5PBijEUKi9gkFsD8v3aXzCS4qCj0wjmPQOE7Pqaocp
	 FYUzh3LnUIF6+MrtuiiApZQecXE/2/ZsnVAVbu61uI+H0VRwrLLD5Rfo00M3iNkFEQ
	 rRuJPIuFF0S1pHOlYBNyux6ZrJd0sodMybMhSCUIVzRfRiOfOFSBocC2WPVbIg3fNx
	 9glsZVHN35JUw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9FFF0C28B28
	for <ddprobe@lists.linux.dev>; Sat, 15 Mar 2025 18:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174206279362.24456.3768995280925588711.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f27fb98a6cdc654967403bcdbf6416f32007774774f8cf498071565976e71d32
Date: Sat, 15 Mar 2025 18:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742062793
