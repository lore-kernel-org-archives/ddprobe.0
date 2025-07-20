Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2371B2AD0F
	for <ddprobe@lists.linux.dev>; Sun, 20 Jul 2025 05:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752989394; cv=none; b=b56xiBmPKMzDmZdME3iqY0riUNTVE0QLFvcreuqGUHXOuJmyHaz3TUn2tM/OcVuUXK+rzi6YwhWSYiKdZ1Y8ZJszf0sDZytWR6cnwApWfXKia++3EHHCSgZhDZpa3KxB0jjTYLpv2e39ecKzpeEEYTuEG3UbK7IRK21AofTZxzc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752989394; c=relaxed/simple;
	bh=axAE95rPQhoEDS8pnCh1EB5Iw8Yur7da0ONW93xMvA8=;
	h=To:Subject:From:Message-Id:Date; b=cSSlJOfL1A7jLFJU03eomF2hr+HyVdCjHowStO4Y/0rndxwcoXe3ZSNfBWvZgMMS96RfENxKVKbqx13Qc/ccoC7oQnPDoK52/FywtU/96GZEG2hKBStPUcaQPVgk07DTIy4rv9yrPAxlSeJpkvRXLS+UHH/GIpn9/BGohvw0ksk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HN6tRfU4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HN6tRfU4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A92FEC4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 20 Jul 2025 05:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752989393;
	bh=axAE95rPQhoEDS8pnCh1EB5Iw8Yur7da0ONW93xMvA8=;
	h=To:Subject:From:Date:From;
	b=HN6tRfU42a/AnioLrRzgJgzK4DePLjxME1q0g2Jff6WrHcXhRkrS6zY6gk9Hi2pj+
	 Noz5U5lh9CmeGEHhdSdrM7C1sGvoC1/ZGRxoFYxUYAmIHDdxIete3LTLPZaiWSHv8m
	 NnWs/1d9T7ZBei5gmsFWykkB5Kr6WaqIUhcfq6J82ICUhYslJhE2Gfg1HI8b/jySXQ
	 62fhl8zMdo35817TsU44O0FsKx3yUndi+XHcoDgU9rN7Q8WaOMamSJV2Adyr9dN1Zi
	 E12CNOO70ERAmJaIrrBeV5rzsKbf4swn3n5P0ntoAaQTvIPraiWfkdTH2tyAB7qx38
	 DlTJfz82tZB9w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95063C83F22
	for <ddprobe@lists.linux.dev>; Sun, 20 Jul 2025 05:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175298939357.7924.5712250092507950356.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 29300d92d82f0b83a995fdb77d297ae352318e866b69ea0acebea00b14f26354
Date: Sun, 20 Jul 2025 05:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752989393
