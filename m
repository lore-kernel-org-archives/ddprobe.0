Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 305C054758
	for <ddprobe@lists.linux.dev>; Fri, 11 Jul 2025 02:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752200394; cv=none; b=tOOTv/w4IgpEEDR34opthuQ/4pOQDYgaUtxN7+YOSUvN5JzgnirtqDvV4h3ccc+tFWJdEnJAg0RttLggyt6JK0DElkgO7lbZhWwE8zShr1Q2TnhRdnnkw89RfIZxXyI8Wxbz9LGlzBZX+I46HlEfbe0depxmusprX7NkobvaKhM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752200394; c=relaxed/simple;
	bh=PUoQx4DgbszNqF3MaQPu9OWuvt50tHwgvmYN3UymlO8=;
	h=To:Subject:From:Message-Id:Date; b=bNs3mjiCyZFMrW1PNJmYRQJRfx34pOS2G67tn1DyRENplgqyOpFqYXuYOH9UdMu2ZXid4BARLuTPNwFdxgd5C4bSI835hIx2g4/c2H3PqMOR5z1UPoZJ7Ddv+T7CFe7MO5+acYtgeWkUNDRYzBnnCOv6WNhMRTXZ2EL9ek3r0fg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VVf66RWY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VVf66RWY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC6FBC4CEE3
	for <ddprobe@lists.linux.dev>; Fri, 11 Jul 2025 02:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752200393;
	bh=PUoQx4DgbszNqF3MaQPu9OWuvt50tHwgvmYN3UymlO8=;
	h=To:Subject:From:Date:From;
	b=VVf66RWYqNuXhXJMlak43cwiYMV17qdPZtmjWikZg/heHUMTtuY6b1LRRlbGm9KyQ
	 KChNrGENVAKsiEfrhmY6x9dAWO5kkChNl/REQZuF1i0R5U91LgGe/kxRB06P9PKMLv
	 LYu0yPsrOlxZxhdsKwk6Y9o8Otxz0tpIexjPKFvn91AquoBd9+kdKDpw9ZoGIkLooX
	 3QPyHYVxIljNxgHix+dGTRy4ZDgPJg6F0jHcJrxXuYw9R0xO+CDF5tzLsXTWnSP0hP
	 /QvFyuXGah+sXXRNR0KYR0VU0pO0g5NQtAbNm5XO+qekTDMhi7q4ZNcUut94GdI98o
	 zR+o7vqcoSKWA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FD07C83F1A
	for <ddprobe@lists.linux.dev>; Fri, 11 Jul 2025 02:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175220039358.23590.14775773811431124402.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a56c6c25853eebb75dbaca50ff9e3fa06e4d967f740e874c9eb9998901180ac3
Date: Fri, 11 Jul 2025 02:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752200393
