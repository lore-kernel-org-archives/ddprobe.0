Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3FD741E8338
	for <ddprobe@lists.linux.dev>; Fri, 13 Jun 2025 16:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749833994; cv=none; b=OQevCeLbamj1uQJfnEDMBTXeZG0d2CM6DZvAkfVkZ3zKxRP/H9bndc29o10dqS/65RczqwHSrS+j6uKHUULbQ6ej0MgWApHtyMniI8xv10NxIDBL7VPWW5UF162H0zIvhJTl2q8pKldZOsNZY0MbGCpeosd2q5Vk93nxmFdukm0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749833994; c=relaxed/simple;
	bh=j9nv8IVJmYKesljKnf960xM54Mj6a2PvOqIftfvrKWI=;
	h=To:Subject:From:Message-Id:Date; b=tO5oT3Y+ELHE6RCQpolDv3hn01xksZ15UQ5pBdMp8ZSxl0N2MSikjiEKB9C5BzUpugQS1q75quXdhMEQJxktGmHkuMUlcgPDTpZARt5JDNrxD2956RNrjW7GJh2dkwfgMeDMuw0JO0DKKlYeVb+1sqjdM5jtfKkhfvbO9CI7/iI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YGGgVQ3p; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YGGgVQ3p"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5FFDC4CEE3
	for <ddprobe@lists.linux.dev>; Fri, 13 Jun 2025 16:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749833993;
	bh=j9nv8IVJmYKesljKnf960xM54Mj6a2PvOqIftfvrKWI=;
	h=To:Subject:From:Date:From;
	b=YGGgVQ3pFhw2TXU2HuJdQLO36tf+Y6gAZuOnXB5HaWJUurqe1abKpaoKdiHXM5ETB
	 O0ThL4zsvQbG1hQioIiKwbR1pT77I9uADc3FI8jiNpYPsmM7iRxOagvevLBNeYNRip
	 450zV4TU275jA2y6yZn8EBWlBUyzJD/bnBpefI1GlhApn7JKlZxq80tsbGXOgSt637
	 oLNZYexDaUW9K80C0sWmJ/1i+5jfScFg2bzi1GqBiELnr4Ebk04cxWxe69i0FK7zM6
	 FzmAz+e8JgnkO0h61EYH53VMgJyKPXg4f3l1DHeXPzxQFbo7pCggAr3zHrRrrKJQw9
	 BYvyVKwvWvYpw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90371C71148
	for <ddprobe@lists.linux.dev>; Fri, 13 Jun 2025 16:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174983399358.22511.4806391422123661445.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7715b018ab93856a03c0e9d1e0433dd38987c7de2129006de6ffedf7286eef33
Date: Fri, 13 Jun 2025 16:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749833993
