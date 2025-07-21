Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F0E2218AD4
	for <ddprobe@lists.linux.dev>; Mon, 21 Jul 2025 14:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753109394; cv=none; b=ITOs0bT3jnJsjgEK15WXmtGCs2ISV4qNWakw7NdUMIYUvTR70skdpzm5GaJLHZMY3MqSsd/qW6WX7Z9KZenI8wxkrHI1bIuGILIgi6zedykI6J+fVkh7D/HECxRBJeGX270+sLUX+3AS/fRqRwpr1qw2VeB/2nn7mxQNW1mAMcw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753109394; c=relaxed/simple;
	bh=pqMBmmnjGVaGjNE2ea+5FsgXUmCX94TRzV10bjbs+dA=;
	h=To:Subject:From:Message-Id:Date; b=X1u2uLeEy+eVpk2ckrfPLQYgGtJIVyoHfzxHb3LBN+s0bN8OZ3dOq+zlLfESGOu7v8KxW4HNup8dtu5r5Lq/vXR2OLsYsywl8Ns5zsk0RIapcaNYLsLeuAjNzYaFYiiJwgzIMg74sIQEXTVaQJmH1dbZw2+qo9FPUVL5FRQIv18=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=d9PNL0RS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="d9PNL0RS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2EA7C4CEED
	for <ddprobe@lists.linux.dev>; Mon, 21 Jul 2025 14:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753109393;
	bh=pqMBmmnjGVaGjNE2ea+5FsgXUmCX94TRzV10bjbs+dA=;
	h=To:Subject:From:Date:From;
	b=d9PNL0RSalb8JF7QZGN0Cwh9CQ6gmPjbEmSq9+inoq2hJdPrdXzm/m5iQRsnka9lO
	 3hCLay533rb54dRjmg7zczoqM0DpuB7QkUwD75MjD4OQZXUPqZZMiq4gIjuqsntWcB
	 WnFgjv5AKJmlyvKwycXt669C7h9R9VR9pLD5bqrTsbi3bSHyBJxDUuKwL4jNuw6L6I
	 eR/I58FR70z07Gm0ltuvGSSxkOLXTncO6eiXNyWe5JW/L5mOwEUvTbjg8Ic31SrRqT
	 eyOV9CwjPZYDIO28xMPEAPob/cHNfsVuLBaZ9pkHFsqVuexkUiS29N9551FgptxPLF
	 nlIX8JymPOIaQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F4DFC83F25
	for <ddprobe@lists.linux.dev>; Mon, 21 Jul 2025 14:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175310939357.27378.1782430923593679295.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f00a40f0bca9283e5c520ffb8b4f424febf5d4aa084a85a06bebd0b77d564e26
Date: Mon, 21 Jul 2025 14:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753109393
