Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DAF2D32A3F0
	for <ddprobe@lists.linux.dev>; Sat, 14 Feb 2026 09:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771059893; cv=none; b=fIZ/JKsRbPhVhugDXMFvF/nuziNPhUrNPnlUcXpMzYNDsN2xaFgwQj/WOMiSYpo63ZlzzU+L3QmKFqqWvpWttupenJMcKsZIS2Z84GY31VjgxCxgSV3/EesFO6G3jI3UAQaCJx8MD4f4ZAWN4NFxXMzlkjkPql9UmraP9xyqQ/s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771059893; c=relaxed/simple;
	bh=nhfrsYQcXT0IMqe6GHO00qL6SynbUZ/bJfIs3e9l0uI=;
	h=To:Subject:From:Message-Id:Date; b=OVEFulo43WIZxYR+TpMFcnkQylcrBmqtF0t6s6so/Eqz/tf5RgIBcwt8Kh8OJVz3fdaii3KDo7oPDOA5wHMS05XHlXhoJcueXhSQTa3bYPjF2LfBbEQe8xk5Yn5H0QF8yTqHC4WtDBeUoQDKalEGb30Nzbt/vpCbWbpAZMy+pDE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VyJQc5Mo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VyJQc5Mo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE9C8C16AAE
	for <ddprobe@lists.linux.dev>; Sat, 14 Feb 2026 09:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771059893;
	bh=nhfrsYQcXT0IMqe6GHO00qL6SynbUZ/bJfIs3e9l0uI=;
	h=To:Subject:From:Date:From;
	b=VyJQc5MoI9TX1fMzHG7rhGJ0MheNrCny829w4SfaabdDrI5RE+HQ9V/eqJNqLABEV
	 57PZX8zNFbJQ/Ixin5hRWwaizPnIU2JUKcE+zW5qu3EweekVF9X+mAuR6ZlZ/Qhjmi
	 T2vyLrNE6a6Q3XlU6E1CjEAYHhVrbvhg7zwHd2BWJdNV0fyhoKajA+37Ex2TMPL4Gc
	 xGgVO8H5j63ml2+9niIrSHFg56jIJiitlVdDmhxJLUVK87sAq+lNWQgLY6uOCZqTuK
	 fFdBWZzJO3SXbVuOxGR1nOtV04YAUrearXGqH4h+XvjYDVDZSGGkGmwgrLcnzwMZhg
	 sjZqOfQm9hIsQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A558EF48C4
	for <ddprobe@lists.linux.dev>; Sat, 14 Feb 2026 09:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177105989360.11327.2140666712785278341.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8a1f251db3314ec4d71ea456b5176f4a39b733e0a445a2b88dce5cb3a8c66bef
Date: Sat, 14 Feb 2026 09:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771059893
