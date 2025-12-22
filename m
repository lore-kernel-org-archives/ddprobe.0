Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6FC9C32936D
	for <ddprobe@lists.linux.dev>; Mon, 22 Dec 2025 06:03:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766383434; cv=none; b=kpA5fs9envKg47MJzw7JhTMMDYxH6FWPUQVhncoO+ZkMlGAFTY0K5d+XLtlU2CAqKzvmIf74EtYwjQ3Tn0PDfoL/PBjDoqiVDtaN50SrDPk5c0yF0cwAVY3UCwPRm+13faxRDbGtgiAYdZEXcpkDLGhFHPyCOZxcHg5I04ramJ8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766383434; c=relaxed/simple;
	bh=tdDyq0VX9eKNkQRSHnEypq+aq0gBgmNs71mLiuG09rs=;
	h=To:Subject:From:Message-Id:Date; b=OWjGU7uEsiYWgAmGdtViumlUIMcgP9nY2rI7BbI3gNX0C2jxgpRgNQNV53X9pGiPrtfGCLn+d9sP4Y2spRMfYVBb4/1ztxew1W//iXQmBEMjKHfW0gDfN+Q7SCHEbRDI1779O7e/aI+0fs3DQbyUrYojfxOY7glOcDYF4C38QnQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=C+VwX4HD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="C+VwX4HD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE370C2BCB2
	for <ddprobe@lists.linux.dev>; Mon, 22 Dec 2025 06:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766383433;
	bh=tdDyq0VX9eKNkQRSHnEypq+aq0gBgmNs71mLiuG09rs=;
	h=To:Subject:From:Date:From;
	b=C+VwX4HDh5Mjmr7cLsfZTqcf7ceKpCtZ7ih0NE8BDaS8M3pUbHPbPjtjl7S2YuGHk
	 XauDqFSErUjScQnPv60JElaY7ovK3SGgyY6DhEhb7LxdvPrdepeqXV4K6F31ErZ7XG
	 bEmkRgriiIrbAlg6xu4uyfxuz+M/YSQsqDjzbbP38DT/Qp3W4wonsFtwce2JgJ1InG
	 g/s3P3DAmhinJuJNfpzCfSGB3Y8JszWLDLHN7cj+6HaVt/45+aSxH/dT2fI6hQJ2Yy
	 DTYKYBiBrgEzwfOdY7HT6oMxWeW/Aw1iOTeJ5reytoQm/Uzp65uzaQkgssl9pVZtS4
	 ZEdFAKEFBDYhA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9081ED711D5
	for <ddprobe@lists.linux.dev>; Mon, 22 Dec 2025 06:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176638343358.21046.1935178320968901201.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4e9bbdd112aea5a7bc2cf714166c726964d1019fe4f92d2f535f39c25bbc4572
Date: Mon, 22 Dec 2025 06:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766383433
