Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20A5E152E02
	for <ddprobe@lists.linux.dev>; Sat,  7 Jun 2025 03:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749268194; cv=none; b=CHkZOzseAs84KeoawXKks5fvdg1XbSk7QNodhsWCHCEKKA8NJUjWZCXpLkL8VRO+xXIZjYoll+StfGYzXo2H6qVy9MU0a9veIbm8JIUZkartsaHpvC5UhxtVXsSTJM7fUidddGVaKOwX5UWQdL4kYs29s1sPyEYxc3rjGM/aSHs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749268194; c=relaxed/simple;
	bh=b28H/qLJAvD5U2lSPlOl2DMHj9UUfQIvXE+SDlzT1zM=;
	h=To:Subject:From:Message-Id:Date; b=fcXGgyWzoWRmtJ3jQLQ45/TEh6n78vOXqJjRfThplskkCnhp4O89eAxypHXdqFkEY3XLpZjNqJ8NetN9cHc8hAJ2FCB1aINzy3bGFkRqWwG7+TjthOCovZBYp0H4SDVMl+qTaLiIg5f0jggtx+kL+iMbzsu+6CXoFyuMhkx4n8w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JntczH/0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JntczH/0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9063C4CEE4
	for <ddprobe@lists.linux.dev>; Sat,  7 Jun 2025 03:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749268193;
	bh=b28H/qLJAvD5U2lSPlOl2DMHj9UUfQIvXE+SDlzT1zM=;
	h=To:Subject:From:Date:From;
	b=JntczH/0WuER+XPN2gZTMyoqr/sd+LQ1Yc9L+CyFUY9EuJ7xX1ybnDKZZoY/3NQjO
	 11ueTIJqXQRkEg4edPkAeqASxJcd9JGpaaT/BVb66KQX9B0t3R+G2X7s3iMHNKlES8
	 wf1ex8R/50WgIV8RQzWyelYdavgMFbqiKuqfcdUGQQTYHvSii5CTRyENhxcXDhYfwW
	 YquduClfZ6icXNBYA903cQ5iA5Zz3bQoYp62S3T7/d9jJsdFHhJHY06sgstisIjrmZ
	 51Q0oWnggmvIAk1/ZcgEFFzuOt2wgoj4GlQcHtwtwOSk5rCT4/zZtCSONYRVgWfMw4
	 9LpztZkcI/SHw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 955E9C5B543
	for <ddprobe@lists.linux.dev>; Sat,  7 Jun 2025 03:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174926819357.29672.7566341987009802843.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 77ff86317214ad092c28b41bd6e1b2377b91038246eba8c099aec20f2365d94e
Date: Sat, 07 Jun 2025 03:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749268193
