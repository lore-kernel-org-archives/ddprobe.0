Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33D627262D
	for <ddprobe@lists.linux.dev>; Tue,  3 Jun 2025 09:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748943596; cv=none; b=kpXnaymsZwOmfkbCUb0uoRvj5LwotuhSdaxWUTdoTxavPEKT9mYDCzS+ERcbdSVnAkFKwalMd8sEktKZQKUnquyVHqXiUMiR+BdaUG/NtNFvIQfwQDgp7m4b9XvIHE7qf1Df0ZgrVP8bpLb8JGeyyKD2gtXfm6N0PmtScz49VSI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748943596; c=relaxed/simple;
	bh=dTXh4gUVyp6msApdZzxZDBGFYNie25XXoyrmyKuEgAc=;
	h=To:Subject:From:Message-Id:Date; b=eeEowrHxcFt9ISTMESzj9DAthCOtM+02qP5lJ5kvx5WqjqDr+UXpcjTi+YP4+Z1IxeixsMbZTX9MnWp5wK/moob3qhj9Wc/HIkmkHWEscQ2FflG8FxkAxd75CUolbq6J5djPjTM73bd3jBmkcflKy1ZQbB14XnkPJIadLpKw6to=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FlsA4/cW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FlsA4/cW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1B84C4CEED
	for <ddprobe@lists.linux.dev>; Tue,  3 Jun 2025 09:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748943593;
	bh=dTXh4gUVyp6msApdZzxZDBGFYNie25XXoyrmyKuEgAc=;
	h=To:Subject:From:Date:From;
	b=FlsA4/cWt/KHvRBO6+hebWN125gvm2LMgxndnIEc1zWRaZTH92FTd2StwGwVzrlO+
	 eJHy7aUWNN5GEE1CjAg61Pd8gskI2DhwWh0zR4DB9v6W6XtSDcm6CXeIdZ51mB3D/Y
	 zYD/puyBVHzT8sr96sN4/YVtmuJ9zUShxX5idPBvdtoocpv3h/nQFMbkYLZHBfp2Kj
	 OWCuybWtevkPcVrE0hLcjKElhjgwIPazU4SUjJBi0vvLJaDKoRzruxj3EGEXQeWY5W
	 BTro7GQ10mbnvcx3XJxVPLB/MRrKMPXzqKjn+4rAwlSmYxHJtF7ERxWppotnKw/fTO
	 z/3GEiF5yF1EA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91B47C5AE59
	for <ddprobe@lists.linux.dev>; Tue,  3 Jun 2025 09:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174894359358.24620.15984695574879210584.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 725b2aad6487879d1ffa438d1badb172249412504ac1f72a0287e87a48b0504f
Date: Tue, 03 Jun 2025 09:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748943593
