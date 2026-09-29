Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6C90225392A
	for <ddprobe@lists.linux.dev>; Tue, 29 Sep 2026 05:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790659234; cv=none; b=SOaj+hHQr54gtKFMHdQc6uNhmWieAWU22/bSn+HQC2plycVVzPwLxQHFxYLru+FLULXwe/o/lxuOMsYuKeMHyDWgqWxh4N699LEy73Gyl3AO6eJeR7odVBiH+SNTmBzkoomKQj0fDOAn128QhK0HkDwbOyddkyZDocBaU31luJ4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790659234; c=relaxed/simple;
	bh=kBG4mimMA+iuv4q1Fdc95bcpLFS/a/jbmSAYfepj878=;
	h=To:Subject:From:Message-Id:Date; b=FcH9MFNEE+rO0xmx0i3LzQ5Qx0wNOx1K+aaxPSVaHZZijDZjqc1dtD3yH7G4LVZon0sNrJTbehY3R3Kva9XRSVBEAryqjDDmIIJO9Yar5FAroLBSZiQVE7SG8WXG+UCiDLgJFGyN+gjAoMttxeyvQc/acR9wcyW+NaVh1AQhsas=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bAfTG2/R; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bAfTG2/R"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA039C2BCF6
	for <ddprobe@lists.linux.dev>; Tue, 29 Sep 2026 05:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790659233;
	bh=kBG4mimMA+iuv4q1Fdc95bcpLFS/a/jbmSAYfepj878=;
	h=To:Subject:From:Date:From;
	b=bAfTG2/RBAm/lniHy6bTfgvMmHuQATLnClhx5M93tMvTTduqJk9MLYNLkR3hsdXRm
	 hETp0oeBN5e6ZJ0S/AjwK6ady81VaV55NWDsYsmjCxm1Ic2GegY4HApYgFAMYPAeKX
	 2tHOfmwMYCUNUqid53YMvCemdX1/cKtAKrryuFAX7H/Vozhdq2/TDeve6M1Md6VFs/
	 dkBZQx652r610MFUcOgr9uwnAx2IHJfvynbE/9qzLDVdihR0I/hZl9Ca46lhU0cSWM
	 CoPaXN8lfoL4GcvVfhG0NE+bYIG6bUkVMX9p0uTBpYPwDldFtYL9JYxBm80EQF2B/i
	 hJxxmq96Y1rRg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B154EC9832A
	for <ddprobe@lists.linux.dev>; Tue, 29 Sep 2026 05:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179065923369.31584.11358873812529565164.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4028596d2d952da2e9953fb98e442ed195b2db4f232772b48b724d64bf95e3c4
Date: Tue, 29 Sep 2026 05:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790659233
