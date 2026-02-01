Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C0D113FEE
	for <ddprobe@lists.linux.dev>; Sun,  1 Feb 2026 05:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769922834; cv=none; b=sEO2vAYjUkwajbz5ntmGfrIVAuJJOFyAk0P5v1IGW00MTpBNOH2Elh6x175PtWO8/fZhrkh+UD9Pc5qffaN36PbgZFGDo5K2M6DVUrV1D3+TyqWvQQP7ScDASzlxTfVePyKKI6ZvHakAVk1paXzerHJNawBnTg33gwLTFMrh8Ds=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769922834; c=relaxed/simple;
	bh=XcvEDKuAtgGp8ZEOm7ecZ8qaFFytcRI+0gpOrknZX3U=;
	h=To:Subject:From:Message-Id:Date; b=htQTvRPfhvnZv/0XaQxbckvcQC0+DukQQurRrEqMgsN42PglRSUfNqvnaAnVqXwflvRaFEeUCzbLeTY4beS3HtqkrrQgUoVHwx4G6cn/wDpsNY0BZahd+/uGmJLdvq6GrCMHO6Gugs5prXluXfXmkMLFpWGydIsoVGiRvXm44XU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=I46Fh72K; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="I46Fh72K"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8836C4CEF7
	for <ddprobe@lists.linux.dev>; Sun,  1 Feb 2026 05:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769922833;
	bh=XcvEDKuAtgGp8ZEOm7ecZ8qaFFytcRI+0gpOrknZX3U=;
	h=To:Subject:From:Date:From;
	b=I46Fh72KneKrTA7usFKsM951l0PMYxYj0t+8CTq0VBWIV/46ebOoyJkEeoltQ+X8q
	 jFhaLbgHoKbY8ysbKkywcuMGEQwQ6mMqI+QuwMQTmQHAmBqaEyBqUFNR/gc5+5vmG+
	 cIPrCu++fijpoMipx0kNMvG35g+xrdjYw7BI96cbLQYWWHCh/isD+9LQH+jusozbx8
	 fRCIWM01izskl4FiNOWj+ay9mshKBwq5P7uuTYQzGrUM4Xmy2t+sBdkYA2jUP1ZRZc
	 FQR0WyVfYzEtUARGzjeCg/NShgVkRdIBWdjQ9HsTeqVKgkANSijRjB/2FZOgcwkRRa
	 Dg6ejTuDAc32A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 919E9E7C710
	for <ddprobe@lists.linux.dev>; Sun,  1 Feb 2026 05:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176992283357.6343.16603098376818740473.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 462b5277dac7a84908c1ae40a38a91aa68bd91eb85d05aef054a18cec9f6c49d
Date: Sun, 01 Feb 2026 05:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769922833
