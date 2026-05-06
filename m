Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2828835DA46
	for <ddprobe@lists.linux.dev>; Wed,  6 May 2026 08:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778056654; cv=none; b=rNxBQjiV2R8PzpreFKcEjrt2q0ZVQV45hYfjYxhHW7APL+rWPT0A3xOiQ0u1xpCX0/W+M5irSSHSoP80l4Qo5NQgVdfCiO6oY8mMw/UGXFbstPdNpE0kXXaV554FkxYl6ZuMPw7t20CTZ0EkX3U+VBBafd175lM/FESyZcGsdAY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778056654; c=relaxed/simple;
	bh=GUVTydDj16Rhk/A2YPnQeCGkGGYJtNuBHQHMAH/lGSg=;
	h=To:Subject:From:Message-Id:Date; b=rYhB0Gn3BvE35qNzasFCGQkwo1FP0futzrSwsZRZVemL5VcNls8c/Jjx8tBR6OU2kiNgXgv5mc+VQGALHvZfMZdZA76syQa/moGtAQY/XpByblin3bJpGk5V4jaiwCp3QKz0YtchSWKeCoc21fhCs8hLdxevC589VWKG82DP/kw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=r/NzaKTb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="r/NzaKTb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC85AC2BCB8
	for <ddprobe@lists.linux.dev>; Wed,  6 May 2026 08:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778056653;
	bh=GUVTydDj16Rhk/A2YPnQeCGkGGYJtNuBHQHMAH/lGSg=;
	h=To:Subject:From:Date:From;
	b=r/NzaKTbNxCtM0Iqie5WsE1Ut8vJ1Uamw09gaD679M9N6mbi1YrlHSTyhGgcRyi54
	 c0BxvPJaLhyLyQfFbFny2dgwtftvQtr5EbCDXFPK39O42WXKTCg+IFRSADVPElwN0O
	 4OYLCrCi2fRtV4ujf4gl1MUZTOZNM92l+g7JwPkV4C7T/5Gr+xZRFMihrTBSjIgVgV
	 Js5BVWvrUJCEj+7Hto/3pBFEa81T9s6CaVRk5XqbPbkQ5wEZlRl8iVqE7v6UlPan8d
	 1fatvsGvxu/716LD4sLEKhf8sSr86AvLtaAmsLfrvkR9NFFBuIr+F84lAHmNwhWJ6q
	 +USSldHCk77Ng==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE6CFCD342C
	for <ddprobe@lists.linux.dev>; Wed,  6 May 2026 08:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177805665370.1010.5334307748233299422.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b71e8264c57baf2bcb8e707e90dbbb16ae64ef6091d138b5248b60a9aec98a61
Date: Wed, 06 May 2026 08:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778056653
