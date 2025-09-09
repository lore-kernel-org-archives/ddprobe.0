Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18E1126F45A
	for <ddprobe@lists.linux.dev>; Tue,  9 Sep 2025 03:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757388595; cv=none; b=l2UY/8ApXL11OkloaeXlgheWmV7fNcmHXFkQJGLPU3fphGNNpNTgEhVufMlWOyj3d2UEPd93sl3n4FBi/4SXdnyY65wih5EpEv7yBXZ2et8sS8MX5BrX1JR1RsvUM+93/YzIJ87Lj3M6CUdxqx74NX+Seq4Kc0W4K1wdP9RYcoI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757388595; c=relaxed/simple;
	bh=TLCSIeVHHXyslBfSstuH+jk+Xu+BcvbtycbPj3qZUW0=;
	h=To:Subject:From:Message-Id:Date; b=C9liaQemDf0FYVu2iQuZF1/AD+mqeYEjmLB+Wqw/TmbZGqaHItO4AHJAZllGGwJB1IMjwuao5zljYcwg4Lhx0ui1LsYzSCTGNjBYzTXa+KhoxI89K93I3tAXV4ovoPOh2rHG4otQfR5p56EpaUABKX2hDZOWWvjziSuMGZJ8Udg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NDJKegY5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NDJKegY5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7120C4CEF4
	for <ddprobe@lists.linux.dev>; Tue,  9 Sep 2025 03:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757388593;
	bh=TLCSIeVHHXyslBfSstuH+jk+Xu+BcvbtycbPj3qZUW0=;
	h=To:Subject:From:Date:From;
	b=NDJKegY50qKpKEEcUoP0l+8tmBAD7UsYM3I/OqlOIywImPR3fi2dJQixtIyx7FrqT
	 mJrbURcuBsFns6bqg/VREO9j7xvwwWhFjEsS7VIuqQwSOQW0lvX07OTzVG26spmCpp
	 lyFC5axf6A/UUdF6KIyYM9rZheIUxUHXpLNwWYd48UDxEBX5WktLMJMB1g3vvZPWQA
	 JLcNl6lcvDniLLUNaMdK9Bv9LgfZItIUW+NqEEaKnBBa6L+YZ1udKKlov4qyu6Oljm
	 QZeGt9Cz3pzoSldICt6IWgXZcJXUse/0lk401w9WeI3ibUeJpIoByZxAt+qW/KX5fn
	 y/HrVFa40H0CQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 952B5CAC581
	for <ddprobe@lists.linux.dev>; Tue,  9 Sep 2025 03:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175738859360.28202.14178459089247607030.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bf69de6edf300147eeb58515c54aa521eb091f1992991ee6be6f652ebe7fe94a
Date: Tue, 09 Sep 2025 03:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757388593
