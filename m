Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 712771E492
	for <ddprobe@lists.linux.dev>; Sat,  4 May 2024 15:12:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714835543; cv=none; b=QulHi4pDwly+b92tER5V6cBTm0wZl/UEr35mS/hvhBkJTqLKlgTqh9ZLnDAxCCAPWdpUG3jvdfWWD8ISL6Lx4XIsX6OHD0tw63h3sMHB/mYGrpo/C3t70lBRSBs52CRVbcnK8NEwx5bLW0RAx3rzKaa+VhEvy+wPhMQCyEWrP5I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714835543; c=relaxed/simple;
	bh=/CYLArRly8i+j4td4N4NMJ8aiClMlRJUQbfrjcVTDeU=;
	h=To:Subject:From:Message-Id:Date; b=niMpvQWXF3DFNLNwfs9aN6fZrk2SU/58MTKjx7a009+Pcvqlg8f5l7rwUyT8A4xOmzOtmG6gV41Seao5naJKo9aBqMLQNYisqKGHzsNIBCCCG+B9AnMJs/Loruk1fmo84Pd9PYz7WXqcbTWYPCKk/3FFGfAnB/JIBx3Dh+IGu8Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=izNgk/CI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="izNgk/CI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id F1D62C072AA
	for <ddprobe@lists.linux.dev>; Sat,  4 May 2024 15:12:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714835543;
	bh=/CYLArRly8i+j4td4N4NMJ8aiClMlRJUQbfrjcVTDeU=;
	h=To:Subject:From:Date:From;
	b=izNgk/CIyYlXnZ1bb0Wn0gMa7XsuU0zT5oFH0Ka7N3XFXTPRh9e8btdvXgW9T0VMu
	 6tYQJJewCrW5zGe0o4HTkzHKcFBNghk6FEDC/iBlOhuClSFN/cQ71SWIUNdzM/bm6o
	 l7p1+0FcFMSzSQzy9+UXUCVGBaNg2yJGFq+SMpcFxPvzTvl7wcTQE1eNVacJs5pZ3d
	 UM38+dAZc/0KpcbDL5ANiBXHLaY5KuB0iJRUYs2ZhPyJCxEbsK4bU+OqYOl+uD0SWv
	 I9XpxK2+NjK6xMNJD1VocGydcl+SaaDIZlWWcgg+ELwWk5bhcmncNiWR8dJcRL4/hw
	 oIT/MVvEnXICA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D52B4C4345F
	for <ddprobe@lists.linux.dev>; Sat,  4 May 2024 15:12:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171483554282.14280.9322586987998575214.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8f5083357989a86907edb1d324e4162859f92cb7cfb6b9dda0d1b639b9fed0d4
Date: Sat, 04 May 2024 15:12:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714835542
