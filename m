Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E21A21C84BC
	for <ddprobe@lists.linux.dev>; Sat,  1 Nov 2025 02:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761964794; cv=none; b=mYJ5iPaUeHjpDtIY0b8Z/JTtJmM4zGwTu8XD5zEEGh4c0C2uJDW/VMf+i7ElAo70m9Gg8ooWw/ElsglyB7BWKAwaFLQ2Y/KVjsD7llh9GXy2Jbr9nQVfXOYjZaqOxooM/wWtcxolofbbEIozAbtKVDK+eV3HjDbB4ZFFgKM5BpM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761964794; c=relaxed/simple;
	bh=6Cb/rTlSMQgjYCbtmiN8iNBaktmZTPhaW3mQypbYkwA=;
	h=To:Subject:From:Message-Id:Date; b=dtGuiFJEGZG/ypexjm+Aone7P2q1/WjxUrRovsb+o3jdww6VBaV6972dzqQX7NWoorReCucZqTbeEzi5WA2lCg7KhoJxNs6dGad8+2NlEg4NK9qwCVWQckrklDSLFU5144ZGxZ1AD1auO764hK3ck0eC1giHH6tspHNoSQiJXPg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=m4VBCXtv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="m4VBCXtv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1D05C4CEE7
	for <ddprobe@lists.linux.dev>; Sat,  1 Nov 2025 02:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761964793;
	bh=6Cb/rTlSMQgjYCbtmiN8iNBaktmZTPhaW3mQypbYkwA=;
	h=To:Subject:From:Date:From;
	b=m4VBCXtvvx1jBfeK+jEXVrUv8hb6tzlgo6lZbcUSZjXH0E+2fSjlPnRcWo8Y4Yt8Q
	 lvcuqYZh2+pc473c6ez2gQX+HUjsBVBas+nP/wN+RSu2OMA6e26ftnxQHzegcq3G3f
	 LhY05oJSqxUrm7aXbeQRPhTRmaJZPZGj8QVGsbR7q9p3vjEC+xDHcjY1UgWosQCdzx
	 H/mz4M4HSLIourDHWXuPLveyF56nkVqCxIRqczmJPRhLxMwZDqqs2qGFUSKmvNalFJ
	 L6KOdl7/Llzscy1FOVMT/XgwU79ORyAeNKGMTDgw1kMWPUMJkgXQ0BbX7uqMbn2dsR
	 ODVXy9KMmej2g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9143FCCF9FE
	for <ddprobe@lists.linux.dev>; Sat,  1 Nov 2025 02:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176196479358.8099.2478850189264137914.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 14118e78901d800c7bf0ad7c76d120f98428b3b58b325f08c52eb6aed04baace
Date: Sat, 01 Nov 2025 02:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761964793
