Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 333DC43AB7
	for <ddprobe@lists.linux.dev>; Wed,  8 Jan 2025 21:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736371554; cv=none; b=sZL/cOwG31WVnCSpNJgPXlBO22SooU4Aqc78CufC7YtEgzT/+1E+37XQNWOk2tJWEgR1HRapyDySyRRb/uBZCoWuWeW8v7ufEqrKJFVf9vlVQU9LAS3xzYcNWMMBuW5unKV1KCxlfV7CgfFmwnfhSmvIrFmFjUeUb4V2rwDkhac=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736371554; c=relaxed/simple;
	bh=ENXfCa2oeO/rs5ZR/oKi7Ymrcbeo2Jqx7pYuis1F3p4=;
	h=To:Subject:From:Message-Id:Date; b=CMwF6NE2rgZafRp7QndHNEJRrmMqL1/TZj5n3OpRVk/cXA4PzE/fXlfBsjcQHUF8bPpxO6A8R4Hd3iEFip54ULj7E4jes/SDWSlNt/soOByGK0C2VM0e2/FZfH2BGZwZSH2UEosAVu+baRWyuI97HlWNEF2hLpuXIdWAU2U+01U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=diJKtFv7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="diJKtFv7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABD0CC4CED3
	for <ddprobe@lists.linux.dev>; Wed,  8 Jan 2025 21:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736371553;
	bh=ENXfCa2oeO/rs5ZR/oKi7Ymrcbeo2Jqx7pYuis1F3p4=;
	h=To:Subject:From:Date:From;
	b=diJKtFv7dPreWiXBXNRmK/tieZohH1wme18yKEPT60BWPUdbYvqKcfXfgCCXnc0IT
	 oTDIez0lt5ND2HTzS3xEz1EuH/TEES21C+a1PtTxfWagWoSZtPbyEFU+C+QKYk8RDZ
	 kJY90gFPJvV3nB/3tJZWi+NKk3Cu7wJekRj3oHF0sd0WE5dL+25OlX52TXtBRmr9pT
	 9PjMkXPqn2F7YtDJt5O/jtgz87FSzf/QBw75ypg862p7TfglQHduJ2x5JpkE9zshxs
	 fsW5NM8hG8bXEg7rBPLsFrMerwmSAoogdsuQRztJpdpEL44vWOitplg8a9bvT7P2Hq
	 hBhfKnFBa3fmg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97BB7E77188
	for <ddprobe@lists.linux.dev>; Wed,  8 Jan 2025 21:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173637155360.27055.9689714781913532403.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7de0447539a0a47ef04e684791ab6ee0b3f0b4006f5dc5ef9908b804cb86e468
Date: Wed, 08 Jan 2025 21:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736371553
