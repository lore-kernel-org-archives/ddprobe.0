Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31ACA3D903E
	for <ddprobe@lists.linux.dev>; Fri,  7 Aug 2026 09:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786093234; cv=none; b=Mx/taZVm8/1W2Zc6aJfNyxt6dzxjh2c2lzbYj437VYD0Gx85ZU4VCCvSL7vYBvcjQpNqIAWC/2Vq6aiJ1lTHUDZaORl7J7uMG82dEH+nlQ/Xj1tFW0BeohtLvLTcEYf6T+iL7iKBnjdgTpIOVXb7Q8jYTF89djTcIqcDBuiOXzE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786093234; c=relaxed/simple;
	bh=CFcFv0jWUGWYsDIoYhgV9jPo1o0YcVGdwKTyRz9MLgo=;
	h=To:Subject:From:Message-Id:Date; b=d23vWn5LQ4JJBHL2GKuP2YFIL6/l7YqYYqM49W8kQcQ2JgaHLFa4lZLa2ROl8Pabp83Rwave5xIMeNp5ULQ/06Sn3OczXz5CsnVIkoketDJUE1nZqKDdU3i+8newuVU9+c5DO5KraO3ytnWun6KVVC2qeEictUFMB8yBz0LJ/ko=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=okHc/kZz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="okHc/kZz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD561C19425
	for <ddprobe@lists.linux.dev>; Fri,  7 Aug 2026 09:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786093233;
	bh=CFcFv0jWUGWYsDIoYhgV9jPo1o0YcVGdwKTyRz9MLgo=;
	h=To:Subject:From:Date:From;
	b=okHc/kZzN0ZCe2KCqQweGUjcRUNPha05Uqx4ZMfsPpz2pUaASBdCTjY+Ha14PHmj9
	 HpFdktfGRBZYPbUtkH6od2CtHeaJI92HxuIQh/8KT5OqLrWPSKV9EW5SVSxhEXHMQm
	 rF2KRvIa0lNsZeb2SCG4Cc+m9w7SZhZwCwou1wXDpd0h344fKSinX++0Pt/SDCYLlR
	 GikXHeUa0uLahZYB8bC9kuRFopa4t/tfx8afHhUiuiVXW86T8ol7bOL2AjnJMxEkzh
	 uxsQy90hysPjoaIULUr1YUwo56RSq4WVKkKP3qINcs69zsvVBQPvpl1lL8sy5jkBBX
	 K89icArMoaKBA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA12DC5AC7A
	for <ddprobe@lists.linux.dev>; Fri,  7 Aug 2026 09:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178609323368.10605.4615368480910978938.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b11b569ead3c45c5f0ccc48fcd86e432d0ea7e2c6630dd88bb8751853bd24c74
Date: Fri, 07 Aug 2026 09:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786093233
