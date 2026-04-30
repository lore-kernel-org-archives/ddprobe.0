Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 59FD146AF0F
	for <ddprobe@lists.linux.dev>; Thu, 30 Apr 2026 16:27:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777566454; cv=none; b=Uh4HeZ1LCWqpg/FMcnZn+zJUCiH6f5Ec48JhM3BGC0mSevdAD5tR/clEcrg4wfYGVLnmqISwRCmUDlTml8oPrGsTRP1BqRLON8CMrdW6NbwLMCJl816vwzIcm8tAmm+YK8MU4gOL3URL+y/nmIMKiMgg7ODkF9O677zaXzF+PeY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777566454; c=relaxed/simple;
	bh=FKwPMZS99BXPgKS1HakHNn1m2NbWVhrszFQfFg0PORM=;
	h=To:Subject:From:Message-Id:Date; b=Mt9wSGM8OCMuVFiPP0GXD38dABZetO7kXFM1ey0JY95wvk6jH+ly8G6evbmgEg0kzXYvSdJOYLdV0SGzQ+5lhzAON97AMzYu7u9p4w/ndx2EF0+5NSeBMEjVWMneMCfnEk1/Wlmp6V077dQDaUP6L01DBcZ39nSTSfcGYIgsnuU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bReDtOLl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bReDtOLl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B974FC2BCB8
	for <ddprobe@lists.linux.dev>; Thu, 30 Apr 2026 16:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777566453;
	bh=FKwPMZS99BXPgKS1HakHNn1m2NbWVhrszFQfFg0PORM=;
	h=To:Subject:From:Date:From;
	b=bReDtOLl98MSjdGRSaGkkqtLYN+hV8/xkbo97qUfaJvJ/p3MV0r8vDnZ8uQZ60hnt
	 Vopck/6wTodAMM3sAZeMrvgvGKYQ5WkT3grTvefaie6mSlRE5sxK4utygWDm21qE/D
	 Qu0ymxQrK40eY3apxtafLYRMoBjLW2qz0yW7tPpvPkG/RfbXsDhJY4KjGlU03XKotS
	 NwsxPTlVxOStqAPJqmS+VruKFBR8octgHZiQNC+67yzL26t3veXLnkp9NKuXdrLeTA
	 6umHKX65SEne9eBqsF9e7AWUkcQJ6XswfzjJ0PybZSYcrFeNmZ145WIWm913r+HmrB
	 BRe+V/VeAUezA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA895CD13D3
	for <ddprobe@lists.linux.dev>; Thu, 30 Apr 2026 16:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177756645369.13263.17736139463489167450.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4750920b244ccb94a5e3f37f8a95f20b275c42b4144ed4adcbbb27021b00b3a4
Date: Thu, 30 Apr 2026 16:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777566453
