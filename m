Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 895E222A7E5
	for <ddprobe@lists.linux.dev>; Wed, 19 Nov 2025 19:51:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763581914; cv=none; b=gqRmfzImiVnK1a3Zo3h3ID94wfjEDyQve5uhuNakHwygPwgj7D2aIiGw0q71WWqKKlv+EGSq2X3LCXELuIxl1z4N9B6qw5IE8ZX95f9UkP7KcpqkR7GAu8dtrf+1vHzdEa1eowqh1qrYKj8EyT6hwC63N5JQO/nEZxsR5YzJYt0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763581914; c=relaxed/simple;
	bh=SpxgF1CTTPaf6VV1BG+On+wU6BTl15blmJuFcaYeQrw=;
	h=To:Subject:From:Message-Id:Date; b=Ki2mNUzDRDbUOE//flMD0O4iPqUajqnldTsBp9CrE1utfvx3SL91wJ4DGq2e33/iulbkar1kIwIgUmmLNfyQtlqa0RbeEuF2hibFzCsa5aVHR2yyKX4zQ6L3LomSvOsOuRlARyoMxzUsWal1vmacoRniARBRaTIoE2iKLUi0mLQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rKjQ4XbK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rKjQ4XbK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA981C4CEF5
	for <ddprobe@lists.linux.dev>; Wed, 19 Nov 2025 19:51:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763581913;
	bh=SpxgF1CTTPaf6VV1BG+On+wU6BTl15blmJuFcaYeQrw=;
	h=To:Subject:From:Date:From;
	b=rKjQ4XbKpdvZafB8i+nArsNfltWk9JumcKbKfbeZLXTXAI8kJSTjmwvb7Hxi6pCX6
	 bvCM9bVqsRNznZUYEnf15YwA/KWYIC8S9LODE8puy59T1zB5ryCYPrLqgi76lgEKz8
	 0dINY5uveK8rfFiMxVVZkaBE+8EjBSvu4buC8qJL1pa1Yg1T/aaiQin6XLCowtg/og
	 cz2EyjebX5aQvkRqcZk1Hj6Db/62f68nsVQmym17YS7+8QaOPEKlNm31MB5DnmbM+0
	 ltwDmU+cUtiZTxQ0vZQ/j6UfHr4q40x9zI4yw6Fuqyy5BFHqJwUltzmwl2RGo/Z/ks
	 87xF47Vc3dZ6Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A5F4ACF58D3
	for <ddprobe@lists.linux.dev>; Wed, 19 Nov 2025 19:51:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176358191366.26620.1158724471684401623.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 703740fba224076ead5015ada441a9d0ec5dce628a66be041fc0254da3fd7d28
Date: Wed, 19 Nov 2025 19:51:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763581913
