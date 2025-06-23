Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0ED8F72617
	for <ddprobe@lists.linux.dev>; Mon, 23 Jun 2025 19:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750706994; cv=none; b=nc+s0TamqSDMxqJIQPcsqkOctpQqvnR8O47b3r6ZQ2tfPibaM2WWhuMJzENyVFtvkxsCgAd2pie+k4p2rM9Ot1aK1eUCKOrsIyNuWpnXuWLj5hZojgC4dupVdWpW9n6iDOj/vnh8yaBHrGwcK6C7Kmyzpsv+ykKJy1bK9sYHjXg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750706994; c=relaxed/simple;
	bh=3OpoeCIeVT+/dq5eQsOJDAKWIGUfv4Cytg9T18nvGUs=;
	h=To:Subject:From:Message-Id:Date; b=TjEps8Tpadnv+E1ZtgqB3qdznb+l+evPan5Ch5AjbBZqyenZZtVK0/lHakc+oFLOFFOvXs2/M0pKCb2nWQeUIdZZzKsn1O/k7ebdOoBCDwaeT4lYdQM4+/R4LEDIluiPa9kGbwoS8PygVKB6YwiSJ4/zGgW1AE5bw4KEdRILU3E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WbtK5sO3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WbtK5sO3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E1F4C4CEEA
	for <ddprobe@lists.linux.dev>; Mon, 23 Jun 2025 19:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750706993;
	bh=3OpoeCIeVT+/dq5eQsOJDAKWIGUfv4Cytg9T18nvGUs=;
	h=To:Subject:From:Date:From;
	b=WbtK5sO3lnhr7wBjbsGTcWvL/u0nJbvUY9SvgzAnLWDM7yz3FTjMmgitMfUjPu2wT
	 k0ByNc+umPrZipMTkzk8viVkNVf5j5MIaJIhrJ2OPoJPptFtgyXCr+KCqpjvxLYkHn
	 IJG/BiZN6Sh3LfXL9cmCUejJLEzr/I5ZAFjbJAVH+l16QBFgBjylasC32x432CM8uE
	 Tte3Vc0opJoEVgRPdA6bnMcLIlaKPuCkm30/4LYLuBEk2UQpNaBTtDtlj05U/lzNj5
	 CFntSvQ1C8vHKVTj8tGxsBnJAIIN1SppdUaohDdb9dO8AmlnntYiUS2UAplcuT6FFU
	 erUoSnLzaVN5A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F2C2C7115B
	for <ddprobe@lists.linux.dev>; Mon, 23 Jun 2025 19:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175070699357.12198.12347710267528715978.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 406b575cbd0186f785fe217bf16a9c49a0beccb95b5668e463a1aee1528fcb9d
Date: Mon, 23 Jun 2025 19:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750706993
