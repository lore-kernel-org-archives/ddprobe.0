Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C66D25A621
	for <ddprobe@lists.linux.dev>; Wed, 21 May 2025 10:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747822194; cv=none; b=dGcnKAgelB71z6QVYXy2qXCrxIXjj0Lx+DXOeJCME/bVLODuGFwe1/jAkC2nL69EUnK5gVKEB24MfbKLTVCMKR10gk+ELBUnQmcHFdp03V73bnxfg1Et1rXtd3F9z+8cbXrcagVDelDIWcaV5z24iuu5It4RkbujoFZzNsmVV7k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747822194; c=relaxed/simple;
	bh=c4Tdtww+lcz3crEYwgtEYYIHHvepJcFeMzDke8PFh80=;
	h=To:Subject:From:Message-Id:Date; b=HWN/HGgYCf+ueha0eQ39L1S6odJ2Ypw/TI5EHTEkXUzV9WoKfPgRBNP0diP7zZgXGM7k4XUs8LCGvnP7+Eom5vB0muOE0MRca1kCSSdvB232kuYWYAVoF4aXSoLPGIoo64NXY674AzMffngwZPjw9MI2u8ZUiw2XoPI0xKaEyVM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AnTgeOCH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AnTgeOCH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D3C6C4CEEA
	for <ddprobe@lists.linux.dev>; Wed, 21 May 2025 10:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747822193;
	bh=c4Tdtww+lcz3crEYwgtEYYIHHvepJcFeMzDke8PFh80=;
	h=To:Subject:From:Date:From;
	b=AnTgeOCH9aqN0fpySG6iByf0aqREglm3NcXXXc64L5Xc+8+pADj5gTEc8za05FfyF
	 DJQ7G/eQzf6ACO134HdDwlkFBLGdlSbR64jAZOLDbftG0W8JEXA5F5EFXbeqyuKGl1
	 ahJs3LVazRcA7xfJiGXKS0/xznopSxv7GUpyTqUTySM/KrjtPp7VBb7U58zetg5NFd
	 l5ZuYUvbg20Zm3DLPIGmE6NqHtWZNgF/2yYsSU9L59/52djZj6BRPrLiqhEkqHCr2e
	 zxtHrqGeC4DtwKo8s7xvdBUM3cnAjp7uSqcAqmbRT13teOk7KMEjUDLbOwjxBHM5h1
	 7VZsu/ZbyFFQQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EEDBC54E65
	for <ddprobe@lists.linux.dev>; Wed, 21 May 2025 10:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174782219357.32335.1107389991334851873.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8a82ce3cba345728984f06a72c5fa6f8ba3e927a4d3d27c9d89ee12bda09d39b
Date: Wed, 21 May 2025 10:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747822193
