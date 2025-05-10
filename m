Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FBB81428E7
	for <ddprobe@lists.linux.dev>; Sat, 10 May 2025 03:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746847194; cv=none; b=blM2FjWBhjZO+/bgc+OJ8fpcp59WTPm3ww378lyACiTSBDJ4sHsbGXT1PQpr9dxMdz8+ee5ob5mKEnQzun5SpcKT7G4Gu2w9HWP76la8Tm0qrh477czhZnxVHGQTWGWTVgiI4LfSpDx6zFTkU2ZFmVrYuIQAVfTUZxUPVMkLYk8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746847194; c=relaxed/simple;
	bh=X5J6TzWnYGgfe+nOuIIVLA2vA9NJy5GebOR+xOV19cc=;
	h=To:Subject:From:Message-Id:Date; b=BEhEd40ZujFC0iT3oFd3VjrmOIUHbHQEPoo+a89Gv01Y4X/LlIknR1h1uGSjP+8ojUSwL8Igb60tKxva4HCSB/mzNeK+gTly4OKVJlJByYf3POptxPorj/Z7PaOkJ78LdksE7u04dK+ybSq81y0PVt+S4k35k7wlJe9YxT52k/Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cdiTGyD7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cdiTGyD7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAA29C4CEE9
	for <ddprobe@lists.linux.dev>; Sat, 10 May 2025 03:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746847193;
	bh=X5J6TzWnYGgfe+nOuIIVLA2vA9NJy5GebOR+xOV19cc=;
	h=To:Subject:From:Date:From;
	b=cdiTGyD7ad7yrFSoYOQQFGNimgBr/IDSFtvq7wW9PaW5MT11gPFIARMsg4NZDDISr
	 Ttt/5WeTcXRPN+lvni6O4YHKAAa9IQBEszJfpljimSPxvuybli4F8AYnLjulz2k1tQ
	 S8cZLCPRQ7n6qLm6bdMxj/ypoAFAZS+cIX0ewASqTAgOkgRNIQHAFURQktFecVGGzW
	 5jACl4Vj7hZlSt8P76olm2dlyFBiYUimPrZbS4ERTYl6NSw3byDrV0PEJ/mkcmINHM
	 xduNo817ReyXJlLnPhTn9G/3uas7EITKOrOSpUuV+17iUVdeKjFAePsW3fyPlRLBqI
	 RaOAE7RHEId7w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 976A9C3ABBC
	for <ddprobe@lists.linux.dev>; Sat, 10 May 2025 03:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174684719358.26090.3513620214569695450.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a30e9cb766c05dbefc82e4f546b4fc001b0d36845ddedde7576bc90186dee2c7
Date: Sat, 10 May 2025 03:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746847193
