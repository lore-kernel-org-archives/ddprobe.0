Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 61B49199EAF
	for <ddprobe@lists.linux.dev>; Tue, 28 Jan 2025 20:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738097154; cv=none; b=DpbqKAFAKptEDjVDAkIl2rL+NBe0RMaOYU66blPejJ8Kmj1RqHAYDxhfTBE4n5C31KHvcgznVs5pw9Z7G6reCHQejExqfAHM8niVRjZjN+YXuS9JJel67o/fsFJ03WwJsImtJyC16wAr5v1Z0jtvIu6e2jnHUcbIkD2SkT8Veaw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738097154; c=relaxed/simple;
	bh=hmqCt6QgEHmYZx6nu37HREoSoWDYHQPtqSG8MZFJoQ4=;
	h=To:Subject:From:Message-Id:Date; b=PK/yT2dnw6h+Ro+KXC+AH7PsLAZCE8tXF1Woh7fDMMs67cD+yXXMOg8jgm29wzwTAZNbSj4rYv+SQYuIpq1uDpIZTk6Pwu14snc09Lrqj4aDJVzvTnG08qgJI82wd78kHLi+lEFJHCGokKgVVhKMC2YuvqfWN5EonblQpNOoaXk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kHolr7l2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kHolr7l2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CFBC2C4CED3
	for <ddprobe@lists.linux.dev>; Tue, 28 Jan 2025 20:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738097153;
	bh=hmqCt6QgEHmYZx6nu37HREoSoWDYHQPtqSG8MZFJoQ4=;
	h=To:Subject:From:Date:From;
	b=kHolr7l2sDpvRj/LdrSdSn/uYKPUSv31ms5yIBBEnRPZ2H4ZlYmse9acPT90y+iye
	 dzUuDtzb8LHCqIBxzlBqfEtNegSynL/7W5BXb+dQckc4BigVvkDlFhjImPkKNO6irt
	 WKzcaHi0wxDp1QEZYeETMlAxKuKiQ8af/oXn9eeEmz02IinraFkfrxjHsXbcyHYWJO
	 FBQZGwBj2mbGdn0oyFnrj8OgLbZo7FHs/EHvbmpEsfgYI1uxzv5THqLO+yCcDK4N98
	 Xq/qnZ2mQJlpGuEHncqRgM6eyH3O1X5YNQvGwAx9bEU0UhEvODCAcr1yooLNlRg7cC
	 lTf+MayZR18CA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B958DC0218A
	for <ddprobe@lists.linux.dev>; Tue, 28 Jan 2025 20:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173809715374.2250.5486576866861632582.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3c3bb92ece237a9d76ac934c40593ec5e5f75ddc27b0e6dadbced49dd7501434
Date: Tue, 28 Jan 2025 20:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738097153
