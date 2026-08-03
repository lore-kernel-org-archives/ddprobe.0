Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 604B12BE639
	for <ddprobe@lists.linux.dev>; Mon,  3 Aug 2026 23:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785800434; cv=none; b=H6Lh6gCe7lneM9q38CZ8BkoLsZdm/A/ssOkN1UnIXRG0SHByWf6r9ZaG4LrjPkAOGa/ktM1vA2zdNcVKbAgtPBuDW6QSjAPKyKFosldSX8wXeKk7cGrbnDbF782jWh+3HAHD6WDZOFgtWc44vcAiLJWOQIVHI/os4CM1B6KeAeY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785800434; c=relaxed/simple;
	bh=6uOjDGwh2IbqIsyoFTgQysNYlLg4SzlnZ0kAUmRTobw=;
	h=To:Subject:From:Message-Id:Date; b=QTVvuvvGs6ZcSIhOfDKEtsbNLimJoOdMpIXXOQajoE/UcToBozIPCfho06IjRigBbfKaV83WHBB0D0N4F8dixZdrLOVcIfwelogNeDuiSjF5IJTjZtteHFDHN9RZnfKHGR1+UULDnGF3n0VkOFCruJ4SjrH9v844VmwrtDF88Bc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MdR0Vqyv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MdR0Vqyv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CCCFDC2BCB9
	for <ddprobe@lists.linux.dev>; Mon,  3 Aug 2026 23:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785800433;
	bh=6uOjDGwh2IbqIsyoFTgQysNYlLg4SzlnZ0kAUmRTobw=;
	h=To:Subject:From:Date:From;
	b=MdR0VqyvmqyDzAJZ3mbHZ0oN6foKS+oacHmGmalTBJJlf9CAnovfi+h0fzR7HEUFS
	 JJhrewrf8f2ooVbvvgU2IMKS7+kkHv0eqCnrtipoFeP+fc5NEWJURO+PnODygg1zEj
	 xXZmSfU4ACy7/8NUvj9QyhLPLfhd5Vs/afQok1o7D3W0G94lejhMU0r4V7scOvKt4u
	 pwda5HQiHkvw9JRe4fx4FDjLC6Pz3M8bM3Upn7r+w15hXae7+IKtnnL3yi+MJrHc6Q
	 mWSzVoqu8x0m0fwuAqKqczUrvHfJ3eBzhfNWsbXoOfuNLLFefpiuCqwQJxp8fgDPDV
	 5CCi2Iqk1mvqw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA3C7C55182
	for <ddprobe@lists.linux.dev>; Mon,  3 Aug 2026 23:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178580043368.9829.16420924730330279993.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0145072494edfc80d87b68490195907a81d2d6df3097ab825cca922e0dad633d
Date: Mon, 03 Aug 2026 23:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785800433
