Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D97D191499
	for <ddprobe@lists.linux.dev>; Mon, 17 Mar 2025 09:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742204395; cv=none; b=RW/34ELSWWj2UqZ34g74jAeWsWzjFUdrf2f9glGigV8IFtcPSfrFy+MardZbxTdsy5t69JgAygtTqeefauP00L3eiuf0b+u0V6eFrUv67haq8tlACr4urlfzm+jj2G3mfgYNAbCKUfLN4LfJ4vMCgPtDNBbznYyvDV+q/31Pu1o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742204395; c=relaxed/simple;
	bh=BXy8gjVQYm+jzmgyVoCQnC3I+xkHPCX2GlDYXEhErM8=;
	h=To:Subject:From:Message-Id:Date; b=o0xd5i/z2b5S5ziqX8aDcaMI2G94LTNbOcqcAc5OhuIn6rCFFE66lYdiqmrKJ6JXI6f984RRvV9EzOhuAa9G15pt2/hlhKiILNayA/w1Z+2yWY9YgEdN7h6S5qWAV6lpvnVLq+7xrT3XisZT8SGoEWmNK7vpC3eN25eE0Hwy3qA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mgxKcDlN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mgxKcDlN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B23FBC4CEE9
	for <ddprobe@lists.linux.dev>; Mon, 17 Mar 2025 09:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742204393;
	bh=BXy8gjVQYm+jzmgyVoCQnC3I+xkHPCX2GlDYXEhErM8=;
	h=To:Subject:From:Date:From;
	b=mgxKcDlNUptRqf7AnX0uGhHEhg/rpeuN0Jkwp9416Y7SFFPbtxyVfPiL9Y+6jSWay
	 Zr8T0oPikCFPMWU1ITwL2jbF/un0GsOuV7+jR8/HUdhu0qS4hLvRoE1vGiWpWpQSye
	 rFxCkcsTcdZEM63NOyDSbSWT4R3EOJjxRlv4jPkkYuaPnwCv/EWVaDy6JCI5xWKztq
	 kPz+uvJx6x8qrDr2e9k52ue/Wf58W8K4EJIUpqpyWNU/FiPaA+sfOVdZZrUrPVHTA4
	 1681zRoJxiQ1ER5t+uOi7Ye9sTZAXtha/AW6LyJ6ylbvkSQqQXniJbLAPdNz2r3n3D
	 xxT8xsU6tfTZA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 990DAC282EC
	for <ddprobe@lists.linux.dev>; Mon, 17 Mar 2025 09:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174220439361.28769.14807397264252435792.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7749806574014ee48c3d8bb577576a8165791e97def3295d080de763ed3e0234
Date: Mon, 17 Mar 2025 09:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742204393
