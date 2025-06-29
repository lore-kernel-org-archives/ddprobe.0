Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3944B3A1B6
	for <ddprobe@lists.linux.dev>; Sun, 29 Jun 2025 22:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751236194; cv=none; b=aB/zSVyCjL/GuhmHrq5FwPsj0xMz7KGtNY2xtNt2Dq9AJKLJQmBblwggD6asip5geRVtRGNbUTjrnqNOzbQNF7bfIZe+xtpXcbWuQmR8x2JPlJiZ7LE6rxeJU+/NSfxeYLwr7MeI0GJ0OnUdSz38ppxkXRjHncHv2qSszqQ21oE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751236194; c=relaxed/simple;
	bh=doeumzL7GSWRxp1qcEkvU6EKJbv4j0NRwK7NknWv9II=;
	h=To:Subject:From:Message-Id:Date; b=phfjkaHMLA7LCsT/8JBpL2HfJs2nv5FADiWDpDffRPzxrZnftD8C5pbXHv8vLQjcDgkUj0zjr9Lnk3XGEvs0b42tBdjhSezOrVgjoEr+y6Af4D2v1Sbevu5LB2PzCI14peAsTpvaQtdBmFgnWRswy12RVvTD+Zua4WfUV7GqC7I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=F/cbxgVl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="F/cbxgVl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4389C4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 29 Jun 2025 22:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751236193;
	bh=doeumzL7GSWRxp1qcEkvU6EKJbv4j0NRwK7NknWv9II=;
	h=To:Subject:From:Date:From;
	b=F/cbxgVlF0FGopBDW+BvKxAEcInR7JbkGFfVP3G8SncYGZ3IN8pgkg3vdsmJzX4G7
	 M2bKMD+mSd9sShID/GDgNDnz8jg7vzvmxjc5w8fDnkg+vq9iLKV9US+LODKgImF73v
	 SwsSYLFmykmJClo5uAdhxSfJsGTd0a/S+TtaPSLw8wr/ou6ZcNU/lcwGRVv9Uxt0TR
	 dw6XiLiACqv7ZiATmB+iQc0sOw+gaUuFIm5KB9G0qWZg7dRUHuGaaKN7j0dxizrtwr
	 odkFdz/kp+OIupMe6M3hYDgZoa8GTZgg44TfDjpKVxzXq2Tq1GK9PMXFqc4xzuiuyS
	 +hI48ribMP7zw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90488C7EE30
	for <ddprobe@lists.linux.dev>; Sun, 29 Jun 2025 22:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175123619358.26810.8817191859471831611.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: be232b6caa294d095f8c94fb26c4440030466bd77ca4cf7b7b2468277efb30cd
Date: Sun, 29 Jun 2025 22:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751236193
