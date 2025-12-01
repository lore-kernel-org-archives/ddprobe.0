Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A94130214A
	for <ddprobe@lists.linux.dev>; Mon,  1 Dec 2025 10:52:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764586374; cv=none; b=J+wQs20G/6GFO7dhCGYj/0yeT+QysxqULzpEM9/6qodDfTHBrxcekKRcpFZAgb63n8b8kIVN7lQX4V9HRUnWJut7dkjP59QomJtHKNoMzKVf+68UbpCQGQAWYnYQlgZISElJV17yGB6GiLD0xcDd2EP84YqCZUQjQhvm4DyOf6o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764586374; c=relaxed/simple;
	bh=DjCs1GNJrTmTJDrs0goXTOUd4810XzxI1aw8I/ZFjpk=;
	h=To:Subject:From:Message-Id:Date; b=gtB0qGkytJkChs5jO+Y+YO9iq2yKgB0PyLQjLul6eqn6PRQzW8+UbDKq/K6nDWfWElnp6QCCI7redHQ4evfmCsLp5hTpavbA1pzvYROryo9JxVPWOZjvbjKiqrqm8DcDkuD7NmItk4EAc3hvDqPCPPdMKMkdMml2n3M1n5fvOss=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=R6mz9oBl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="R6mz9oBl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B3D17C4CEF1
	for <ddprobe@lists.linux.dev>; Mon,  1 Dec 2025 10:52:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764586373;
	bh=DjCs1GNJrTmTJDrs0goXTOUd4810XzxI1aw8I/ZFjpk=;
	h=To:Subject:From:Date:From;
	b=R6mz9oBlYmHIRv//W4bORHBuGVvxRfXrkV3eQCatIiw86xtz+oz3nosCTozInHeJK
	 xf3JOBcGOklh4LkYX/S0YZ+I8BoZllmJhe9ZRwFbJ8kPmUnFxPWde5CxKczLykWf22
	 nidAO7nZCAwNbwu0gljXv+hO8fesib2/x/uWt0i58KNSb/w+RA6te6ZyZuERYYkUz3
	 Pht3oANMkqShN6ACVK/PQB+G7B42KGkFoFtv0qyqlLydnBM3HriV70nINRyXExzO4M
	 6aCOsJdr5fUG36Tim7caRdFNqAnv/t+DE8bU5eybgF4JKDPJL40DzXymLkl2jjN+/W
	 kJwTJH210Pq7w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C89FD116F1
	for <ddprobe@lists.linux.dev>; Mon,  1 Dec 2025 10:52:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176458637362.811.7432983051342389053.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 06c7ec8bbb925e43d09dce71e430840e5fb3ea9829826122356c2527b70569d6
Date: Mon, 01 Dec 2025 10:52:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764586373
