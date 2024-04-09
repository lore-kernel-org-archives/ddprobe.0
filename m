Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E27F085652
	for <ddprobe@lists.linux.dev>; Tue,  9 Apr 2024 19:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712692097; cv=none; b=m1CLuRjQgK4Z6J+SoEqZIs15RhqtATfTBsO/jvKTX5A+FO4/i5mweh5kZvk+dj5gdKgObdO1ATQQqsBIdvIgj458bBVu8cAsRl5IjLU7s5eXBIG+t5GIPpuevylgGh4/aTkAYnCm5XB0kvKrYAp19ZmPkGJiB52P/U7FYvd8zR4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712692097; c=relaxed/simple;
	bh=X9FALwV4W1y0b7D+Ax9AeZix8cprqbvL3oYD5Jnfbq4=;
	h=To:Subject:From:Message-Id:Date; b=arC+ZVJcMjysSmTlU77WbETSPfoVVUgzJO7Y3xpkYNoKmQghofibCYqrK9cBaNVNDO9BSkGvOnEKLLXCa2AKOOdYmY79CWId3SnbYpZ3ezbUuc04ZcC5gazLFK3LgkU0aB6lqYfqAXBLyGgAYmdPTTpOi7WLZmZMZYKjhr51ue4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kNV8jm6l; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kNV8jm6l"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7A093C433C7
	for <ddprobe@lists.linux.dev>; Tue,  9 Apr 2024 19:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712692096;
	bh=X9FALwV4W1y0b7D+Ax9AeZix8cprqbvL3oYD5Jnfbq4=;
	h=To:Subject:From:Date:From;
	b=kNV8jm6lZqYqutQ5CWg09L7eNVjTWpy9Jr78tMFa5cc/Xuzvl+nJnGVURY9WKFwFD
	 x5VX6pZKGk6L6bBM1DFPT4wGuEKiT4jpbyh91Cz6ag5T2QpJLFGydWpq4is5l8Y4cq
	 dlC2f1nNnTfPBpTlvOHE0bIjaFVGhPrUUgYuQY4uV12h2unhUhpLllVwwT+9FwU6ZW
	 5J81obj82yYIcBtr2rOkWnOCv5CGXl5kOO7lVqaV01a23uFWVGD9sSPqH/RmHpBLls
	 Yhx7/MHlAMZOzoX7wQq/4BfG0GlJ1QlvH8vzN8etgX7cNWQ4h3OgitL2w0xAFCt0a+
	 tOMQBXEh5lbkw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 62BB9CD128A
	for <ddprobe@lists.linux.dev>; Tue,  9 Apr 2024 19:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171269209639.18924.14646382093499564206.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d952f7b8452b370b9bdac2af2f900e194312a7efb6c8954533bfa8045656e806
Date: Tue, 09 Apr 2024 19:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1712692096
