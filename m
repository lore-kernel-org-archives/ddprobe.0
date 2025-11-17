Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20AD9747F
	for <ddprobe@lists.linux.dev>; Mon, 17 Nov 2025 00:31:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763339514; cv=none; b=VXs5hA/z9MxyshXNkh2YSyAGXo67Dkuropn4ND/X4t3kGmc8g2WO55+wR7qPz9GT9WrOFl+3CZFq5PS6gLddXhaUEoWrXiV9pRvr6yeEzEciZMoVzb6DnBkhcgwEtLmRZEi1K8WBr9BCfjBuNUaSdcs/856nhJplBOIVFSLRrKw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763339514; c=relaxed/simple;
	bh=QY/gGMuHfkRJ34iffUSdpw26xE4nMkvnwai6d/7o/wM=;
	h=To:Subject:From:Message-Id:Date; b=GO7o/qI7bx4D9to4RSKFjVnoo2LYPasbpx6Z4RB4wvWF9iVAmh1faKat9oDykX/EtjrCmeSkV80Urxmh+EKvqdpy6NYQd/Pr1QpYFxHrqoASVjGKIgi/10bnHQ/+N4H6orUVHTcwdbC5OWPRsDxE8SX5ymqunKFioN3CmqMFqhA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=u/pD2Mza; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="u/pD2Mza"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7A34C16AAE
	for <ddprobe@lists.linux.dev>; Mon, 17 Nov 2025 00:31:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763339513;
	bh=QY/gGMuHfkRJ34iffUSdpw26xE4nMkvnwai6d/7o/wM=;
	h=To:Subject:From:Date:From;
	b=u/pD2MzalzJrNA6DcxVdvK3tucqZ4kHem4cUOFPe2GWkpdQku1VY+UgV92p7F+o3l
	 isTrrbmIHDrNDGvCcLkcVBEQW81DxcnM7BxqkMpA9v9D19xZjhHc/bHA9GS+7cjxE7
	 S/C55RH4W25GpRcQtUyqjqKV8ob2tSMErirfK9bUlebyfrHrGThZ8L1J/Sikm58Snj
	 ns1vjL8XbVWNJCPqJn+U3jsgiBOJ7NpghoynpPZDq78M62o43A9DtOu/1rUTKBT15W
	 SgYPUNvoBovqw3Sb6KRXFnFhaeHZvi3bDrxaEv3Q7OMtoRwDOK8k//RtQ3uJO3Y6Ml
	 U7PpBH6YMSWGg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97230CCD19A
	for <ddprobe@lists.linux.dev>; Mon, 17 Nov 2025 00:31:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176333951358.23058.11974835549492578433.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bbc61d4ca08aa882feef417ce8487ad1c22483c0ca53588b786f8726b341b3e5
Date: Mon, 17 Nov 2025 00:31:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763339513
