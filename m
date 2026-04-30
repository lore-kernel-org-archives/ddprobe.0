Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2710B39F175
	for <ddprobe@lists.linux.dev>; Thu, 30 Apr 2026 23:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777591054; cv=none; b=SQcw96k0x4MWmG3Edlyd5iNOo/Sj4h4ODYAAX5TFeJOZ5xFL4TPbip7FwZ58NrfaLagBxhPGKTDL0SkhK2/MFzjqq5Ov5EAslNPj2PTbCyAmVAz8WuQkOLNGoVMNUUpXCP+6DdCribsSMajIblvqqW9IV5p7D2lJCjDHIPcyzRQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777591054; c=relaxed/simple;
	bh=U1hesOGsXUciP65M6RPQAuCy5hqkY/D4StYbPhKpqAI=;
	h=To:Subject:From:Message-Id:Date; b=biJp74D6NMmq+NdXowzeW9b1Kym32bx6Txuu9ZwnTpNA4LXWb5DstufOfk343pEjXeC2fbv03XQJaEpaFUfo2hVJfrzASYfg5JottmDGQbtk8jO5vM7CkBZcVSzh+nJ4YtvcLdVpgzWp7z8/GOSsYx4sni0QAEVQlYbOQLJo4MQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ucYxjUhE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ucYxjUhE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD5FBC2BCB3
	for <ddprobe@lists.linux.dev>; Thu, 30 Apr 2026 23:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777591053;
	bh=U1hesOGsXUciP65M6RPQAuCy5hqkY/D4StYbPhKpqAI=;
	h=To:Subject:From:Date:From;
	b=ucYxjUhE5kcthnlChg+/0dhDQJIkBaGb/V5z+VJh11HaE6gjM5CYDcE/HlVzn12Xv
	 H6cSHOFWcpiESU7AhUTzvFK9SMHRT7ElWmjiMcICEiGhUaN1epdNzEv1/JEtnorO5F
	 tKSALYF4v7tfrQUJLP977C+6KsMNCagDCh3froKA74xGeEs4dsIe6yTZvRQk7VeTkq
	 NLLIpT3RgeTPB9Aq86/QPHdVF5MTmjhsnxzZswS7fgAaiIDHgRYwwSyRWPtXPQs1Q4
	 XiXl0AlFmfJi6Lsfo0OeRqW4Wc043Mo6t5vEHei19ES8IAZIb0SoKFmeB5X+j+i5Iq
	 eFwyGG8XZA/IA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B5F15CD13DE
	for <ddprobe@lists.linux.dev>; Thu, 30 Apr 2026 23:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177759105368.14210.5503750068890864755.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ddbfac16873930f79809d1890dde1e7352d8f8ec4b60337d1503fe831a0d31da
Date: Thu, 30 Apr 2026 23:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777591053
