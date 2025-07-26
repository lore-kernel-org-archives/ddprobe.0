Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2ED1417555
	for <ddprobe@lists.linux.dev>; Sat, 26 Jul 2025 21:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753566594; cv=none; b=Gy6FSeIaQ4VDbLSyuUy2ijLfOC42V5xq8py5zF02MkpJdJnmCQfv887ZkpyXRb0Susf3DtzCkQ2tVVl/DCMVm+rUOS8/9o+sb+6QfXDnX1rR7rABv0T75n1bGmg2t5qbnnxwj6206AEgp5/285YXdnzqxpShVfoXZdoFw/hWnNA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753566594; c=relaxed/simple;
	bh=od7G5roPRq9Y3vVFBu66+3m9WoW//pqFQ70/qPeRYZk=;
	h=To:Subject:From:Message-Id:Date; b=Yn7BkHjS+euO5L3hLKkbVEURZwmPOp066FbGCKz532Bh595mFSfcjGhHVeYwjodz+xnLL/ThqKHNToShNdJhyrZbAD3afrKc8KZd5/EMiLSlkDVJlMve8mbjw/4fQfkolqPKJNQlMjMlP0i7RZLQzxEve8DQ+1dqIKdaZQMFHsQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XLmmjN9w; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XLmmjN9w"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2E6AC4CEED
	for <ddprobe@lists.linux.dev>; Sat, 26 Jul 2025 21:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753566593;
	bh=od7G5roPRq9Y3vVFBu66+3m9WoW//pqFQ70/qPeRYZk=;
	h=To:Subject:From:Date:From;
	b=XLmmjN9wNlTRY2z9Br+evsqOGyx2zyKmmaN19+9GK3Fw6P7w6yL8Pr4Fw1er0a0hd
	 2gIxtn/bLfzrtJqFmOenh7pRU56yEJR9nEnmE3B3bK/0ngS5z8zGi4qnrbEVyhmSlm
	 FDPAvZRGqnwytG2YAtWKE3Lp5MFFeOJpYPKvJycCArnQsEAm6CNRuPzZip1rBPgF14
	 CkdEFSCKJK9OFVFjaH+9QapfckV7syAAyQDIMGesYA4djszljNJhVPsSSlYTrcrJaF
	 yi0lWPpWzJABNP321nO6dV7Nn6S2XDs5kSWVTYGFccIwZG6BDb533KIqRObm9ZR7OU
	 JIZm3qKk2NxDQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 920CEC83F17
	for <ddprobe@lists.linux.dev>; Sat, 26 Jul 2025 21:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175356659357.5406.5892665339484644130.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b145140e6fd8caf6be74764b8e660930e1c5d369b85041ccf85d7457de1807df
Date: Sat, 26 Jul 2025 21:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753566593
