Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23CA01A275
	for <ddprobe@lists.linux.dev>; Sun, 12 Apr 2026 06:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775975854; cv=none; b=A6wXzdhW4+Rtea2/NSKrPqXxeDF8dGtxJrU34gl/YyPxLxcV2ohGpX1XL+Y9jMV2/v7p3uoOfCb0BRxGL6XJ65MsZBBpeaw7n5+I78s9uQxK1gXqXOsdB03dWuVPEdPqgq39vE3IoZHqkWDc4Kzd4CAuZS52SotjrcLiB0dzpx4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775975854; c=relaxed/simple;
	bh=cBT9cLLw5+LtGADz/gU79rWfCFACGy1C0U3NlaXwllE=;
	h=To:Subject:From:Message-Id:Date; b=Rm/kLI/rUemx9T+qVBqjWF3n8OzLrF47r3xp2U2T6w6xFdN2Bpfv5ttXCO0U0xPTUgv5MsJ5aQwwjZSkxOpE9NFX+tCj+bFxfeN+IOwtNvGJXJkilzSrmmip0vQkt+L9pTFUjOn5aUZmtYnDJO/kaI4RbgPozLiNP2vzB6n1Q4Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uFAXI5TG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uFAXI5TG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C43D1C19424
	for <ddprobe@lists.linux.dev>; Sun, 12 Apr 2026 06:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775975853;
	bh=cBT9cLLw5+LtGADz/gU79rWfCFACGy1C0U3NlaXwllE=;
	h=To:Subject:From:Date:From;
	b=uFAXI5TGo8y35oQt4Kf14rreaKbecTg5WKz1qRjaM/k3wWZZ+LQxYvqT57HEOz91c
	 Utzavo4qIdpgp+NBFJhI+jCnkJx2Ke7pqxTXHCibmZeJ1QLmUcU77mwg6V8IdaHE8y
	 DVDkQkQfwyd8GEIgagRnYi2u67dtdHZ7wt+viGloKhzd0BxZqlRtgOv3zg4O3Wd554
	 gOXKv+x8goWm4yJS4EH5uPmOW38LMBXuH4GalI57TNH5Un5kGpSnT8YK/jdr/vN6l0
	 DbP3XExI6TCiysqAhbIOos5BV++AyNbbNS5pJr+WjZfjgDDH3aGkNhfsEe/gCPkPHN
	 o+nCfnmMZiJRw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B12B4F3ED7B
	for <ddprobe@lists.linux.dev>; Sun, 12 Apr 2026 06:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177597585369.25331.6454747710559093578.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9d1e7ef3740c3b5b61ef85524d44c5413eb6766976103d81aab78e625a40791d
Date: Sun, 12 Apr 2026 06:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775975853
