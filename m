Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41F4632AAD6
	for <ddprobe@lists.linux.dev>; Wed, 12 Aug 2026 09:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786525234; cv=none; b=HLeJuPXgYxTVCfRv3zvlS22LeZHMDT0Jz89BC6T2tRo3of2/RImdgaUcnRjesEmKjr24VkqeEI8BHjqMv5wE+ebFDUhQU36/YNYWlw7wjM9TbLzyM8fqX7OhraNr8+m6wKMkSfRggPnea17TO3jLAdt+wYtcPpskKvd5EM8LKgY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786525234; c=relaxed/simple;
	bh=9RCZq1dKacMs+EOtwZVeHfIfiP6C+IQG1a/iqlItjqY=;
	h=To:Subject:From:Message-Id:Date; b=rt4mTerIrehV0zIE+mvMLr1qIpkFGW/dco0eNV94ciZutLQEFCGLJEKxuiNEJiMQHnegGDlqqnzPdB5kOAfyUsFpIghttyqKL63NIhow6jg6FstosYdVWuQyla5VczNBrqS8kDnROut0Ey8WnRn6VLGzTBtlU53vie9Yy+leOx0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BZMi5OoQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BZMi5OoQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C98EDC2BCF4
	for <ddprobe@lists.linux.dev>; Wed, 12 Aug 2026 09:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786525233;
	bh=9RCZq1dKacMs+EOtwZVeHfIfiP6C+IQG1a/iqlItjqY=;
	h=To:Subject:From:Date:From;
	b=BZMi5OoQfmS2nmMfVAM1fpEPeXP+81u9gMc+krqbuvsmPPJb5RCLXCIV/auwpUVHh
	 KPr1x2XipTdsiXaUmCrafA0Fma0TC85jpT/A2Jd+oqJkaWeZDyV3tODFk7j2ROm4cd
	 LnS+BrOaxpTXLk3/sHsv/KFNI5ASkxAoxKnuC6GxucQ3lX1CVK+SNO6Ov9g8u7d3jl
	 OK7zRjsVwVF2Cw0vyLhySBmE8B9XEcuCOTRgilqZq5bDk9KMsgfmM0Hvo44P5OVfGm
	 kUeO9s/EVPXg5pSZEpQy0g/gFT1Ruc4SMKsq3+bKkGQ9sMRb6KGeyN7c5BgOQUbk8T
	 g4xb+s+v+/row==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8345C5CFDB
	for <ddprobe@lists.linux.dev>; Wed, 12 Aug 2026 09:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178652523368.446.1322966519180400006.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cdd90ac317de964dad9bc427f8dd527e1b7ca82ff8a1e652fff33af2d8a75826
Date: Wed, 12 Aug 2026 09:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786525233
