Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4FA0A1459F7
	for <ddprobe@lists.linux.dev>; Sat, 24 May 2025 04:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748060394; cv=none; b=sQIQjl0wkp09GUXVmh81QHt7OxDCMfZIlsB1ciG4IHpxDgKOXXty0Z+gJiMhOwjsHTezFxxzj+vOdIOyRU6LIf1QcW50JQdTaLGBMqMVZFGLlgzbfUSN5s3wcfi9wGihcD8q5MuKRApuvTqXGMk/mLVII7t/GF29YBFSgNemf6g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748060394; c=relaxed/simple;
	bh=djmabKvhVBLEfr0w6V9FYzs1zYhSd9oLceXWCPYG7lw=;
	h=To:Subject:From:Message-Id:Date; b=trxzBabYPHcSlht+3tHP6cYV3GVEsG/qgPW6BWEeRBDeHHn+GqqtqINoARkgSodK6Iig8qx88xr0aVwJIToJjeHqBH/1YKs6jNCdEpaP/15YMgUejQJ1IMo82jrFITi/Bmj5aEfTxkbvBxf+Kr23kxhfbwd1Z9kCPSmpgshzhFc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZaMvCfF6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZaMvCfF6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1238C4CEE4
	for <ddprobe@lists.linux.dev>; Sat, 24 May 2025 04:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748060393;
	bh=djmabKvhVBLEfr0w6V9FYzs1zYhSd9oLceXWCPYG7lw=;
	h=To:Subject:From:Date:From;
	b=ZaMvCfF6sbtjZaox7qyJZWw11TP47RAk9hu3ieYvcgh+dKKHD+vWJOZXiY8qnD37a
	 VGM+7zobm24DnOw452ZrWTfz4R6nxPUAgNElGvIBi52JnZOpT51fHQYqv1JYo4uCW0
	 HKDQ7Vg30kpoRwTHhheO90ebKhrJi5C68qoPy3MUt9zJEqfwkOu4pCdD2DBgaojarZ
	 3NBxd+P0WI5voT/78Dy7v/3ag+wbaS6p0MITZJp0LTqTSwn+o2/UWmHevRZ/6fnMGR
	 uWg2k6u+adrNoDdqmc15zuufgUB3LLhGZBv/Ei7avGbHQW6ck4ifMqvr/3msWKHr9x
	 gUlwdZmdVUuHA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9ABFDC54E71
	for <ddprobe@lists.linux.dev>; Sat, 24 May 2025 04:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174806039360.32212.11132545965288789236.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bdc0d01977d52e9e1ef518555abc38be744505e9cbc5e3e51950224f7ca42016
Date: Sat, 24 May 2025 04:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748060393
