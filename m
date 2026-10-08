Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 502131F2B8D
	for <ddprobe@lists.linux.dev>; Thu,  8 Oct 2026 01:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791421834; cv=none; b=Us2UDIpgY/0QThhHyPAxqo+x8BkaoqzHbQPI7bhMmizFSgaLqgwTNTPk6MdBJvijyE7D9Ds19jKFqSULG9xg1uSbz6m6lN9Jy+Bzc+xwvaZB5/Jdmhs8us21RuZ2Get52Sp8BpwL+m35aOFdP86T/qEvmJrRcsF+qN+6bVxQ8i0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791421834; c=relaxed/simple;
	bh=4CS696/V5cqsnvnpEDb06KE4Ei7riJKVw6FmRAtfa/k=;
	h=To:Subject:From:Message-Id:Date; b=mnvwXXitLsBkrvFeVvAbSW8gKMoLQTa6jGtkmFQtkJc0MwdBjY0SOQyn80Mf0B3KC539SsJv3l+Xu8Lq4oTTmRTdT8YRI1Gw4vdugBmfEH5GLn61NpPPYuaiqQyUFWPZlwayCG8P1+fc9fn5k6+6UFq3rhNX7nK5v94c7KxMGJ0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tZbZVXaM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tZbZVXaM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6CE7C2BCB9
	for <ddprobe@lists.linux.dev>; Thu,  8 Oct 2026 01:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791421833;
	bh=4CS696/V5cqsnvnpEDb06KE4Ei7riJKVw6FmRAtfa/k=;
	h=To:Subject:From:Date:From;
	b=tZbZVXaMT9lNjQpxTAh+PvtkmF+8B0VUvJf2PTcA4YAEsaYbcLPE0ZS/DofLPRL+J
	 66xOjGHkyzkOvDbJn7pW5By2IpWM77bJHFaJL5/l7gODqeHWEsjghMtOB5XDTuQ3R1
	 Y0i+ec7too2fJC5WXJSFybutR0zb8teSMpiuX73OfU+SBesZVbx7LB58L3XRVGgtnr
	 Y0xn9ADGflvss232qdRlW3xaQ8AUpNgRXB3BQKsN9mknNCSbf4XIEeAoiJLrcWZWN/
	 KADg8cJnyl3ZZvMwAheH2LjhyBYgsiQ8o3pF2IU67FKBOBs1PXt8OWJipfKJMI3lhv
	 xz+7ZT525iU1A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AABB1CA6002
	for <ddprobe@lists.linux.dev>; Thu,  8 Oct 2026 01:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179142183369.21825.16918513074815790623.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ba59e75d3e6bcb0aa0d2f7a0ef88f83ed8546033976fd2a95157fdefd0f5d8ea
Date: Thu, 08 Oct 2026 01:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791421833
