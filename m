Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 49CE9155757
	for <ddprobe@lists.linux.dev>; Thu,  6 Feb 2025 20:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738874154; cv=none; b=Z2ZW8CQcte1cHhKa+U2vRyfFH5qtl3QZNwQMG45N3HH8rGiXwj9UXG295RRXWIk1oeCTBLfeUnSDeglA6LdkOhwJvaz6p3ar+0uEutQhsPv/s88sxCfwrucJUuQUIXHA4Ww0Pmot9p1JfG10Lce1ZHwkHEXCvwXl5g4cFzSY5V8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738874154; c=relaxed/simple;
	bh=lQi08ho8N1cXHjedKjUnhpFmUQEbtw/Gb7d28LmyAZc=;
	h=To:Subject:From:Message-Id:Date; b=ERjelQSjxhKk1S0yz0ecmFtMPCDmPct46ctv10gp0zUQtT2sJ3CNsfEob5h+XqaXUdHaX/9egq/cEywDrrifvb2G0xb8VIPCuRpdimLIq/ObHI6f6uJVsfZQNmoBwb+rM+be3GVtYQHjC7gCbj8h7zc/NbZe8sFNq7r3QF3rTcc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pLC/HoVh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pLC/HoVh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BE794C4CEDD
	for <ddprobe@lists.linux.dev>; Thu,  6 Feb 2025 20:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738874153;
	bh=lQi08ho8N1cXHjedKjUnhpFmUQEbtw/Gb7d28LmyAZc=;
	h=To:Subject:From:Date:From;
	b=pLC/HoVh9EmR901iWk0FwVKbbNJSrAGmiYzS4l/aEg+IEbTT2SdFb+MKUJTeG0GnK
	 njJNzrRystCbYZJEz8RKGdN4BWL0x7sp+HHyy8ImYUEoh650jOgP7lV8RYSlGUrUqD
	 j6q+I6jZ98BHsXpmrB8ASGwoCchD28j7Jv8EMglepMpMX1oMjyVRNwndbHS8iQr5zv
	 6FdBFEpO+YhBwQcXKZiFG7BPXauugpCWxFqfxsTwlhiGpERMJwa/YmFjfOdxeKzLJ0
	 8FygLyk4vfrTNRl/S2fH9a4JvCDDVjg+PJaLud7267gEqG4Z2AGa8gNVY23LNXchyX
	 vViCeWJrlNCdw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A6B41C02194
	for <ddprobe@lists.linux.dev>; Thu,  6 Feb 2025 20:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173887415365.2227.16053210248179645536.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 25967960c235e2c1c1e303f0836ee579c5e5684fbb3ee1bb565c5db5817bc530
Date: Thu, 06 Feb 2025 20:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738874153
