Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E384B306486
	for <ddprobe@lists.linux.dev>; Thu,  9 Apr 2026 07:25:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775719534; cv=none; b=lhAZ0OhaSkPK99yAOD6P8x4IblvPJCoILmKb349EQMg1p6gnysoxg3U0CAcPTcn680bDd1FsfpznBWFYr92vSDkaL4UK6iYKTzY7Fh0uFMv+BDLUG7e+QqUbuc3o3h0QM6GvztibmOfvLN3cvNebcswIIUOwSPljJZaMAKsQ+Rw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775719534; c=relaxed/simple;
	bh=H7KKn/yOfJyyuaLeoa3B2Subwi7/cRoDeue2VYmczIw=;
	h=To:Subject:From:Message-Id:Date; b=bH0BV/VZTpvGdHM3ni6hqInOg4kIKTuOn3ytiGmmol0WNvWLrRVJBzMo8rzzJaEF0zl3VcBQyDWU8W3qvQrhtSePi8X8NxDsDE5Gm8E5Km71aWLXOm0ukC8pRexMbIzbOEROqZVqY+QsRu7wjB7/hh2XwcoX3oaWo3cxLiddxmE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Zi8fdTEA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Zi8fdTEA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C6001C4CEF7
	for <ddprobe@lists.linux.dev>; Thu,  9 Apr 2026 07:25:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775719533;
	bh=H7KKn/yOfJyyuaLeoa3B2Subwi7/cRoDeue2VYmczIw=;
	h=To:Subject:From:Date:From;
	b=Zi8fdTEAArnh67lA+ot0lgXTycefFWFBJsBYTXVkWq10Bgii5jf1TzNQJQV3Uaaba
	 KS0A+4KVVLIh1a9dyQiinZEzuPEhSO+iKaPgOQObpYeTbzRBRQs7j+35JHNPDhnTgH
	 pmyzJijltb6Mt1Fzdd31iy6df0zH53ZHUkmr0zU+AVrXxpDd/wMis4OPJeb2QLck3S
	 XcUcE8xFuLsiLsJEh8uE/YKUp+G/lXl/BBEHUfdixTsqW9ELBSgAtHpNQWrdUv8AKX
	 tVSinFcb2r+4e2ZpmGPNSOHj62L5DaDo10TPtXDBuSGXlwnWxNqZrGo4dQazOOnAfx
	 dIYmzMIG7ubQA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0495E9DE42
	for <ddprobe@lists.linux.dev>; Thu,  9 Apr 2026 07:25:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177571953371.28781.12826881587796901760.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 117e11fdbe62df73082e22deee4d3addfabfa92789693a7a2254fbda455aca84
Date: Thu, 09 Apr 2026 07:25:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775719533
