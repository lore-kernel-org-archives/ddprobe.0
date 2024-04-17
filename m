Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5A1134C90
	for <ddprobe@lists.linux.dev>; Wed, 17 Apr 2024 03:29:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713324563; cv=none; b=isDTIFiT+k9MYZA5ppoJ5TAlXGxdVxZU2LveJY6L8EuCQ1zj7osQlyluvL33WEm0ZJpS3nqYvwYsRB1aHugB7lTJS+zNaISpnvNVDv9DYOUp1Vcf/9vZCQxwmkBtRDlE53EVXPHgzTJKhRIxDzrcj6Ejs7IOGtIcQygDHuTNmOA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713324563; c=relaxed/simple;
	bh=AbjTie0iw5B512BvXWy5fZ1VkLbb84u8jXJIQeUCkg4=;
	h=To:Subject:From:Message-Id:Date; b=tfOQYdun11Oft3uK5x2OUxwb4We9/paE0KO9rmzl7yfIFhpuTTa8P6nZz6f5cyCk/7xO1D/svt1lcGAEad7+lN8vuJNW1KKzl3MV+eeD9hFYcbZHtU9qEiqRtoXTq/MzhIxqVT554ui9rCFCcAYO2qCSFPOIhjAP5bM4MOiDiO0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nMRegFzB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nMRegFzB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DEFF7C113CE
	for <ddprobe@lists.linux.dev>; Wed, 17 Apr 2024 03:29:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713324562;
	bh=AbjTie0iw5B512BvXWy5fZ1VkLbb84u8jXJIQeUCkg4=;
	h=To:Subject:From:Date:From;
	b=nMRegFzBJJnPuBkPtImnCivqJLtxjDy6YV2Q9X8OUw0XP+E+RYBOIxoW9fCOrHCxX
	 r3SKp/Q16TF+bA7AJsMg2jAujHIuREgGWHYuf6pLokTuLChs7+D1mZsQ3NUZ+cYCYn
	 7NBbViwIP30gFgG9edgAXq3QFzmmCUmK2czaWPhhuF5bVikAwoK5WN1Qa54UFI6+DI
	 3stv4Lfd3cNwk429dd/7Mo892P/MgmyXNG4iperrTp/mtb57nV6L8MxiYGBRZiBtbD
	 Cl9gsVnGXAGSszjAnNzvHi/KtepEM5M7Ujj3DjiiEUcfrMoE7s8Rz2+6dXfamYO9jv
	 wzwlbF88E+JMw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C48DDC4345F
	for <ddprobe@lists.linux.dev>; Wed, 17 Apr 2024 03:29:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171332456277.17661.11703089092754350701.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 259c84bda1094b5fead0b2c4f6217c48dc1ef99abdaad2630c44d6a31b9a68b8
Date: Wed, 17 Apr 2024 03:29:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713324562
