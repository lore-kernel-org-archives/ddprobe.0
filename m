Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E6BF3E451B
	for <ddprobe@lists.linux.dev>; Fri, 11 Sep 2026 02:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789093834; cv=none; b=e7nh+UUSwDettgyYnzKs3OO9OWjnu4XXutoXzzsWpSpJoDCDBaUoY7zNTtXCAq9UAqtGKl6GSTf71X/MbiBs5aGvS6vKHotKiGZK0kK600wbpj/ESYT/N1gQxDqFbOEDp81geQL1SBb9UmFyrLfAL1GF4PmjlULi/UuABI+Y6oE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789093834; c=relaxed/simple;
	bh=r97mFCZNRdU83Im0Rt0yoO3d4UdBh5wUaL842+vWhyg=;
	h=To:Subject:From:Message-Id:Date; b=MqpiFxyBZhi9z0h/b8/C4nNcnXR6jMNbp/Zw1Qt1p2m2hhw6KqYn3xf4cZfNq1zQC+CVbp0pfLEfkzWlJmlU2Mv+C7Gx4+oeM/X6MakNuoaizRyN7QdRUq43uxUOVquIkYHKsXkUsvb50QyBkGv3LQ38ZDNNFDQ0w3rFIoJjf4U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GnlU0/zn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GnlU0/zn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CDF95C2BCC7
	for <ddprobe@lists.linux.dev>; Fri, 11 Sep 2026 02:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789093833;
	bh=r97mFCZNRdU83Im0Rt0yoO3d4UdBh5wUaL842+vWhyg=;
	h=To:Subject:From:Date:From;
	b=GnlU0/znCZBwlf9KTW1J8LlaCtVwMfUQ6XNKW9t/8VXLuz4oMGhvpmjc262o0zUod
	 nzfzrEmk39ScCOV4Ji92phGpMf9MErBAF6cJrbuPVGt/zJDHEDGhPQKx/mzOrv6n+J
	 MBH65Pr1/QfUt0NQAgT6tfcEIRz6+QYg0t76Too0wpxYI+u5Vx2HU/mPzUiTEoxLMt
	 175BNZ6JOdKr1VmOKLp6X85p5kGprAMopZEMZscz+YBdzJRLPkti/1RiBzCHiFlKFK
	 Fqu2RAXQpPzPTeAeazfE10UIhIXhpb7DMo0crZvZBvoM9GPMDQZG03o46BT9cPrC1m
	 qxif/RzStyHMg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAE93C88E40
	for <ddprobe@lists.linux.dev>; Fri, 11 Sep 2026 02:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178909383369.31445.13870203432285454131.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 10510b25c8a4bbe610803692fea62fbf068c21a77403f1a443e707d7bbff62cd
Date: Fri, 11 Sep 2026 02:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789093833
