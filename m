Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6E733242D67
	for <ddprobe@lists.linux.dev>; Sat, 19 Sep 2026 00:50:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789779036; cv=none; b=mFlv59XU8iDTb7WqM4rx3vNWKFw6tb6YGX5RlwnN+LH+j3GgMmhRUuIYa4FoTZ43vtOQb5iZN3ilUqOwWmJcVNDxlASy88o919hGryBR8dJmGZ4imJijQtiMkLQaiLucsjrbl4q9hXGAW/HxS0LUnWOkHzBzz1uoCJcJqj2adaY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789779036; c=relaxed/simple;
	bh=2iCgOjqfbreJy/cmnxgxx5Hg9bdgP36CSE8+sZIlJtg=;
	h=To:Subject:From:Message-Id:Date; b=V7GKKwQFHPFRwg5x2klulyyHIzV3hXbeyv0zs+kuNR2k7GHerEy69eMJHzRTYo7WGsYJlPlRM4sn0ep7dPIYV4O/kPlyVDyN1jBPVUaWz7SCXEphU4BmBc15yUlESBC3WLF2TIwS20a1PeV9JXG6cSQpYhM0ywKUoPOpSAVd9pc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AOn+Lwks; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AOn+Lwks"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4B67C2BCB8
	for <ddprobe@lists.linux.dev>; Sat, 19 Sep 2026 00:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789779033;
	bh=2iCgOjqfbreJy/cmnxgxx5Hg9bdgP36CSE8+sZIlJtg=;
	h=To:Subject:From:Date:From;
	b=AOn+Lwks9rVI0eDTk4VHIz1xhUt/u3ASrzXGQ3gWuZlJ1fhLzEiAIiTZM6GlDOWjb
	 fbxzn0kpSxniWES8L4oi6WDLOzHChetMrM87TVR3mRzlQcPye0YAJawx0v0RS60c19
	 3/NGndxSBVI9glPyIQUoIpAXQDMWoGRBYg/Az8jBB5kK2hioTU0m4qaxkhE//SlwMV
	 IRedh3+P7nPGv/3TMChcRx3DLvj5oT4EO9tv1Jb3FHl+KNJ5EKsexE8b3okVg3/Cq1
	 hYqTbfFXqYNr4fk2ehWHrvQOWZk4l9HqrN2+MaISKEOjr7m5UHV4C2NoK23ffqnxnC
	 J+dGTgVSacl/w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABCD7C982D7
	for <ddprobe@lists.linux.dev>; Sat, 19 Sep 2026 00:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178977903369.12611.6893699504354424389.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 49edf5f70b383e4624d5104ee564c77d36b2af63969bc831ea14552a06ae07de
Date: Sat, 19 Sep 2026 00:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789779033
