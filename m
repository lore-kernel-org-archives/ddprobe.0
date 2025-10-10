Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31FBA20A5DD
	for <ddprobe@lists.linux.dev>; Fri, 10 Oct 2025 18:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760122194; cv=none; b=ui72lzASMzo/UQQh1UvZewJ7L1Q9qluYvn+4ddaA0bbgP7BV6bvumyTG5rfCUzZrTGHTrfUXWuVeK/k15ScpoC0qCFk/qSufhPXG6ODc6YTHtEfsFqYdjatilbGTBNURCpL/DynMnDUNC+vMf6lWtMnzJBVORwOWXcyCriSH0pA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760122194; c=relaxed/simple;
	bh=ZQFSlB7BMIVrQ5N/kwGJhLICVQHhfrwEvsBkjkSmf+0=;
	h=To:Subject:From:Message-Id:Date; b=LwS6lvwWYEYu+bHkdSGiSjZrYIXlHJz0yCHNdRsQVJ0LnWJPn4hLkoT6dM13By8f9vTDdxdzAXafEqmvhgXc22CeympR+plyTISdkLGMMSD0Tx0PHOf767PCJ+bstNrE61haCyfx6mpobuuUyFCQvq8wxCnrac8Lqbpfj/jdudo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pzKpWPxb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pzKpWPxb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AADE6C4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 10 Oct 2025 18:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760122193;
	bh=ZQFSlB7BMIVrQ5N/kwGJhLICVQHhfrwEvsBkjkSmf+0=;
	h=To:Subject:From:Date:From;
	b=pzKpWPxbPTbjQ89ncV7PF6qb8RonBQfkzeKu+qx4H7a7u5yr0B/kqrMZGbAgbR6gF
	 LULk6NvG7Xru9jxrZpVQ/3GE+q80fBaClvLauscA7P0/S/E3RiS9VcQxfFAvaghuax
	 Yy6qfd/a/QDs/ljA2G2LviuAIgOQfmA6WW6O3jLQIxLZQHtOSC8Nd2r10ZEaL8G1Da
	 uOHU9vw8G2ll3jziO8cX2ZekrYbRsUZy+gYjLaQEuXreW9VZWJISfC5e995TJ7A7XS
	 d28djNWCvI+D4lOnquaqxCud4moGkn+6e0OtUr1/9eec5s89UdxY5HU2Tn9rUtL5uq
	 oY9mFTfA8FORA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F708CCD185
	for <ddprobe@lists.linux.dev>; Fri, 10 Oct 2025 18:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176012219357.32331.1869654428370627683.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 70d9e5ab56ac9f83a8e1b649b1c6dbb2c800cbefd0b6d2523746b8d592278c4d
Date: Fri, 10 Oct 2025 18:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760122193
