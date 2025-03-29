Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D403329A0
	for <ddprobe@lists.linux.dev>; Sat, 29 Mar 2025 00:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743209993; cv=none; b=DEabmoeh9g+TrX5U/3elRQ7et45kCgE5R5ftNYYXb5HimAS48iUt8bD4uH+UK+gLgEJhjAqi8XQnT03ywuteQAe3/3su3iEKSZ7NHZY8mIbrrKljiQfHK0VgtV8QxlyedX65jX0kxqFe5VoiCOYBtjHb2QXrTcjYKFCNKHpLqhQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743209993; c=relaxed/simple;
	bh=DVp9V61QgfjkyJv6TRNyS7JRy8PX4nQ55JqBzbNbXhg=;
	h=To:Subject:From:Message-Id:Date; b=l4CPeZ6gAIiNtI4htyn1WEJvIjfHnjf9TqwStMXeXcv4L2wXn9/J3tlhBJPzWzBNl09/c+clzYpTtaju3EP/aEd6sz7kinsqFWzEH9fLwbdPV7XQI/W+IqurmuzH4NxNPISDPtNzLDzkSilfrDi64UMRHGNU5I+eB8bzpG3Igw4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bzE1QnmA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bzE1QnmA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8618C4CEE4
	for <ddprobe@lists.linux.dev>; Sat, 29 Mar 2025 00:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743209993;
	bh=DVp9V61QgfjkyJv6TRNyS7JRy8PX4nQ55JqBzbNbXhg=;
	h=To:Subject:From:Date:From;
	b=bzE1QnmAhuW6kV4cNnXhKJbnR1rUmfo80oOGdvTpmGIrmKKeFVeGhpcPufi7kyaiX
	 R9fOBCxcDOuMXnyou0bk+u3vBlPcLvgtONni8yc02+osY2upYurC7Xrz+MnK+yp1QH
	 sTzfk8rU4F0efyJgjAM3CWxqPF6xHjGum6A/XrKfu5q2M35Gntsb7GgpmDrpkD0rFl
	 YplBIvXNQj8nFuZSCVbF77rUxLmbqZA8ZUgLMPPqMZxBFNruIeyqZiX0y4vgiayqS4
	 vKhHROE4wA1u8bGKa5YpFFbFMwHvfCsRlZZb6iZVj2Bb9HNYoVEXyxmLQdtd0I1bKa
	 vcw5TxsOBS84Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E8EDC28B20
	for <ddprobe@lists.linux.dev>; Sat, 29 Mar 2025 00:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174320999363.18019.9281161054062590011.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7536af59b8455f2ef9a032f9948b39ce4e6fd5b2531dfb762dd19308f7853033
Date: Sat, 29 Mar 2025 00:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743209993
