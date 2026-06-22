Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41A09233956
	for <ddprobe@lists.linux.dev>; Mon, 22 Jun 2026 06:26:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782109594; cv=none; b=rOiHNRSddf/zdlAZq/HnLvUMxQYVqpTk7z4ZvIVrkhqUbCeKPv3fdpC2TE/ElhEBcTF8k3LISxyeP7JGsNldKm50ggEpWlgM7mj5vqsFcDnKFTHklC/asugFQstmt0wg9q/am7R+9Re+4TCy3BUqxLIBiK8t+tFR5N9VScDWI3I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782109594; c=relaxed/simple;
	bh=zcXTX0XjG2s/fFBzac8j1+OYG6MVpN2wATXGMwG5xXE=;
	h=To:Subject:From:Message-Id:Date; b=CyncRXeK+JL92W4Xe8L4H7qyJlBiWqlERCgeglEvE71u6CDlSzR8fNH0e7EDCKSwk4Lgy+Gyjk5twykxevCnWP3NLXec62+9lRKKENsOODPGzBXLalp84kgkm3ITxKNqHnq0mNsQgE43RwkBDuUutB9K+k7Mi3xPeyFyxAtOwWo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=R1EC4Iga; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="R1EC4Iga"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4B3CC2BCB4
	for <ddprobe@lists.linux.dev>; Mon, 22 Jun 2026 06:26:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782109593;
	bh=zcXTX0XjG2s/fFBzac8j1+OYG6MVpN2wATXGMwG5xXE=;
	h=To:Subject:From:Date:From;
	b=R1EC4IgaiBejked/8KZZizDO//FIm0H/uRSs2uFl+yNf5/HH+UtX7PaV2DTLjEBiY
	 QzSsK0ftWSuFkuVawjU70gjVn9u7BB3qqXtYBalAFSr9ESg7hg81BvvIuqh+MgJYJM
	 aI6mXKB0Jkys2+CezWcUByMkFfEgGl/4Glq5PO3rYK9MK4+2LJVsrojNVv2quM9yz9
	 KaYZmQyao7y6xig+vpCtLH1fDpK7vXzwjxy19rHg7lu5e9ce5YwJM9eQtk+frl/zfq
	 nmOamfmWA3gxf5j45Z63Cg7fFw8WYuoaL5Vrk35nex08aWN6Z/CdhjapZAh21d9aTV
	 bPEUKOn4qzc3g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B9E7ACD98F6
	for <ddprobe@lists.linux.dev>; Mon, 22 Jun 2026 06:26:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178210959372.24842.1046783824715509180.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c075ce7adc046a6eedd107cc19d1e65c6ec9baa084ab8c924cb746df9c2a9bca
Date: Mon, 22 Jun 2026 06:26:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782109593
