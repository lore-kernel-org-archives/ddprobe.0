Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0B6F22367B5
	for <ddprobe@lists.linux.dev>; Thu,  2 Oct 2025 19:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759434594; cv=none; b=cX9TOHK+yjy9Cfwy1zXqgDxPAGM6OIggxcZ3fNHOOKBXFK3IVOfXl7Hm0HEOCD93P04P9rXs4X2KxKdEhoOCqm9SVKl3dFZ7S5FJ71fHCDTOi6rMcHNO1nk03fk1clVwrvCChiYOOULBQCqEUvqn18OWMB0NECaTf50Go4ixy0U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759434594; c=relaxed/simple;
	bh=kFkeOuOBoSu0AWlktBU/q23JpaznemPOrf3J7HlqOFI=;
	h=To:Subject:From:Message-Id:Date; b=TpyG0bMIiDqCXxrnByoAVwHZpCe7/6MUXKTJdgyYfkBJLYzzxtJtx1gvvOfLUmPLxRQsjoRsbmwFl9AY60N+MLIuw8JFLu4BhzP2CUjc49FX/dmsHSOAnNf3ppi5ig2sgjnkTXJT5xFt/BAFy435qh9iG45WAqxXXZJxjIffHwg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NIw8F+xY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NIw8F+xY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3708C4CEF4
	for <ddprobe@lists.linux.dev>; Thu,  2 Oct 2025 19:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759434593;
	bh=kFkeOuOBoSu0AWlktBU/q23JpaznemPOrf3J7HlqOFI=;
	h=To:Subject:From:Date:From;
	b=NIw8F+xYBBq6N0hBB2BDn2AAWssrjF66JNSTD8aCQNSEZhbb4ibh+XFNEuMrHXmV/
	 lmaIwkVSvN2KflkOqkMp1E72ZQyIoZdSA4fyIzxzvcvZa78Q41jTDUqQ3iP53yqYEk
	 rRfHyx/XzQyIR9qEnd+LCu2De+t7MhBj3eR8KI4SYzxlTx9IfF6AkhEjburkPwS5me
	 bpGpPpBEUfKoNXbOPrKSDp3L947B8mEDCvjNpgi8QD6yMoXzx2qKCGrxEcCcb3maM6
	 slcO6p//DKEzw02xXg7V+ZW8LY00noqM5Xv8JWB92BamLPjQnwnPtHnkIDuhkmvHi5
	 K4FP3ZUQRa9ag==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F94DCAC5B0
	for <ddprobe@lists.linux.dev>; Thu,  2 Oct 2025 19:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175943459358.19446.15481057698795165071.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 68dd43eb8172a4bcf92334b80fed4bbf8ba2ceb05a4ec2422da8332f7cfe3890
Date: Thu, 02 Oct 2025 19:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759434593
