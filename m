Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 12D922D7DCA
	for <ddprobe@lists.linux.dev>; Mon, 20 Oct 2025 08:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760950194; cv=none; b=FL33V61Rvck/TTJN3J0FupOsIT/yCwo8p6VDAV1v2g0MXL7cJd81gyKtqw/TnynoiMr2gBlgLKxtq+Jf3k1s1Esgn6AXG/JWn4p30ktL/i/QUfzI82020mXpuYbmPSsKX4uQ3Ln8PdFHBeWxnnV0voF3QAyW1OC7s/VocDs8ezc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760950194; c=relaxed/simple;
	bh=LCgWuk1syoKjMrhG5LJd+ZSXV4pxQ+NxLGUoL5lS6tE=;
	h=To:Subject:From:Message-Id:Date; b=jM4bYQz6dPeHy0+jaWwJAELxocUN82yYuDpHBZVIxooOquFzf9o/W1esmbpzisFsQrDtmNcl82fuMEc20+aPGrDTJibRHjmW1qDCJizNp4/JJt1clECVRCwVbePqzWfetRh769L2Pb9qWDh5H8gYigNTD8jM6K5vsOkql4bGUWk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GfAu6IVv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GfAu6IVv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2F1DC4CEF9
	for <ddprobe@lists.linux.dev>; Mon, 20 Oct 2025 08:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760950193;
	bh=LCgWuk1syoKjMrhG5LJd+ZSXV4pxQ+NxLGUoL5lS6tE=;
	h=To:Subject:From:Date:From;
	b=GfAu6IVvoQ6i0U9DFq/pjX+4kqHV4tCAFVavFbQ6YvCvY4eu4+Z24bSZX8x5JnZGx
	 acisb9Jl5/bUec8UHMn07xJ5QvuOOPiyzWZ1WNC/6WVsPaidgav0AGp+pTXmV+NOw5
	 fo+G+tkaTZUyda4u/29YKFN7KZVAthbznEAlYCyhGw8dWTfiQM79SQDPdr0JfjBMnw
	 nmakeYybe5lOjdTa4PEv2+d+iAUfZJl8hy/Auz/QYLhVhiIxDo/pgRg77pI8I4huSA
	 bitE7pqJGQkBUOFxY9g1qlMpG2xLpqaoybNqd+XDmWZrGdfr1te5A2z46+0KMwoftn
	 CbxkPSkBhQQQw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92160CCD199
	for <ddprobe@lists.linux.dev>; Mon, 20 Oct 2025 08:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176095019359.11785.11139130643468126057.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 03f119fb34968e9db1836040e9ce3eaee6bb7ea2a93ec374418d517f567f27d7
Date: Mon, 20 Oct 2025 08:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760950193
