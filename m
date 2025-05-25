Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37FBDDDC5
	for <ddprobe@lists.linux.dev>; Sun, 25 May 2025 21:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748209794; cv=none; b=bWP+4+fNt7Ai6JGosS/ZH/BtNnwtYXONZPk++QUMOtthCCabQHz+6RmloVF2burl3n4kgTtOiyD/TuG5TYkgJrQ02kzabnPyPIqPXWYTay972x2qGhan7FQQBiwjwjXwcH3bvobOd2+khCr94bgYSqj39Vf2ggy0wpKgnQPXYfY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748209794; c=relaxed/simple;
	bh=Iw+Yfdipr86vpt6V/jTgRC9V9PbHZ3AR64MRl6gqvNQ=;
	h=To:Subject:From:Message-Id:Date; b=F0eUyb04id7G/sasUT7gCfTqYmkHgSXygIzav8k+CtjRW+BgT5NNH6FJS6qEkVnY7X80537qp5PM493CTmLWrlkEUC5KEJvABurt8zhBUm9rn0CQlYMk5HJ3b5tXwaOYw8tN8zcyQAzYLrdcHOsJ0NSR/GVCm7m5QKQuV0NkegM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=juI6sB/i; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="juI6sB/i"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A859CC4CEEA
	for <ddprobe@lists.linux.dev>; Sun, 25 May 2025 21:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748209793;
	bh=Iw+Yfdipr86vpt6V/jTgRC9V9PbHZ3AR64MRl6gqvNQ=;
	h=To:Subject:From:Date:From;
	b=juI6sB/igR7p/sWNzjvcfEuPVfeDt2/5J2ovX45EhuF2UuZTQB9aEL360abU692Ba
	 hfI6UFluSOiCit+a5l2+OgZ2QjHntmOC4SjLPNslObHhVsuLBobBOgDxxDSvzO8IH9
	 JXRZmzZrvzeQ3ENef3pOf8AOaSOPIIc5dJwgdw4Kv9kYDcNErQGbmz8ckZdiOKS9Dq
	 ExB4UtfIRlMfQXH+VviPoEd3u4HKpsIo6zDctuX6C0fwPxjcwvcP9U1UfBkpE6j0rY
	 lDBgU53HSq5kETb50H6ec2aAVDqhV8AloUuu3YJv3rh7oP65iqUhMe9Nn0sZAO+eiA
	 VG4GG3mqFgW/A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95770C54F30
	for <ddprobe@lists.linux.dev>; Sun, 25 May 2025 21:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174820979358.9331.5763209353571675265.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fbfc148950b55eaa9ceeef4c60b3a4555925720b7d0cac2d664fd10981f81901
Date: Sun, 25 May 2025 21:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748209793
