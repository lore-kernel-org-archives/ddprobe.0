Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 49F64210EC
	for <ddprobe@lists.linux.dev>; Wed, 18 Sep 2024 16:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726677954; cv=none; b=cpMB9VpoTXkgiT+owYp7QdqmuWqdnr10aCJ33+Sm7hl1Hg6UVfdzM+0ZWi3q08hxzyKxAqo56eC9n4bmh8YWFo7QonZXLe4+1mys403RiHIxALeIR2DjRP2quN2dnIUJ3ZJseLvzdcJMjXWk17gvz9ziFv9AIJe87nF3n0HKiCU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726677954; c=relaxed/simple;
	bh=uS5LiebE6wseHAwzYo36Hgl+K6Xb0Wd6THt2lsaOYYw=;
	h=To:Subject:From:Message-Id:Date; b=aljcTe1QphLqZkkwYG/tOw7UCnvdJANKN2hebtWAyWUzgeC2UqV9pyd4tejPkyxZwgepeve25K6rn/Bc35ooXM93fMcZ0uB9oRm0PufgHvfXvfvWq3NXLBkQrrSE8CygNiyHJDJg3LKy10O8lL8dRP01bFatnaa9Etu/m8AEu4c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bxZcg5Cv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bxZcg5Cv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9642C4CEC2
	for <ddprobe@lists.linux.dev>; Wed, 18 Sep 2024 16:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726677953;
	bh=uS5LiebE6wseHAwzYo36Hgl+K6Xb0Wd6THt2lsaOYYw=;
	h=To:Subject:From:Date:From;
	b=bxZcg5CvLvYnprtHU4I2yxFQp90u2okdr4CvcUP3HbUdIbsZvuiwv9L9SjPBZ1+lH
	 svFV2yy3B4oAraxdE2LE/gWP1NzebuERVqbYgz0PEmCim/YZftnoPxwtYH9+6sMOwZ
	 9Td+XRWIzbFQ7wJ5ZagK38P0GhA1v3dMBU9SnXxkhG+YclBQdhbB1rXLTckBYeainI
	 U4UE1kLyGiarFfUUOD+6cb/mGsuGx6Ue6vIxxld0nH5kqAXi+QuvGu4z8tN2tMLbwN
	 qzJfj2LiI+WiiZfYKrN66Vu57AIgXUSt1a9YltY3Cu2K4YJ/yZ404rlSLRtToI3f6W
	 Fop3U2rC67Vtw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95355CDD548
	for <ddprobe@lists.linux.dev>; Wed, 18 Sep 2024 16:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172667795360.16584.3394535072944518822.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 47040997ee75ed6c88e32c3b279ec99f6f2b5172dcbb543dd625415ff837c409
Date: Wed, 18 Sep 2024 16:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726677953
