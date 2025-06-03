Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42D2519D8AC
	for <ddprobe@lists.linux.dev>; Tue,  3 Jun 2025 23:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748993994; cv=none; b=ZpMon+sVy3E9L9ARA88+SdOp/lFRhD3yqmewBZU0JkDAs7lIBjGjuidrNh6rsaNxmlmI8+TNPypiomCqxr6l2dOE3opd6c6V13MNnWQDqaGo+lS4vcHBn9r/N8WIxTdCsUS2nlo4J4RjAsO34M1EAGo8SDxMOLKD8Yk7BGvQXV0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748993994; c=relaxed/simple;
	bh=bqamMuKDGqIhpxJpiOB/OErt9fwFK35NYT/sTuM5Kng=;
	h=To:Subject:From:Message-Id:Date; b=IR2/MG/XvTF+6AIWvu7t167ETVL85chc+AzglD2BQ7HVEjWLe3ODyShO491+KGzlJU0gT0KDpmJezEB9zkbUttvddhGXvx/4bvCBUEJiBbd2XKo0VG9Flkt/YrtcC5VKH1HPb4Bwpm9v7Tcmji3qN30j3xyCS5CRnKSgfnR3HyI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sKwQArt2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sKwQArt2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2B95C4CEED
	for <ddprobe@lists.linux.dev>; Tue,  3 Jun 2025 23:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748993993;
	bh=bqamMuKDGqIhpxJpiOB/OErt9fwFK35NYT/sTuM5Kng=;
	h=To:Subject:From:Date:From;
	b=sKwQArt29oK7LyJK9OLJv65uB6lDWpWNa1sZm+G4V2+kHuEGJx3zk/x3DQm+kbtgP
	 e7+RrFJ8MDLHxIrBKOoeGc+c05Xu9CnZs0gfA4ds9W3kPrb5FfN2LVKu0lhB6Nti2w
	 LCjWQWGqiiCnsn2w/G1baav6Rx1guo/Wqqn0NkG2kep4qO61+/u+R9gZA6CL+Kcs8N
	 Lc+CqBWMueixT9IjqX87uIk4bOln9FPs54G6slABi9YBW0TGVpPqJvAiWwJEp5cCrz
	 G0huMloBSeukzMet9+gQABeEw9U4D2NeFipm6ujQr7ab8S8zBWjkv1tGlXVLZ/7bg+
	 HKbmcgq8PojrA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9201DC5AD49
	for <ddprobe@lists.linux.dev>; Tue,  3 Jun 2025 23:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174899399358.27050.9914029370149703474.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e13d5c967248f641bfa4f1d8064e71faf9c452d230dbe6a0f58cdf8511f41343
Date: Tue, 03 Jun 2025 23:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748993993
