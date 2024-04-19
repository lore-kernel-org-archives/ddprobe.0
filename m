Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 88DE7EC3
	for <ddprobe@lists.linux.dev>; Fri, 19 Apr 2024 00:49:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713487763; cv=none; b=IiNvOnmW432A4IMVH1vWs4efsGOd0SgR7DR9WxNYZ9z6wkhPCtuDEcQ7+n1joIGZnkk0F0B+HTVYQDQ4JUoVIidBqcn/BlGQHaOsdO42ZpriYMF0HcYpxjPzN5oaz+zfx1uNQOVr6V/vS8F7aRQxXzttJFb0iLncThKAg+x+T3Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713487763; c=relaxed/simple;
	bh=I2+dLA9D53FMmlpv1CmLmSPPDsj2OHwmCU1EyEjtI+E=;
	h=To:Subject:From:Message-Id:Date; b=lC1GidZr7+P+ks693HDKknzAkrNOWd6zytlJ1tCcBKvB4DA3XmEzQwhZGEGyeECs+zWfn5yT92YAGbEdPwPrg7CCBTEoLa/RWO7LFWZxGZKUPEviw7M1fMyODJpnht2KSqRwDyytJr5YPW2KhWi9CXrGb2hGluSDt61ZEBf5zHY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bI6LcwLg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bI6LcwLg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D36EFC113CC
	for <ddprobe@lists.linux.dev>; Fri, 19 Apr 2024 00:49:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713487762;
	bh=I2+dLA9D53FMmlpv1CmLmSPPDsj2OHwmCU1EyEjtI+E=;
	h=To:Subject:From:Date:From;
	b=bI6LcwLgRD1bhT/qyjos+LsuPWAT4kYmr4FxAejQheuSmd7/5jwgnY+27y2stZWKr
	 aunclkpH8uI+CmX49tIDwVSXfo2vL4JHXC0gbEbdZGKtgyUUULLwHfUFYS6depaVMr
	 Qgc9BsKTSRAMnwujq7VTRl3UCEeSMG9NeXO7YRKAyLLjnBbm0xuQI/NX0GrJjrNJO3
	 +Q+DRBuTyK9XV2V0P+LMFQqttReGrXOdW+Igc852Gu5r/Sd1PeJL6P/xvnWRNT37Go
	 vJPrmJ/qSHdf1tHsliXToZEggC6OSt7VBOnl75dL23qUFuMt1bwvKVW6iKXLkyPmIo
	 wJOFdduY61WZg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C2FA0C4345F
	for <ddprobe@lists.linux.dev>; Fri, 19 Apr 2024 00:49:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171348776278.32354.17375690188379470983.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4e4b649948eca89ba7b7b60ac49c40dd9eed5c0df0624b952a8733a529c9811a
Date: Fri, 19 Apr 2024 00:49:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713487762
