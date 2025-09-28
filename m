Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B5391D63E6
	for <ddprobe@lists.linux.dev>; Sun, 28 Sep 2025 23:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759102795; cv=none; b=JJp/THcJ7TK9yHXhXKyivvbv/rBYhoe7IU44xhTZBLbRaAUnZXuxUMwwD30v+H+cSr4jEtw5Zy0o/1Ic3H3IChuSHIgMD7eW5l+aVs0jsRaLO0ym0A5AucQfyrOy0VnSs0/CDORQOten+O/Er6Yd8jjaSA8mVXW/T4lQ8tUH6nM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759102795; c=relaxed/simple;
	bh=HK4jf8F+5qXSEwKkE5XNOAEr5H9gcs7WjT8BdHB+CPU=;
	h=To:Subject:From:Message-Id:Date; b=J/+1SVwft4dKMUF5mBzx+WUwLcaE2/QuWT0uylS7socHHD/oFLjDcsJqDp2iTu8Vmqs1Ot4zjWAl1RTXzOBzyi7WOjm+hjssR+XQHtlQzVk+4MIOQFShQLv5EE4LoVGW+l37+REpfo7678yHJotzjXvuFK8WJuSeYG+8LdY6XtY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XnTzqRzn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XnTzqRzn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7052C4CEF0
	for <ddprobe@lists.linux.dev>; Sun, 28 Sep 2025 23:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759102793;
	bh=HK4jf8F+5qXSEwKkE5XNOAEr5H9gcs7WjT8BdHB+CPU=;
	h=To:Subject:From:Date:From;
	b=XnTzqRzniMeRxTlFXayhjCf1uxjjR5v3HSirpvNm5DsZ4pU6h7/Ot8x6av5Xc/syV
	 Te9m/DF033ss97ub9IR8J3UVnM5epAVA5pkKG3uRSfwaojPYGWX+xgYB5Dw2B6Aeci
	 m5gJQt6sbkOrBEpu7qIpalMaEyADXaOa+cNIHi0Q74e8ar+Ylpaix1qxSNU3VKXJFc
	 vp5aBfO4gXYxvBvq/4azlrla62BLr2ufggLcxNahwy4RP+VOnyV7bcDoMmccRHGHT/
	 TUw8JW+5+V7Lj7IUySs9nGEZlFpqPxxTP5Ob6rcKJJe8W3EBX8+2FvogZEaXn6PHP2
	 x68725xix5f0Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F9ECCAC5BB
	for <ddprobe@lists.linux.dev>; Sun, 28 Sep 2025 23:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175910279358.22409.3855995854170354150.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3bdc8ff0e33e7e8c4670885cc5d96a9f8d82ae1640bf02009a5fb8da749f85c3
Date: Sun, 28 Sep 2025 23:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759102793
