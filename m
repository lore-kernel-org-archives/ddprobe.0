Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 582FB3D3317
	for <ddprobe@lists.linux.dev>; Mon, 22 Jun 2026 15:56:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782143794; cv=none; b=EXsZ81XYPxbU9faqttdmKS5AeP4mpppTDkUZaVemYHKB8gXeKwcO0L/N2k2gDX6ea9M2qsmbMFDlLSBexU7sp22/4TlxNaGlokKuSI5xxd4Lvsaf/P5Ig+MFyR7IET6phWlv6miVeTjfBSEP6/hAmwZC/Oxigb1LWlI2byvoNu8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782143794; c=relaxed/simple;
	bh=1M4LhSAa8a1V0CcHh37j67J+MHR2Atqy6aZz1hT69B4=;
	h=To:Subject:From:Message-Id:Date; b=EmpnEopVJljt7nlzQT0S0A17H9NeWNUQbk6Q8jmCRBDXPzF98a8emI/3BJcuTEZn+MUTMlh2iTBKagF2g1LJ9wz5TfKejpQWuEgm5sXSNUAsbgwloSz/rMYwOPM7CpYiqzLFi7fr8nEiZzwTuAV8JVwUcpQ/PGd8jrINVsKYFCg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MmMsXfk5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MmMsXfk5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DD49CC2BCC6
	for <ddprobe@lists.linux.dev>; Mon, 22 Jun 2026 15:56:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782143793;
	bh=1M4LhSAa8a1V0CcHh37j67J+MHR2Atqy6aZz1hT69B4=;
	h=To:Subject:From:Date:From;
	b=MmMsXfk5h9DvlYsYKHzfVAlJTejKhpsUTlJe7EvwCLSlM1YtHzAeXW0nnNWdoUWOz
	 Xhfn7sxi6A/0g4KV8d1cHAsYq99Ao9tZx2iMIB0PS73yHBQDdgnHCyhmeEf9OS3Dzf
	 t8DVYirGB31ShcCWCSDm3YReDZqfCg9z9h83e+OFDPmavbWkO+1woIjJYP4V2diRAw
	 dww1i4f7+qA8fB8RelpjWZRPXME24ergwp4ZbZsU8S/NNaqrfrIZfiObu47aoCZUeo
	 tyJW+v5l7XzyCPxAC6Lp8ncEuG+yaoDfrZry5wqJ2CaYVB+1ktBwJHlQzWy5WGYRGd
	 6pZ/uRbNuR6yQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B9316CDB46F
	for <ddprobe@lists.linux.dev>; Mon, 22 Jun 2026 15:56:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178214379371.9964.11418978746652995961.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 327b1808e528870056c2f0c0bc3684b3bb7955dc34f3e521b70bfb0514307bc3
Date: Mon, 22 Jun 2026 15:56:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782143793
