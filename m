Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28EEE37648F
	for <ddprobe@lists.linux.dev>; Wed, 29 Apr 2026 15:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777477654; cv=none; b=MWyVuIDSGiX0SkMHr98JBTJD56jYLC04EvkLxUNFIC6NbeLMgaGZ6E1fuVBmBHctkDN6OtXIm5xQowL5KhYNxwXe02rxAZ4OL4ZCm/4rJfoWSUSJK0ZS/XzkR+0jSW2neB63ns/ZvooholnJ2P77HKXtdE0bOxXpJGe7GPAXxfA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777477654; c=relaxed/simple;
	bh=FNNmB38/1p2++Nqv6ezK+vG3+yyuiAtQRZELvxZaCNI=;
	h=To:Subject:From:Message-Id:Date; b=re2cwadupMGzrS4NWb0JuZ8AGGGJqYgEyaGxWOUlvHv639zt/5cb5rG2K1d4i7DiBmFLKx3Nllthger4voxG+f1nzUf3D2U9VjHLUYs1Cw8u1UPp9VROpF+HXetzGpqKsbE1bvlnfbD/BdHQk3CZpUzWyTs0RJ0c+siHDo5ORy8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=etbuQvCk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="etbuQvCk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB96FC2BCB8
	for <ddprobe@lists.linux.dev>; Wed, 29 Apr 2026 15:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777477653;
	bh=FNNmB38/1p2++Nqv6ezK+vG3+yyuiAtQRZELvxZaCNI=;
	h=To:Subject:From:Date:From;
	b=etbuQvCkV6WK2NIDkcB0F36Qiiz7SJYXuyDY5AWAZQsMdsmcd+CtxR0wkZwfYlVbE
	 QMpBrjSkY766MsvgDUfJQM6nxPWVSBcLF9xXM9UhLPVt+05HjWB0Gsjmxq99Rd7ikI
	 sBdYUkWriwSyhl74zD4w60t9vdzvYhDqa0K/6CD3TFeB1qByfRX2bP3s5As9R/ea4+
	 G+ZeVBHxiDTrc0KP6CWgzBfsx5qDRGAqQ37Gf24Bwc9ZMMRYG0Qty3WMgDceWA+sUH
	 w8yj1dHsVy/aDHrI6i2qi0JG2icId3YWmqwzQPqK+iXi0gRSMcQc7Fe4GZXScqKmCj
	 tYeM86R/wcDMg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A981AFF887E
	for <ddprobe@lists.linux.dev>; Wed, 29 Apr 2026 15:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177747765368.27173.15037325401650764984.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9e830704a403c35ad273f2af62e12d13f062b3d6236b853e7b830fe30994c7a0
Date: Wed, 29 Apr 2026 15:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777477653
