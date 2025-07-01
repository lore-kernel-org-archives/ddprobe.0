Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1587F279908
	for <ddprobe@lists.linux.dev>; Tue,  1 Jul 2025 16:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751386194; cv=none; b=ADnRMtHCn6En+IhXvhYCK8eeiAueUwI8fUvfRZ7ZAGaCbgk0eDEf4unhCCwtQeJq/0SR4rfRQfO5KGUI3ZXY8i6QeceXobjSD6fC3i2sEveZlqpa3jY+dnluOW2TjOYmj6Sg4xKOcWkGVlAL2WRSGXy5ygsbDfRaHqHsn2a9504=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751386194; c=relaxed/simple;
	bh=OqCb8aYeaxZ0pekC4zZXMKRU47snkSs+Q5GYB92lupg=;
	h=To:Subject:From:Message-Id:Date; b=MbrxBpPAEte4XIdDbLI0TKajXzkwTSkw1Xv1aSuci0PzM8+d1gqEiXWYjSNOWV+MFT3jQK47dCAGJyvxhd0YooVdKaju+QUPZ/DgEiXOpd6y8R35ieqr7ceasK7ADURuNNVEWRypkk2CNREeZmvn7BEsYcTy/eQSY2wgGI8EJQg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AHHs0jCG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AHHs0jCG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E0C8C4CEEF
	for <ddprobe@lists.linux.dev>; Tue,  1 Jul 2025 16:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751386193;
	bh=OqCb8aYeaxZ0pekC4zZXMKRU47snkSs+Q5GYB92lupg=;
	h=To:Subject:From:Date:From;
	b=AHHs0jCGcZW8l2YxWn3dYNlLjYD29efx42hnomCdsl154X0Nq7sDkoVpCb2BSCljb
	 bOpjWJy0PFahLKbWKDpJrWS5x/WFCBiaVcRHgpid5w7iUXl6gAdvrXzdeaeAMd4uMY
	 02oqlhkcCYnVK8aJxvBNV01ucWWKPo7ELk7XafJIcuuU3HbPmvNrPtYL4+OhP4u4M8
	 o5/0hWNiwBx08k5PqSCk4Lx2/BOyIaLmxCu9SeN4PktzyXYSm3Z7hlPuLCYPqRDMQI
	 TM1f0xrARmBWOMwPDTwZk6dQ9Q+JSb2O85mcSRj4u6J68O0/W1lVWGxK/K2uOXDGOS
	 SEG7RLpZcajqw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EBA9C7EE30
	for <ddprobe@lists.linux.dev>; Tue,  1 Jul 2025 16:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175138619357.28032.13890759943856441843.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 47dc51c52258d2ad311fd6d905628f1fa744632df4ae5637a1452b504a8c04ec
Date: Tue, 01 Jul 2025 16:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751386193
