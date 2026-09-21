Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5EB334973A4
	for <ddprobe@lists.linux.dev>; Mon, 21 Sep 2026 12:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789993234; cv=none; b=fRKPp3L+dljgqoCj0+1elRl4/l4CySXTxsJ2yz2lHUzQgSBgZ4Ym34Lx1+sWw3om+f2omTUIVBo9U5gI4uyfgz0mWZoOq6zB0saV/4O51vKoB92WxUrV/nzBgaFJOEXcaBQ1HIF6h//TeTnGuiI+eQ72f4Y65c6EhlJrkQq2Ats=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789993234; c=relaxed/simple;
	bh=k5mfTqsvhXWWmcL9q/At2+7MPGwp20mFUh7753a6tZY=;
	h=To:Subject:From:Message-Id:Date; b=Djv03yavmHtqNypfvm6K/37t6szDd2Rn2CRg1QlQXyON51yDzg+CZ+KlxLyU43CHIcP+DKfvWgURT6bMkmZqAqy6J5l3+yI3rSxux4hcwkZPvT9sVGZT2EpRAMbSYbnEdZSAsZFyMjX9dX8K+Uv9xTmpH/wkRp8maWbtPktHIbU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UB3EvpDN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UB3EvpDN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D96A7C2BCB3
	for <ddprobe@lists.linux.dev>; Mon, 21 Sep 2026 12:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789993233;
	bh=k5mfTqsvhXWWmcL9q/At2+7MPGwp20mFUh7753a6tZY=;
	h=To:Subject:From:Date:From;
	b=UB3EvpDNqXkHGC4h6g7aq4i55ABYh33u4qiDfDlrFqTuIjBC7VEIMJGGwSZ7QUF1R
	 o/4Zk78JPcffoK9wFwwWrphfZKPz+pEVeLNbcVEBrUUhkJJvjfrQEAxH2fc878oNoF
	 nABgC6ijUjmSNRZEqiYQuiWRfNvgUHbjaf73ahJW9S5qElqPGfK2MWGtLkpHTqNRTC
	 o21qtzOWK4tjTf3dJ4sF9nEHOTSbbAaiQpXS7E5feMpAVk0u0k7dB/1d2RgGVZgq6g
	 ZnVBhHZfa8T+vz0Msx4f9YPVGtKWG5Yd+xfPkNREbOZSrVEXGY9ls9sJoj1+BUVL1w
	 zHRQBdV5Jp0Vg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B441FC982EE
	for <ddprobe@lists.linux.dev>; Mon, 21 Sep 2026 12:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178999323372.32045.13732743044108806848.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d48ac469c0574ac9c1777e977dea45585cff1f742523337bbb020ba0c540fa2b
Date: Mon, 21 Sep 2026 12:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789993233
