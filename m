Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35C4B3264D6
	for <ddprobe@lists.linux.dev>; Mon, 13 Apr 2026 13:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776085654; cv=none; b=ayDUVkC2Sl/Ajgo6KimDEyqH0sMmJcr0KOTejhz/4GCDfpCCxFn+ckS1S45YBySHamklGc9OQofBDbWIipolRvXj5qTYXKTkMZN9pqLEghVn6CoP53PKLzOdQyTqdJ4+kAEmnDzFlXQo02+ujjIeZWkEroI3qUVdurc4nnUOsTg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776085654; c=relaxed/simple;
	bh=xZpbVPC4gPCROBorp+hK0164/3OEZVWD2D+HJicUNRQ=;
	h=To:Subject:From:Message-Id:Date; b=BThC84pLnjDgG/4QlVV06RrJ9SiirFCKAT5qu/eWqs4IOF7OH2Hv8rAbgwZ3GCLA2bgLfGBAgCg14+P8vTe//WwIDziRtOjIF5jbislVWQ99Z7/bYipxZNtJPrN6R+8cKryOD/8txzfp6w9zxAb1iQOF+MnTIkc71ubcreQj04U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SnCSrYZb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SnCSrYZb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BF327C2BCAF
	for <ddprobe@lists.linux.dev>; Mon, 13 Apr 2026 13:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776085653;
	bh=xZpbVPC4gPCROBorp+hK0164/3OEZVWD2D+HJicUNRQ=;
	h=To:Subject:From:Date:From;
	b=SnCSrYZbYdVyeAYWQ9GgaK3MvthWJMoWXVslfEbbjnXehydgno3WqsMF3JiPaHW92
	 sG5vpPjjLccW/5GoRB5B8OPfprJWwscFw6twrLR4vU1qbObMLDetLKSQob7GVOSp1D
	 htrU/lDHjcSL6cgiZ4ZAW6keNsfxRJWm0l1K1ODthPRkkGYPp4Uapo/lYD89NfhqSv
	 fijW1nqk4ar+M1yP6mco6T4ZOewtbuRGjsqNGoI8c+/HYok+K6A4JfVXccI7al+9nB
	 289vyfzFUduLi9JWFW4mhC2MxNwIwzRAYb7Y2WfXRIledMRLjdTtAN+ySk5H+hUyoa
	 cF+o2NuRU+kIQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA560F34C51
	for <ddprobe@lists.linux.dev>; Mon, 13 Apr 2026 13:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177608565368.20592.11478825274081664628.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6f662556802fdce61f5da55081753fa6538f0b4ba2cc52752f8364338ff966eb
Date: Mon, 13 Apr 2026 13:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776085653
