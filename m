Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BE2F277035
	for <ddprobe@lists.linux.dev>; Thu, 14 Aug 2025 21:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755207595; cv=none; b=GzQW5AqGJBgQRZ2+7MoKr16UC0geExazYoLOPAnrHQVwWrIWeszNvAZghNZpXxCOjAs70goqujvasj1ouS0ti7cA0zK3j9FKlsTLL1SePEv93ZF8SPmR/W5RGTTbyGFYI9MqegrpTA1/rsmhwci5fP0mK2Ldfb5GfR8Q2Ypv9ZQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755207595; c=relaxed/simple;
	bh=Zj5IrxOZX6ZPRUkEVFIVcoz0ph1WzrreQKhB398RjQ8=;
	h=To:Subject:From:Message-Id:Date; b=plkSUpEJD5s5zMGfpJE528lMMPR0nJARlvjJZ/ImNfcJfa+QpQyoo4kkF6iQgFZHaokKGgO4gapRR0sbD8AE8kAU8UJZP4wt2mup9nJMtiXsveJD+xr84EbZvY+cHvGF7Tr33mOqA0xHP3HjymkBXe32SaV+sxUqjWUngn7i1q4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DuBo3VHZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DuBo3VHZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A09F4C4CEED
	for <ddprobe@lists.linux.dev>; Thu, 14 Aug 2025 21:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755207593;
	bh=Zj5IrxOZX6ZPRUkEVFIVcoz0ph1WzrreQKhB398RjQ8=;
	h=To:Subject:From:Date:From;
	b=DuBo3VHZKxegTrDeBPfreAFuWP3bR9tibm76xlEdtcCqu3vgKPNoRRT8NffpM/88x
	 o44B7HUKeZ/0JBRUx3REdQ7TK9xRP30Ox0t0MfB6eV+TMhiE36YTNGoiexYJvbQUTL
	 aAVKQelqI5QswfN2+YEJ2xfY4KlcXfu4xEsG7wtY3JoE9jQEt/KQF5fUPdVjS1eNoM
	 3xCvsiDrJaf7x7WiDUJupgDLRd3pd1yftJnuogDDwjdGU0owfPDaah+g15LW6bvq91
	 6QPJ8Xd/RzRv0YkREfkGLcn5K7rhqMnq9SkkyARf3tCVZqEQWksStVbyNl97tARdLA
	 oWJOwBU8j4/7w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E46BCA0EDC
	for <ddprobe@lists.linux.dev>; Thu, 14 Aug 2025 21:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175520759357.16509.8124255735857911915.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 362204e6d0a210092f3c3d66e718f82ebaca4b6519d3762ee1b2188deabe4214
Date: Thu, 14 Aug 2025 21:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755207593
