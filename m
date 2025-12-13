Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 216301E7C03
	for <ddprobe@lists.linux.dev>; Sat, 13 Dec 2025 21:02:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765659774; cv=none; b=p58pExnuEt7jogKTkXqEEmRDsHXbGZptLqfeFafgp9MhNA+wP98ZHS73nAWX6g9iO5oQbI+dAc9DVjixkD+MWznR02dkoR3p3vR5oDDq+b95RTfiXrvLbdvT2MXCzHlSuw2ajpHZaV0fZFCFVxVhWdC2CIg3djk2bY4+cwjEVlo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765659774; c=relaxed/simple;
	bh=DZMSv827OpHc6VYpWcJ2mAKsXRfgsQRvvf6VA7E1Ep8=;
	h=To:Subject:From:Message-Id:Date; b=GSheu7mqqrS08ao0QIQGXwz62Pyx5Q0Y3yF/nOOwIpY3Z7AHCnE16BGXI+7abJhl3HmJP1FWggJiTs577rDyZmbwFGrhld5IxZ8pBEBLX1jLJoAAwVmqQxoWjcMDlon4vJCxs3cvhUe6IaWT4BjGmPGYiChSwGruaP2Np4rYn4o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fmR7TT1A; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fmR7TT1A"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8B43C4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 13 Dec 2025 21:02:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765659773;
	bh=DZMSv827OpHc6VYpWcJ2mAKsXRfgsQRvvf6VA7E1Ep8=;
	h=To:Subject:From:Date:From;
	b=fmR7TT1AL9O5y0jK5LAvrLc0rEnC+ZrifE8LvKgm/nR5uIlBoqVXI8N+Eo+FU+772
	 ko+9yYPivBwYzBVBFH1JjffzJPtx2Or/h34FMmZ4idOE8KElF8rqMvn0YB4QlQ0Bh1
	 ms1G9tx6leoWhAS9vUBAsV0IgxyXzV+UvvxGanPtS7awgxYn/VMUj3dI95sZIgc9NC
	 2D8/2jsHF9xmSQ+AIftXHkwUd3KiRLzqKZhHpfb7W3Grl55N5mJtp9U1LR3tRbqOpU
	 PqpzdnaHPvS0QgTVefszzXzkb5dYt5tTGBHQabbgHFcTO4lb5FP4BFomeTvcEE8ibn
	 fdllsQ77otOYw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96B93D5B161
	for <ddprobe@lists.linux.dev>; Sat, 13 Dec 2025 21:02:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176565977358.21192.18093736874640333427.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a2e92131fb7c453d1f62a1ce308c5d368262df3e4e27321a11b08b08acc31628
Date: Sat, 13 Dec 2025 21:02:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765659773
