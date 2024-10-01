Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 553171CCB3F
	for <ddprobe@lists.linux.dev>; Tue,  1 Oct 2024 19:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727811354; cv=none; b=tig05OPCGIJJdbOEMsTVtyPboiE/PeRQ79+PZJKyACqAg69TMrFq9bzVNwLIKzbGU5G8jT9i2QJfq18pD0IV97zTueKQYr4P4OfQMG6UIzhyPCAH4JUxj+RkmFosKsJB2ZYE3lCup38iH8WJjGle7NEvjCu8MFeCVDSIYjqPTyw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727811354; c=relaxed/simple;
	bh=WUebkrFeS35HEetCGS6u4u4ycyuDWaOzCu0qQ9Tj+2E=;
	h=To:Subject:From:Message-Id:Date; b=hhd5x5vAtFtvBijjQiccN9MvXkckfHe4GnA/zvPQPyZeVH7nWPfdulWQFPrhvzdLjzV5lvXjla+YXnG3fH0Uw3dVC1uqwlQheCMkT9Edm7X15vK6MtSvNr6TIdKiI8Y9QClggrOQli4Y68oGCRubn1z9+Z4qI2vQ2NzPv68aKRo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=seExBUgx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="seExBUgx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB353C4CEC6
	for <ddprobe@lists.linux.dev>; Tue,  1 Oct 2024 19:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727811353;
	bh=WUebkrFeS35HEetCGS6u4u4ycyuDWaOzCu0qQ9Tj+2E=;
	h=To:Subject:From:Date:From;
	b=seExBUgx1uhtNzp4HixdFcQSQja2D/vPRx2th/msHy25ir49e9I0fTPfZi3YQa+xV
	 foi03XTmDUXbk4XSAiX+7mwbLU8WtKh+63GEONC3HElqzvhEyE+eyYcveMMGBhQ7rZ
	 fHwz5otqgti/4/dOmyytYPf3HkXx0mAekYZaOkzRlCvkP2HSp9WAUgM718fIQBwFsX
	 dg+wRGyVlkIk4VzW6YXGMTMjwqF8Nhlr6ieIroOg0EFdLZnCl9BhDeY50UJTxy9ybv
	 HAZ8mR0OF0SHIWUilchmISaGfYf+bjSQU/WZCYIitRXHTVHGm9GHVm79fBGW18RJZV
	 XcnnFGSyUN6JA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B23DCEACFC
	for <ddprobe@lists.linux.dev>; Tue,  1 Oct 2024 19:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172781135362.27401.9658718492401708026.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a073e84c0a1b94c4fe5a2172469a431546704479f7124641b1580f40a76a521b
Date: Tue, 01 Oct 2024 19:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727811353
