Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40C1C2144D7
	for <ddprobe@lists.linux.dev>; Thu,  7 Aug 2025 13:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754575194; cv=none; b=I2tjRcl1KAi1+b5OFB9GC77eZ2I5KQXoSXBuvIRJP/UK0go/z17+oUtPt2UY5de34Dqh7EPQPBpTSIfz2AVE7irXgfHz77YfluZKoisU1iawTRGKQ329PFZvM0kKjc2ncOUSWvBdOq7M2bhFlGVefS/yWuIZVnz5Y7lXeI/VlNM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754575194; c=relaxed/simple;
	bh=5Tc/qccgVq99m+4MCnm6QvkjWc9o0nQ5xk//k2VNf7o=;
	h=To:Subject:From:Message-Id:Date; b=ONw198FqSNwW5pZmnQpC3qM3HkvmGTIZRKb9dXzFax69SqmETOag0a4c3nCENNNyMSonbd9KqF4r1XDlxFm86qnmI64vO3wqHPsJ1nqjQbIm2G6Cc2w3FMXA0W0yBfwFEPkaB6qUbWCEoUOYr4oTTiXwehAR32vbUueVgbs7KF8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Jn4jn22b; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Jn4jn22b"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC38CC4CEFA
	for <ddprobe@lists.linux.dev>; Thu,  7 Aug 2025 13:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754575193;
	bh=5Tc/qccgVq99m+4MCnm6QvkjWc9o0nQ5xk//k2VNf7o=;
	h=To:Subject:From:Date:From;
	b=Jn4jn22bnXW0VD9iE5e/UCj38s7uyCnj2V6b4z+JzcbWrNkjcMKVj4q/A4EHahmX3
	 wUPwMzAp5UyDfNLAfCkfh3TcqvColZZt8RE17y112DFyKkD5hcTgTwegjz8sv2xRNv
	 3mNiIw2S6L+E4jYjvbHcDMLExFtGn6AuQXmNRY8A7Ut3ZL5JECu/lvzseCc/TUEWcR
	 JJDAoM0Lo3M/KaTZseipedNgAPzg3BMXzHDwtPxqXzcCdElOZy+//6kumvmDczJXRk
	 kSuiiQ/Q9ug8QdtG9G6bDRYcinZTfMYtG7U/GmhnjfCDsU5K9dFY8lDcrArQ+IkE8X
	 aWjytbWCxtJsA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97E53C87FCA
	for <ddprobe@lists.linux.dev>; Thu,  7 Aug 2025 13:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175457519361.28206.8225707706519438805.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 536f7adf9ae1bc44417660b096b672b8ca6c3644b8af64167271528ec0d3ec89
Date: Thu, 07 Aug 2025 13:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754575193
