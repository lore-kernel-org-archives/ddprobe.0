Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4978F175A6D
	for <ddprobe@lists.linux.dev>; Sat, 20 Jun 2026 19:36:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781984194; cv=none; b=ZUar2D4kf7LvuKvLvEBS/seG+n2r2wts1Q7QVtQqZ8uG+0oVRWDjPaCGHFHOICw8oKqm/fY5GQc51SgKeyY2VuijrTtnK2Kgm0bvDM5L4LEqdUbYbbmHVs5JEdBxL4OKWYSw1LHHzeW+uL4rq3VftRNIYjDyJ6kpEkDxk9MsCpg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781984194; c=relaxed/simple;
	bh=jlGPDPax8nPWoTTVqtXD4HhWzPjRQt3ITzTTvaTfBdg=;
	h=To:Subject:From:Message-Id:Date; b=Pi0S6W7kBZajkBFqOQec9dzleW4JGUJwyx4f8/bto0WS96Xh7BfYAgBgErSmdt95N7of+PAmd+ZseVdKdI1d1oc/ozNaUR5AU/Bu6I+T/xhf/YOwKIh4VBIhAYK6G719yk0+uDEZnXNVrmJoIHeNdIkwVtGOXts8GUyKK29Ph5o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pRaNmNcT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pRaNmNcT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DDC1BC2BCB0
	for <ddprobe@lists.linux.dev>; Sat, 20 Jun 2026 19:36:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781984193;
	bh=jlGPDPax8nPWoTTVqtXD4HhWzPjRQt3ITzTTvaTfBdg=;
	h=To:Subject:From:Date:From;
	b=pRaNmNcTsEcDZoO0rDLAjKQ4ufperuUo2B1M/zbCVzYvSY+n8xNqGWmMl9QXhqGQp
	 kos84dI2eopIqk9Cut3NPri9srDRCggSAa5QAtfTRjFZ/IJNqax1vn0d9CC6544Adq
	 3Owyq2VrvaFH2cDXKroBLiXxWye+Dq3AL1r7UjXmq81Y8sWCdwyVsWYylYo6/c1DWo
	 manfJeMR8YmyvS7wYQYC60wAhyAwDpZFRhdl9ACf/U8KJL1VPURdao6Q3vkCv9m76p
	 JRtDwT3nks5AA8OkQMt73C9tFFdxn6xq6y3PhB1roD+1gzREbSufCMGVmyqvL6Gq9u
	 i0+Gy31PtQBWQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C2DC0CD98F2
	for <ddprobe@lists.linux.dev>; Sat, 20 Jun 2026 19:36:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178198419369.9349.3165170990654533038.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ecac99b48190c6f251938321c0c54d967166b378f3d73a8f9928f6761ad05e42
Date: Sat, 20 Jun 2026 19:36:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781984193
