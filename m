Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39A861D63EE
	for <ddprobe@lists.linux.dev>; Sun,  1 Jun 2025 13:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748784596; cv=none; b=WW9ep8K5qAte8upizcaJSPhr76K7le9uImqy4rDpJdE1WzDBQyVwaNO+YTl1i4NgSITO+4BO3oo0bvY22i1jGSg4MPNOOVAQVCaWzMR3QrUlpoo+HVmEkkel14WSct68ysgHrjqVZu1vCV6i7rGyRhqWuax5/8vUC+vGoDAmpnY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748784596; c=relaxed/simple;
	bh=raaUqobQr8JXdixjrJ15Xt5KOSckmQpdE6TP12Z+K/k=;
	h=To:Subject:From:Message-Id:Date; b=nkDoPUcLiVZsu4PCogjrb3eX7cqA3CH+0XDIk3EvrmbcVkbCAEJ6xXFKQahmMk6e4w4wMb+UWoPFnBnjgOmOUFKLbWuHMwNoC08PuNGCn3e6nVCF5V1mYPAUhReXYLm9/a+im6y8ubySan6ExpRwS1vJqOfxe3czJebkTGEK/xo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NEEIp7dB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NEEIp7dB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3CABC4CEE7
	for <ddprobe@lists.linux.dev>; Sun,  1 Jun 2025 13:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748784593;
	bh=raaUqobQr8JXdixjrJ15Xt5KOSckmQpdE6TP12Z+K/k=;
	h=To:Subject:From:Date:From;
	b=NEEIp7dBcAT862gSmOPPp6PTcQ3dscNmTRlxJd4hR+bUsNS5niQhzh0YZdwUUpjO9
	 U0txOgALDI4t4wKzcpQl41YHdPCy8IgA71/iCm5UuCZOR5mlCi9glR1jmF1s2hQiGn
	 0MIbNfV3D64Urb0RBCYE4BmBjONNjTZw+rwYcxVhKyNVIfIwCJAbxEkmBocretwo7C
	 7Ilx/8IOgsYnGQU8gKbh7S98OfLmaYLUxcRkV4KUE5J5OPtWm2dHadh1qFZ7ala4Eu
	 gnSI6c6u+j9di0kM7am+zlFcqoaZqTMmdsZ9kkUrfJm8xSGXVXeMt73ZR3oSYpR7II
	 7u6PDvyirf68w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E0CDC5B549
	for <ddprobe@lists.linux.dev>; Sun,  1 Jun 2025 13:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174878459357.7925.8867948122424672470.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 086bddddb56fd839088cb5033387c24e9f432d07d08a4f735bfe0b38f90b2fed
Date: Sun, 01 Jun 2025 13:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748784593
