Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6DF8B171B0
	for <ddprobe@lists.linux.dev>; Sun, 16 Jun 2024 20:18:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718569103; cv=none; b=GoGaFG/F33bk6WGPjHyZVINpo61TvsVp+iUIcblqhv4S9g+sEss9QYN/1/5OmxakcenEKFFq975bWHQtBMzihHIdckRV1IZhYwchU4GbcT8qeY0xVEW9LU3kaZxJZe0a5n3acpI1/rIaRfgJ+TFMSxP+UFIeGr2FU4gnG+B6cdM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718569103; c=relaxed/simple;
	bh=XTPNsjPVn5yjtZgBFYZR0kGc/POrlbBqGhIk+keRpW8=;
	h=To:Subject:From:Message-Id:Date; b=fBm8XyP0e70hFjqyxE/+24jSeKkCfGq9JI7X+1qGMX9EF0rg3hNNN7lqFw2D1qM0bFk+OCmvjUUyPSYyd5r5c4N195Utf8A4yY8bwHymgPAldNZ2+6ZAtvkc4q31aoMa3p87ElIqfCdrHK/H18nbKE0Uoe2mwjOlOyuTaJyCicE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ir0gfDBa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ir0gfDBa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5FACC2BBFC
	for <ddprobe@lists.linux.dev>; Sun, 16 Jun 2024 20:18:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718569102;
	bh=XTPNsjPVn5yjtZgBFYZR0kGc/POrlbBqGhIk+keRpW8=;
	h=To:Subject:From:Date:From;
	b=ir0gfDBagkNKATJ9qLCz1qd/aAW/HpoU/hji8gJo+ONRFAKLXkAAEMZChbOv6NUC6
	 czaBGVN5gkZ6Ux9CblNRfMEvQTrrdIvcVpRumI2JubfKHwsx7L++5d7PYas1sGLbDR
	 H60IAw+XD22e2nmVi9ZLZJrshj4ItL/WTOsLghba9tF17gFjmSTh0LWkwE+eKHOEvt
	 K7SztOG6SwCGZ7GSoTLQgVc1x9bSD0EJyf9gPBaH9JdlODpafIbPdOP1nGeUGQTxuI
	 XwWjBFrghPJrHPqhPLUo+EyLhyEmCvOqeF+2K1RZz8uB8XQ8KCYVHdMqkg6Cq3O/vN
	 w5j5XTfIRBvJg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BE848C27C53
	for <ddprobe@lists.linux.dev>; Sun, 16 Jun 2024 20:18:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171856910275.14932.12148954496858688878.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f0e686a588016f9c84c478e8c15cddebea711808e9daca861ec1ceb1d73a8dc3
Date: Sun, 16 Jun 2024 20:18:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718569102
