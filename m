Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40E713BFE31
	for <ddprobe@lists.linux.dev>; Sun, 17 May 2026 16:50:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779036634; cv=none; b=GRG4TCeL/KiDyGz7Jv7LyVBvPDvZIOFRdwqdPnTsvKdLotZfFjMikhXtb+dAMP2QN2uvL1xdqauOmMUg4Mu9RKMA4PG497yBVaQD0N0zyjE/6j4BWzI377X6qd9ECuffpnCJm3jlCwtE0om1CVswc3u0/237FlRm8JwICLNTetE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779036634; c=relaxed/simple;
	bh=4//c3kr04w7kkYb8dH6WjhlU5VLD/0ygQji3UyABYPY=;
	h=To:Subject:From:Message-Id:Date; b=Hj6HXTYfwfznZPikwgS3EuDjcwvyInWIZoHKII/KMX8ne5HdUQxDdNHSnzrWq9kcdBQ5Ta+Jmeir90OU2O8RjDQ1agekpxJxvrmBvmQCEA6uU4BLscMk8aRJiAv+HLQPsTXm231dzcrfhDcoELtK6T/elfMasPo/tMMq2HUs/S8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eI29nfqH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eI29nfqH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD2F6C2BCB0
	for <ddprobe@lists.linux.dev>; Sun, 17 May 2026 16:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779036633;
	bh=4//c3kr04w7kkYb8dH6WjhlU5VLD/0ygQji3UyABYPY=;
	h=To:Subject:From:Date:From;
	b=eI29nfqHJEgV9qix3OenjcUurlNsVDzEVa3HYPsqitfyI2NA9mJAv3FvASTEOIdhh
	 eSL26Xa7Mh05lXOyUkXP+Jy37T4cN/SJJreGcUdo+eWBX7joEjda2HBQBFXWv51DcA
	 1IPVwojBSb4Eg+wBUHeS98NWUuqPYI5jWmjU/EE1e2iKiz06raZrtxdQimsDwAwJap
	 qWXB7oGVxPyIEJKu6GoaM9tdL0A4zUiSC4BCsb4zrIt/ILcZmrdTTdZych0N5Uwu11
	 6uVfa8giFFuKbvQGKP+JO3JkJHn4BcEEj+UElXLkzB5VZ9Y3ClLJGLbt1ujvUQmoy5
	 L0KrLXyOvC0og==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B324DCD4F47
	for <ddprobe@lists.linux.dev>; Sun, 17 May 2026 16:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177903663370.14837.10222331257411673004.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 07382f69632db91d4e98c82ead9e42d56b9fda9ce079c47ce6b11e57517e2ea7
Date: Sun, 17 May 2026 16:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779036633
