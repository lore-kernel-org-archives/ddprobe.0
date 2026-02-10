Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24A273195E8
	for <ddprobe@lists.linux.dev>; Tue, 10 Feb 2026 11:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770723234; cv=none; b=OhQWVH2T98tDDa3pbNIT61xZ/SEM7xx5PeVJw7T7c2zNTvoZdAQn4eNvoD5D5Wuw+wjXxPB5NYaWFXwWy6aLiOhqtTHRS8/88hZJdKYOjJU5fDytxwWeBPNyLrSbV0XLVXfzANUW7YC3QLfACO8F8Aq46QON2s6LNUT+B17YztY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770723234; c=relaxed/simple;
	bh=m/BbBl6OVNIDbk0OuRqpWguoDL9cVAGzNJ4bjk/FYZs=;
	h=To:Subject:From:Message-Id:Date; b=lUqDCiz9tz/uMKsH4PS4VQckT6I+CxmVk2W1W9iNEF1doZczAx01NCWwqg53WIySCLin0Obzujb+FLqjJvCtNLQABbB6cnd3LvqMVjlowC5yl1GnwCV8xPgqdsK2QiDFsT4CgyPmO+TaqHuK6SpS7qMb7SvYV8dAR9dzDzM2uBs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QItexJnH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QItexJnH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7FE3C116C6
	for <ddprobe@lists.linux.dev>; Tue, 10 Feb 2026 11:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770723233;
	bh=m/BbBl6OVNIDbk0OuRqpWguoDL9cVAGzNJ4bjk/FYZs=;
	h=To:Subject:From:Date:From;
	b=QItexJnHkTzJd/Uratd4Cv09dlLOxBUtORilyfI4nsxj2MB/SMoukAT1OxJ5l8lEZ
	 JpOOglSuBExWnd8CEXQlDwXproKaUQZvu9dxzBS/jMTH5a4EFg7gaHpeyffaOED6lM
	 bD+IhsMeCr47He/Z7bIqhxwr9xuhVET/6YufPSKhUyTPYKKVbuwQdccYihKwIPlLYY
	 dg4eabnp7a+e4qx5x4Xe25NjnGR6owqExlkS43vM/VATvc9XWN1C5qQ4ybM7ADy4if
	 mDblcnCd8DCFcmrO2ZU17aAwB6TEaWbhGiYGzqBEOaQwSGfAMjf+Qs491D8T8HdrGA
	 2DPUzTWFVrnKA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A83AEA3F3A
	for <ddprobe@lists.linux.dev>; Tue, 10 Feb 2026 11:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177072323362.32190.6247650794397356212.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8a96a41ee4b88f7b86c8005e1109bfb7850142eb05b97444c25855a7cdf818a3
Date: Tue, 10 Feb 2026 11:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770723233
