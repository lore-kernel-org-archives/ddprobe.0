Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 385CC53B35C
	for <ddprobe@lists.linux.dev>; Wed, 23 Sep 2026 14:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790175034; cv=none; b=do2kMHrHcUK1aN7EAvSbuusAsq/Vgk8kZUBujJOKKW6XRcrCs5Z327pcE7bQDGbE06RvG37fSVyJWodFtegbtKyrfDmXDcf0nvtYN+NiA5sfbkOmnPdKj2qyG0v21PP7+jGv5zxHDAdx2/ja3aM1aHMqLBiFSJG/yGHAbmmHM8g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790175034; c=relaxed/simple;
	bh=SEx1PGmngWhiB51YVTtz7BTaNztWAIDmZbmvIsIGRjU=;
	h=To:Subject:From:Message-Id:Date; b=RHMztg4yU6CIuTb4bD4GlBQpaAM1/MnTw7sSlmNjuDdkeV/5brrkqdtyXlnNY9TfvTJLs9UWWkTv38u0+aE1wtLPCeOzI+Xa0qtXpNVCHjz3/JKGG6Aim2P1Vcz60n3BGrRe2zMoGaZLHm0c9jnecN8BqRyiJuYzCC7zekXF1MU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DnmUcD2V; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DnmUcD2V"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1340C2BCC7
	for <ddprobe@lists.linux.dev>; Wed, 23 Sep 2026 14:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790175033;
	bh=SEx1PGmngWhiB51YVTtz7BTaNztWAIDmZbmvIsIGRjU=;
	h=To:Subject:From:Date:From;
	b=DnmUcD2VGKPNVR2MB8LzOuf3joBOX7UWf+Hmk3Z0JiGTMB+0FfT/o9DggbMRsCjr6
	 FhySh4PQ9id8I5jv/snY5yjMmlrTTewKER9D/i8mTVN0rvhRuTYu0KiJZecrxVr7r9
	 +wpGZv7cW5w3XD8udnfAcN7KWGvKynhnDiiTF0/OnXCdCUG6Ma3niDNKN3G+J5D2ov
	 RRUDgXTUW+T7VhP8DkL57G7lqzHOJCUTG8G+jEnxvd7YrAVZdXTin44amcuPhts4NA
	 fGA/Eq8JJsId90v0VZATZakrFLv+o5spqvlaEyGyjSAzZ+/nFGHQgNI098NeLNcXhf
	 kdL+n+nmIPyFg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF477C9830B
	for <ddprobe@lists.linux.dev>; Wed, 23 Sep 2026 14:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179017503370.13090.10627149649631069695.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5621e478924ef98c7def5c39148bdf77ee5c9b5e4f0aae25a04bf93a091ecc20
Date: Wed, 23 Sep 2026 14:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790175033
