Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3696B2AD14
	for <ddprobe@lists.linux.dev>; Sun,  8 Jun 2025 08:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749371394; cv=none; b=huH4YKMI8jN8tbOPMpaTtlDeJ3FSEEXflWN2/4MmIQ1ImC/idCZgYUK7gkyTrQmgSHP9uBhjGQObOzkq/3YiulJwz7K8EbxFp9RN8Hun49UNGg8gpJ8hrTWaJfnQyFAmBWHFyKtM7rLb7YVfdPPBNFoOFM0EO4b9gNTdeX6UC28=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749371394; c=relaxed/simple;
	bh=m4CY24H1J/IdXjruPfoWeezub0nUJOnbOM3gyE6uELw=;
	h=To:Subject:From:Message-Id:Date; b=D1qRGp+YJy6AzuZo70AR+sQ2ixgf+vd5Vu12pdvX+I/3JC20Jz6ei2/zJfAjb4OG0vfJjBfYtAEgJwcj0OGCGFP6vhRXHKKPxPuPWj1XzTnbTKFa1DqQKfD12o6e9ztwHUup28kFsKalACg7nIZsQ6ng/q2r04cLlQLXN/UJKzY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FJR9DLCj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FJR9DLCj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABA41C4CEF6
	for <ddprobe@lists.linux.dev>; Sun,  8 Jun 2025 08:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749371393;
	bh=m4CY24H1J/IdXjruPfoWeezub0nUJOnbOM3gyE6uELw=;
	h=To:Subject:From:Date:From;
	b=FJR9DLCjoEZtvUlyo7XCfgD3pHIwna52XibIMrB0/JFPdFEcAgAkrl38SdxC10kHV
	 mDIlLkbBv2Yn0Q1RqymXlOFkuJVq/S8eBgaGjvzZKZ0zZxqiROxiOlX12bu7eT0UTj
	 z0BFClYFFn0QpNzmr57JcKMD0mOshd780C5WfcU2pSLgvqyRGWz17XceT8PWDL2mxv
	 R4eHwUpkH2+6pOM6F3flQYQ2aq7m7nan6HVXhC944jAbpD3wwyQ5XsCTM6bIfCeRE8
	 Ll3bvX6yZKch3BBuExwzhvJulEv7HTdBlYChuoYjoO+pH5Cc4Rb2pcfDL5Eozeao1E
	 UaZcJt5Gc482Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B0BBC61CE8
	for <ddprobe@lists.linux.dev>; Sun,  8 Jun 2025 08:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174937139359.21733.2888450695405122289.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ce74ebb04e0360444f78fe8f3d1735fecd929664602368a95b2a88b677162d88
Date: Sun, 08 Jun 2025 08:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749371393
