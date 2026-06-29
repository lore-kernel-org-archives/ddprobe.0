Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A5B833B1B3
	for <ddprobe@lists.linux.dev>; Mon, 29 Jun 2026 05:48:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782712114; cv=none; b=mfJIdFYJlFUPKDNrMRabJQ4V4WHM2uUIUdD3aYFViDHESVwvEmoOggiX/kFywczCou8HWRDQ6jONYsS/zLGAjp5dZvbH39kIBpWot4omvpWYBHb7v0kBIva2Czbl/Af4ztyb74zuE0jUZkZSrmZjHJFTzJBSKuyWoD5mbKAnZSU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782712114; c=relaxed/simple;
	bh=7TpJNcwbUNYhhrYws7ACWvOFWDGflxGcKp0eHpt2DOE=;
	h=To:Subject:From:Message-Id:Date; b=LR114Wj4KYW7XsZ60t5luwYkTbmJZ2TIh6HuEgbBNhtA2Pexn5tU+LjY47JHTwT7fniF1I9t1XVfOmTgXJgnmUkkhx58CPZ26+LxcbulXgN09+Ec/1725VmkKeSVf1x0BOMGQ0GeYmXnS7z6LfcB4psV+c9qg7haRvd1+bep0Pk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oKjY+Rg0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oKjY+Rg0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1B31C19425
	for <ddprobe@lists.linux.dev>; Mon, 29 Jun 2026 05:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782712113;
	bh=7TpJNcwbUNYhhrYws7ACWvOFWDGflxGcKp0eHpt2DOE=;
	h=To:Subject:From:Date:From;
	b=oKjY+Rg0g28cahfasJLDKtYSbN1u/gD9wj1TRvp6xdJxJn+EVH330xXZKSLhjNBgv
	 +kjAxXlWzieapUHQYHl4tJt68cddES3S4fMW35xRNLT2xVeuhbY53YgHLn9sE842Pv
	 +tnDndd1hSkdTwf31hAnuyVmhFzF2Oq53wYUhoelmJLk6zHjkb9rNNUhfiTJ/pzg/S
	 JTjs9zn/kNjMlLa8ftZr/ep+bTV/YfxsNVc53LHfi+Wp53ZyMPzQJQMZyNu1BcXTiV
	 L5lzxR/MnMi+9o+b3RUY2wQo00CztbM08w7InViFbr3mTb/0CdNhNrWc3iPAaXYVH3
	 DasB1PBS66o8w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8A4CC43458
	for <ddprobe@lists.linux.dev>; Mon, 29 Jun 2026 05:48:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178271211368.20734.7566553497472561706.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 17472d06b763a347a683dfe172179d30592e01373fa61224b899d861a58968e0
Date: Mon, 29 Jun 2026 05:48:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782712113
