Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 50A5F20550C
	for <ddprobe@lists.linux.dev>; Mon,  3 Feb 2025 18:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738605954; cv=none; b=RlLDuCY0dwLp7m/czYpA6wGAtzCOJeDW8UhQ4GRTRpu3JxHVH4U4/ocewge1qqWgfIsV/ItOcEOqeR4XW9CRiDttA6n8VjX8hiNGgGg89zmZnAdjS1fgENSrMCBrivILWnLsi8v82CFwp0TqzhOQJUnjsqntanyr9kwmJrDfrEs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738605954; c=relaxed/simple;
	bh=VKU3by9MkmZVVcZN3E57GX3t+adZ0YlI+MnW/5EP49I=;
	h=To:Subject:From:Message-Id:Date; b=qaXJ0b8YzqP0BjFh89tsOPkFWVj6W4TY6M2M/8BKg73kDFoZq0xWQehZPcU6vDt32/uf0Z8Q59ysFi9Mm1WOExtfFMhvDE/cGePO5LmmtUHAipuXvo5fWksVb4W+opsXU4c+tqwUWeL13i+SkMWrM/I7A+T8VEYObGcg3+V21S8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=thzS8zwu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="thzS8zwu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B161CC4CED2
	for <ddprobe@lists.linux.dev>; Mon,  3 Feb 2025 18:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738605953;
	bh=VKU3by9MkmZVVcZN3E57GX3t+adZ0YlI+MnW/5EP49I=;
	h=To:Subject:From:Date:From;
	b=thzS8zwuHBTGYVqHvm/hUgm/w/CYGJTlqhkD7hvXRrqEo02ezn6MhNPG+5AKKMMkQ
	 E20yw3X1hlxxQBiaC5o5roYD+voY/Z7FsX8luy4o+2aKss2JP/y2KpnZlZLM8omyVf
	 j9q1MckFTRPEcFIt5kGkf5J/I5SE09XyBj8WOQtWdz23HVfsrLrzBJ01OcYWFqpdCD
	 /kCliGXw1ZdO4fvVuCyhjK8iUWbrCedH34Y/oT8fn2/S15Pg45sNPCq6yu8nr6DOIv
	 1donMTnH89aERLAUgHQRT2RdyBN70T5r8MKB9T9Edjw76PNjiCxM1ghi3YrVFRS5zz
	 pQ6BsX2hlAa2Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95550C02192
	for <ddprobe@lists.linux.dev>; Mon,  3 Feb 2025 18:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173860595359.21368.13984370616945846046.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e8a4fbd511eaeaa273f9613321605226bf3c2001a9fdaa46d0a0d0f3568c53de
Date: Mon, 03 Feb 2025 18:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738605953
