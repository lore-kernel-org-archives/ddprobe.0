Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D182193060
	for <ddprobe@lists.linux.dev>; Wed, 26 Jun 2024 20:43:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719434603; cv=none; b=aStOiaVgpCFJWRHpMZMT2c3JinRVGesu8ArwMVMy44Y2Q/ZcMSSNj+XuNiTA16gjpdpwmxJB32MdIcJKuwW4Dec5TXvRtJ9cq33fgYDmdQro09E8p5jsudEkCBms4jsYeqLMttENPTcu1rkYg0n9ODp70yI+B3foNon9vlqi87A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719434603; c=relaxed/simple;
	bh=DnRe20UMEF8K+mWXu8vMt+tA5y28uUivFkEl3CUVPFo=;
	h=To:Subject:From:Message-Id:Date; b=n8nnega66RPm4GRFmJgzIRItGNhMvMKxqhT/jTJQF0Ez9y+SK+l7LGnbNr+TJnTvOw4mxw5G+QzD/UH7QvYwNbBX9eaLkFIK3/AWhauE2GmUlcjWEBK6aNN65N5C5//bySgI6K5Oy/sBLNuQASuGbvma/A1q61/G/eziL+xhGUo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pu0VET9A; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pu0VET9A"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF8DDC116B1
	for <ddprobe@lists.linux.dev>; Wed, 26 Jun 2024 20:43:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719434602;
	bh=DnRe20UMEF8K+mWXu8vMt+tA5y28uUivFkEl3CUVPFo=;
	h=To:Subject:From:Date:From;
	b=pu0VET9AX+DHCvaARCyS9Y8GiefJO4ys5RDSLK7+7XtEHY3jLQopfkzyt/ctrK5y5
	 TvZ0lRY+mPkx4ij6OrLVfeNU+6QljVQ/twNmULxIXtBHM7s3vMtWvUsJKlhzSc3238
	 jcoeyyBgenwDTzyU1fWUbYRgXyq5B6nBwU2Qm5M1s0zMZQDxF7Ji+ciCkEXBfa8rWM
	 AwGQy2OOlIRc00G5pTCz6Vv8DJTtPdoPZkyVvZLtZck1qIGM7Z5nieTJdkegvOx3ez
	 Q7vvO9wenEoCMVf8SFqCjRdZRg0LJcg+mgKh4dH0MtgMEK3tFgCwtgKOJ5kCZnuqP5
	 oELGRntm61Qcg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BE556C27C4F
	for <ddprobe@lists.linux.dev>; Wed, 26 Jun 2024 20:43:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171943460276.18369.6390858172941038211.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 734f3595a92880b24d00ade5f3d64d760e47283a7590120a32cef1717f7b44cf
Date: Wed, 26 Jun 2024 20:43:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719434602
