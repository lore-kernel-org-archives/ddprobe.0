Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B449145B37
	for <ddprobe@lists.linux.dev>; Thu, 18 Jul 2024 21:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721339754; cv=none; b=m39SGOgN/YQ3ewHbolqJjLbsdHVqHPXCgHWfY2FEUkIE695rzNyKjInfG/p/IVMHCytqfGGjoYOd4K28PlXXnetuDMnz8fWjYpuZjEY3s6butltF/sldKDrcG3+0yzpXWpEkqQIamPLUl9GUTbMKOAqQK+Y56yMqMs1/5u6CiYU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721339754; c=relaxed/simple;
	bh=Va+ouSZIS3YPLUNi3++o6ITcHC1JZLddCNNc3N3vXdE=;
	h=To:Subject:From:Message-Id:Date; b=OzzdLbIb4vBeayMey/mzbIkB2OBeLonYi84383togiWvcV2ZNUUiwmad6yDWWEfx4bibIWjI5xxPwxaEMRtNIUdtgw0O/u8AIwUzO7zq4So51ozcFMIj+5bC63wBgXNHbvZagCqvCEbMCtTLy2JZfTZX+O6AzZUUKIb9M+bFUZs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=O7hnLZxW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="O7hnLZxW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA11CC4AF09
	for <ddprobe@lists.linux.dev>; Thu, 18 Jul 2024 21:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721339753;
	bh=Va+ouSZIS3YPLUNi3++o6ITcHC1JZLddCNNc3N3vXdE=;
	h=To:Subject:From:Date:From;
	b=O7hnLZxWRNMCG7Fa2dLwhEJmMK7zzIqNWAdVsUNaHxkns3TXezo7/0rkqOnaN/nlK
	 5XP3s93kcUvUDkVXHnEtTOKzER2oscF7Se1RUtu0hQHcYnfsKHmFuwBw1hbsiWsRQg
	 GTh7nZtDCGrszn/dWsNVLsSfBXTWww35rLj6AF0H3XF+OvndA9ncDyY4F0mGDAbweM
	 g3/UTSHBpNUyFmIeiO1AhyQLTdKN3JFYOCgd/MgntJYhivK5q3bFQMXurPbe5aSy5k
	 DJdB58xbel2T5L58j33zJTq5pf6I7ItvHLI+WIMfWvBjTXO5Tu8bczzci+bGsyumkV
	 qvlmoFhdG/bog==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BA3B3C3DA61
	for <ddprobe@lists.linux.dev>; Thu, 18 Jul 2024 21:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172133975365.14337.11025116578700192968.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 33839f68307c145952639d372e5f44b1af6464f0aa8656a53b64f15c29f9a87e
Date: Thu, 18 Jul 2024 21:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721339753
