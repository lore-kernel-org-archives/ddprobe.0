Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FAEE36B059
	for <ddprobe@lists.linux.dev>; Tue, 10 Mar 2026 22:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773181494; cv=none; b=jdxoMa5JAWdTln3b0awt1vveD43cOgWIDUlfza/I45c8iiUXIxTET8G6H2XecrRBx7MkKrJhGZdbYe3BuPoNEJZdalI29ZhNXv2NVPrM8J6o5cwvw2h4gn0jXi7kB4ofSzN5v+VeXrf5VPQs30Z87RVxRPdPtZmXPe3XP5XXqJc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773181494; c=relaxed/simple;
	bh=EQLhDtM+080Z99LFt6/Vf5mk6omSu9YQh85N31kDH94=;
	h=To:Subject:From:Message-Id:Date; b=C5qmK/3qw1NOxfT0Jj1Jkvthb+4k89Rm8w/THJDH2SXeXWjwZZ/MEZWocLncmliaHBv0hfN9xTaiDdhsaOULmwBqUlQgF3cbQVkCAbuxqXzHyci7WDFZ+H6tL3l2mQiVnVFbX9ijyeTaQXvSHVkj5Xn3R1tUwuRDxCPt52R+P3I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NVjXdGxM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NVjXdGxM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AFC2BC19423
	for <ddprobe@lists.linux.dev>; Tue, 10 Mar 2026 22:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773181493;
	bh=EQLhDtM+080Z99LFt6/Vf5mk6omSu9YQh85N31kDH94=;
	h=To:Subject:From:Date:From;
	b=NVjXdGxMZascueJMsyqg8/J33/Wp4/kCGmSiaVqxi5ccQeuRap2qRbwGGIz6j7iMI
	 JA+j9SyGcbHBIlmq3ivYi3+8W4VDPx/fbcbZ8HCpgAbUrzlnTWaM11sJyy5RGL+Cpb
	 9BH1zg+QVnjdo6UPRc9L7uNWbaq3tpFBkofciIpOGIITawk1UtYGUwWT3lJT3qEIav
	 Rz0VbU9edI0ITI0Xb1mFP4lIFTPxSIhSRRT/Y81onKiwTCyOPhUeZHPx9ftohAfmun
	 FmlCzj0T3UTOo+u2/6x1BclGzQlLZzEFKeWBlRTkzUyF8UPzx25wcsU6q9WR+4Rz7/
	 ELFdykeTS8gdA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9DB62FD88C3
	for <ddprobe@lists.linux.dev>; Tue, 10 Mar 2026 22:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177318149363.10455.8389758433324850458.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 311c87ebe46b913a1c11a5612071a401f37d9ef6c5ad179716dc223dc296845e
Date: Tue, 10 Mar 2026 22:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773181493
