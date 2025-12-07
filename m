Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 07BEA2EBBA1
	for <ddprobe@lists.linux.dev>; Sun,  7 Dec 2025 15:42:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765122174; cv=none; b=BCF9SIVv7Q3EKPe8zj5UJ/jDlG//4QscYKGKXjxSzcDulDjJt0+8mpMCDB9E1sPr201W+g4IxAVfTBP6lvbdeiOap8iYFyvDUOuP8qV4Xr/zWVV63K3N0+4rephq+PZ56XFy6YQJJM+rRVYe/f+jKLaHL7k4dZthV6izyTaT0M0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765122174; c=relaxed/simple;
	bh=nnoIPyXE8SzjqRtEZcpnnr0WTShaOYroOdLV/D7h0Dc=;
	h=To:Subject:From:Message-Id:Date; b=i+3ez4HylF8HfN1/656IFYJple6qQ9HDy5mAhXmeI2mqqXRUFTgTRUELMlU7lZ4IDDmGQL0WdJcLwt7QEQnOeb+QMrUlvNpudI5jaQkgEIeUmmsuI4m1DHI22HvHY5qT3dnTLJ5klUUClyhYUzPOzgQ9MPIxq2yuZzWDfeApSsY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=i6ECoIv2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="i6ECoIv2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A383FC116B1
	for <ddprobe@lists.linux.dev>; Sun,  7 Dec 2025 15:42:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765122173;
	bh=nnoIPyXE8SzjqRtEZcpnnr0WTShaOYroOdLV/D7h0Dc=;
	h=To:Subject:From:Date:From;
	b=i6ECoIv2CYiBuZZ6oUDINviIHou0scDnGHleRRFHZTNNmBVMpD5JAnSGVjGJuEwy8
	 sH7aQxaMEaRImJ591vguBa+eZBYxuXwYjzNcDJvwwRLL26cgN1HGDPwdirZGsXJU1x
	 6pNb+aAYs6aetfgW+U8GwvQsDIXWYsP3QB9zUBkBHvoN2ch3+PvSAD2jJ0vx6MXN+N
	 E9XWk/OnbMZZBhdfC1e153RhyT4D8fMEeFox6l2yqsw2ph5B9RqFxA1uSx4uHJVq5F
	 sRcfkAnpYrxBEUaC+P0Crr1CIgq7UMkfoCTa9JrhD5fs42nUfZR2okdDQGvb0nhjEf
	 dUbJnzsLPokRQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9141BD2CE17
	for <ddprobe@lists.linux.dev>; Sun,  7 Dec 2025 15:42:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176512217358.4676.4304694592785927381.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eb1ab70d5fe42cc3cecc62782ddbb6199d6c5f4fa9419c077c393c3303a1dd27
Date: Sun, 07 Dec 2025 15:42:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765122173
