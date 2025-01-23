Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 60B8A17993
	for <ddprobe@lists.linux.dev>; Thu, 23 Jan 2025 06:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737614754; cv=none; b=lhW6PGximpFiyzv1vOM0Nhgc6iWCiAkPjUf7D1yPO7lzqf/4V934O4FaYm8kE/mtJFWS6BluPfD87/oG4FZQRcSUkJvqCrmBxEBZgnjwUFBCShTuNNJ40W9oWjNEbiNNk1NFug97fC6+jiII8wwfhkutm0EDb8ASSLgu2rzg74s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737614754; c=relaxed/simple;
	bh=UUq2I6dpE8O4zfWbhvrfswcxYAAzrboPosGSCf5debY=;
	h=To:Subject:From:Message-Id:Date; b=GlI6qsxm6bwCAUodtqyEStDfhbmuoMrzc21d/o8hy+oE18KkBmRjehkzXQ5kLLuqBwKXniHqMVpsHSKchj5IOGIgZ3vloqsmz1ly2A1IY4MdX5oDF4d9wYS5Ca09D5lkJf1zLOV5c1hf0s8oVL/lXifHQ4u6ExTcuIFydw8EoAw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=utH9EIIl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="utH9EIIl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7627C4CED3
	for <ddprobe@lists.linux.dev>; Thu, 23 Jan 2025 06:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737614753;
	bh=UUq2I6dpE8O4zfWbhvrfswcxYAAzrboPosGSCf5debY=;
	h=To:Subject:From:Date:From;
	b=utH9EIIljwM5Irj7p9udtzbNbyw5wXuhy5ig0sC0VhWhScZw8KiFyvIVtWkIPG+8u
	 xZjnaWVaumVpuATCz/gy57mHQAvpqFpPgW3lgX1tt5hZs+Adc8B53CY/gN3qKd2NTY
	 U7FkmOzjDhVrXvPirrhiiOHb0+1FYo3VrY4JvPXBfLs3G5LEkM3xR6c+nzx6Y+Pz1N
	 hcN1OYC0zqZSPCeRTzdLpJeR7Ot+p+rr2194YEYLd7BIA9JUy6Mg+IbnJoUpNRfqNd
	 pz0QRhTlRMIGGZB28kFsO25ELc7neJkKGJ+bu3DCBPOEezVOdT6V3/6nkczC1c4A9/
	 XXTBI5oKiRt/A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 998DEC02182
	for <ddprobe@lists.linux.dev>; Thu, 23 Jan 2025 06:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173761475360.22988.194816594536887580.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 877956737178ca9d67495b4a707b75222d2e3e834104c20305b4006054bc5200
Date: Thu, 23 Jan 2025 06:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737614753
