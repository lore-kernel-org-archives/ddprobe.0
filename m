Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2257635A925
	for <ddprobe@lists.linux.dev>; Sun,  3 May 2026 18:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777832254; cv=none; b=WjnrIwz+2c8Yg7mTSYiOAJ2LBd9LdKBWwT/8PMXOMdOLaScEEN7T1Guos9G+6Z4OwJxPYp88FJDX0yd04imRUOP5kwjnZ9Wz0CgSWNxt9G4o9saRHrZ2D9JkTsHClLc1TEmHiPDq3hXmB0yUDAGmMdA3fnwNhC20ISLi0nQI4nc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777832254; c=relaxed/simple;
	bh=fO6yauKn5Nms9AN1F74BXdhSGy3RVK7200dVwyDivKw=;
	h=To:Subject:From:Message-Id:Date; b=M8AfFTWipgGfNF+RWSpe8gXyjWm1PvKYkG2YLwMcWVMdHjJToXoQ6OAnQqcbIXPtUoL2FiyUXQmaS0KNrT1WOJBmRYKhuP1C+BXemxMxLVMisUpyJUYlQDJZm7t4nP+qKABeLWuNknzLPLhsc+khPdjFgDN9vg5mgLu61yob+Tc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Bu1l5l5j; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Bu1l5l5j"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BFABFC2BCB4
	for <ddprobe@lists.linux.dev>; Sun,  3 May 2026 18:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777832253;
	bh=fO6yauKn5Nms9AN1F74BXdhSGy3RVK7200dVwyDivKw=;
	h=To:Subject:From:Date:From;
	b=Bu1l5l5j+8uZfbT17vUf+OuSL+W71V8+WjPr2NxNhWjt1yNCdNpxS9tYhAmld8r8O
	 C6jGSRNo8mqRRVeaI/tj9ey+YnaJ9Eh8uAxjQb0sa5YKCHesPWwRm06hnP/3Eh1CYc
	 g05vM5egeRdHmMsMZvfLgvi4YlfuOSJGVI7bHaxFUZx1HANu3HJP/6Y9U4n7Fl8WVO
	 T0CLa0Q/HjbPQ+YgPxsc1eeseMSJWAmGnLi19Up7gZTVgWJRuTLtbmWdI+YtQzuYIY
	 9G6M2af5p6RDKNSCVdGGNF5gBYNBHskWfucW+hnGEtDId7zWRqyn/ZeNXtKgZNg1FV
	 JPAzuP7bQiGTQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEBADCD3424
	for <ddprobe@lists.linux.dev>; Sun,  3 May 2026 18:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177783225368.5413.9771957798380312073.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 57bac2f018cc49761a6367d6845ab0ed2931dd4e798cfa21f90a42bc9ddc8c01
Date: Sun, 03 May 2026 18:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777832253
