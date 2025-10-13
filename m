Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D42F2D738A
	for <ddprobe@lists.linux.dev>; Mon, 13 Oct 2025 22:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760394594; cv=none; b=Vt0HjVvO28F7y+KibVBGMs0Q8iJaVUtNx01nYizotry/y0FkePi0RR4Ds1a19GdNCfJHHupEeUKiK2axeNDfKzL1g68ksf/dLo7yRMuOgq4ZsET4NvepLhRxzYKaBp6iPfMiWtPHdVwRNeCKgAKe54BaaTl/OIpsnTkwQsggutU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760394594; c=relaxed/simple;
	bh=dYnvMBjEt6ptZR2WNuYFK3wypXlc3+++YtKJy5+zQ2E=;
	h=To:Subject:From:Message-Id:Date; b=E4eiNVq4xcQreuGMRcyzouui0/O2WGuQPg0QbfPJ3wwTk+QOuB/oUKM00RdYEIkZGUiA157WfyQISUKdxfxgAV5+DGabnnq98+Vg6vYpn7zIguf9f9zq2gCwptVBvgCLDYitt182RYZkPNEbqeAML74zYk8n4KykqN5EIJo7zb8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UAAzSEXM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UAAzSEXM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F935C4CEE7
	for <ddprobe@lists.linux.dev>; Mon, 13 Oct 2025 22:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760394593;
	bh=dYnvMBjEt6ptZR2WNuYFK3wypXlc3+++YtKJy5+zQ2E=;
	h=To:Subject:From:Date:From;
	b=UAAzSEXMDs97t0df2KRnk+/xrics/MI9huzF60AInBJvBJaRSeVqISCpYqtJ05uQX
	 nUcj8njDd9rouDmK3jsxSItPx3mLezXD3kVUvauKozwIJUKknmhqPz/9Gdkdu0pPkj
	 h6wSENN7JP0ZNpMgtmhWfloGFgHWFhCbh73EoQdd1fcLlKLYpqPBvS4UaPXKfdN8fA
	 0+EwNo7cbQoDeErQY93aJhh7+r/G9+khzuGLa1xUcTvfPQ/KF7wY3E1sKPLWidn/pl
	 E7EUsVViD+RgH01WU3SqmyRxFHBJ+2NMg+wI4mukHFZN6OFD9DuZtYwv7B1JulkWR+
	 fwMPvEwI3RNrw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90024CCD183
	for <ddprobe@lists.linux.dev>; Mon, 13 Oct 2025 22:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176039459358.14280.9488736145614489912.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 44efb373030bfedc6a1b7473774a7d59ea359e90702aad0660a4b72e626ceef1
Date: Mon, 13 Oct 2025 22:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760394593
