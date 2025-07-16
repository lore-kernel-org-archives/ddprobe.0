Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37896264A6E
	for <ddprobe@lists.linux.dev>; Wed, 16 Jul 2025 05:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752643794; cv=none; b=IRkmXMZ+rDSPgIfQ63XRefAPtZvCPnfAJnE1h8g4vtIcKLe8rgFL/rZ2ke2yUY+tJje1xG77oOvHKo/MGTzc+ubD9vTxqZZGNK1rGhDbAWv/NOwQQtkjxIlecDEGyauYpRM/Xh8FDJwFm35SzDhsObvLoaM5r9vdoxAtlZW4DMA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752643794; c=relaxed/simple;
	bh=GXgU6n/KyyIu+M9EBqfLBeTDWqIG2k9molHTN0KPIJE=;
	h=To:Subject:From:Message-Id:Date; b=nKJKBozy213iLKZZEyYWHJGo/3cmiRdVU2oeTDOoXNaz70ma7diZwH20JoZj8NSetsGhuVFVBHKVcJqe9CxvJjVjtICWemz4gWMPUfQD9F9jFPsSPKeR+Y5bTeU5o87JZAx0nf7H5DeTptpWA8KgEEmgvB6ocSRIF3pHBSu85u0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bcJubnfd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bcJubnfd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACEF1C4CEF0
	for <ddprobe@lists.linux.dev>; Wed, 16 Jul 2025 05:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752643793;
	bh=GXgU6n/KyyIu+M9EBqfLBeTDWqIG2k9molHTN0KPIJE=;
	h=To:Subject:From:Date:From;
	b=bcJubnfdey2LF4abTenHOPxjILmxZee69vMowBeBMT4C5mUVAvmtBvinfailw/g9+
	 JDO4m6jJqVunG9Qwt6gLtkmpPv7hhK7xyy5adjfsFXejxwulpxyUXRc4w/AoKCqsmS
	 +X5fJQoGjm8gmUMPqkwWexwf8O7KUlaxlI40nIrdfPB2t8xGUF72LnwoEIHv3fEvZt
	 322PlXAKlHVj9ZkjrFFGtxKg+XDt7TplWBkF0wLRuAtiMjnqoSlcJYYRf9ePqJ3sM7
	 31+LiDTFctFgSYhObS+d/UnsIL2z72N2U5pNGedu/Y0ViBV3br7O6OZhI+WX2ijQH5
	 leYo8z4KqJxjg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9BA05C83F1B
	for <ddprobe@lists.linux.dev>; Wed, 16 Jul 2025 05:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175264379360.10089.3710050471546261704.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 128027d36a6ec9924576f971b6ac01ae121840b25a62f4308ef419766e867fe6
Date: Wed, 16 Jul 2025 05:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752643793
