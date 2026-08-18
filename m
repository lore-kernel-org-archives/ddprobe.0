Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44118348C7B
	for <ddprobe@lists.linux.dev>; Tue, 18 Aug 2026 19:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787082634; cv=none; b=pqeKAFNExOxN673TPGVEWuJDzTkfkesDDabDipWuUjZUg/i41sfi+k0VfEAXVbPONoZvJDV5vYy7/jgYBk7hyLL8ZJbfZOhsHzGgqMxrbkg4A5MYwEB4Lvb9WITqk4Y5XrmqOg/lNOuJhNJWCd8QJF2juwGYDhA5+YYA4nfvEuE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787082634; c=relaxed/simple;
	bh=C76L9yBr+NubDEFmR/laXfWHQQ0y50PAcMV2CE1O4pM=;
	h=To:Subject:From:Message-Id:Date; b=QpaHItq8zHcZ2XlOW11WVY/tKb1QnAvrIGxt5J8MUteBny4gMBLWUKGl9twcYnU1UDL6SAiF3XGLOSiMa94BEkG1ffEFu578CiB0v+loVwFV3SPnrf/aek7eAjHTWlLR7Zsz1TW6qupxanLQfVeAae5EQVz0phPUeRKz36SVBEc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aaqjJEAV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aaqjJEAV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF469C19425
	for <ddprobe@lists.linux.dev>; Tue, 18 Aug 2026 19:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787082633;
	bh=C76L9yBr+NubDEFmR/laXfWHQQ0y50PAcMV2CE1O4pM=;
	h=To:Subject:From:Date:From;
	b=aaqjJEAVKDgv9fOS/u7H1e0BcFBPa8c7jqrXIIwX+/ZcYFGAbQTwoKsyeo4M3aYwv
	 psJwQ90D5S7PxJ44WDmBHnaf6+gGMfe5cq94citCI64DOG5R7mju/RRX3CAPQdFNNQ
	 FRqkzbutHns4MYlO5fkCdJehyCaHiD60StOHjKon7vzDRGCuSequszNldCXIcvv3ju
	 OrMgDrgvzq7lDmtbrCr62kfIHZg/5oZhRaE5scosk9SCHFkoGz+vFYqGxRih8h9F9d
	 e6q5snzS+P3rdResO3lrNq3FnYzm9eJKguWHtla21vMrH6dybSoCDfwaoLhP6gjj0v
	 Rux3Uv7j6zObg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9EFCC5DF7D
	for <ddprobe@lists.linux.dev>; Tue, 18 Aug 2026 19:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178708263368.764.2756092400621334762.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c762bdbde1fd603e7aa2899c1b169ab6af648c481dd98ba384086b48667b037a
Date: Tue, 18 Aug 2026 19:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787082633
