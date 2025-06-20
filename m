Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C58719E98C
	for <ddprobe@lists.linux.dev>; Fri, 20 Jun 2025 21:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750456195; cv=none; b=dP3Z1Tj1QS/VefgFa4QGBtflSlvvG9/ETGzAxlIFyXK+QU4TYi12xF50XiGXWEv1YaFDrx1hyXLkKPRJuMQIf9fPUqfkGD4Q3QrW3Yg0CfbF1R0G3CILz3H4VVe5eLvNBZTs/bHHcJGW/HluUfTVp6csuKZUhR7FHFPWn5it9Nk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750456195; c=relaxed/simple;
	bh=OfSoZO9zuPDYqFTBc4B2dtVxSIoD7jRS3pZfFVqn0xo=;
	h=To:Subject:From:Message-Id:Date; b=GM3/cvtiGxxBvGBWiZSOZhZfodIZYksSZmS88DQqgp85zK2eBQo83yu+76h8Dydc9n10V5z3NOZQu0fB9xDWknAO1U+DQKQ8oPt46u3ztjWsrN9QzzcYM+cAhvKYaRLXeyEIrB3vOXZtMLNx/NyBFt43ovjeb5t5+2NI996x2Co=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DBrC40TD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DBrC40TD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4678C4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 20 Jun 2025 21:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750456193;
	bh=OfSoZO9zuPDYqFTBc4B2dtVxSIoD7jRS3pZfFVqn0xo=;
	h=To:Subject:From:Date:From;
	b=DBrC40TDzEpk4eFIjQcXlUnP8/vZqhkgxq+Gb+P/ZnWniuag9GlC0Ak5ty185m1K8
	 YlOfjeP5YnJCUc3w+aRfOqUhl95gg6PmueupT3u+YxIzftvrNGTZWAXWo5onfvdeHx
	 o4ax+QW+/XoQbJWrY8Ske5pKQPAkYXTuNzTRIJJi5b0DspYmuLDL6UZCruzd49lk5i
	 vQq55sOXjm2s6asiao5nXjyMiTGZn1stCi5Gp4aatRyZiFo/8C5SrQG1HJmZJHQHuP
	 JJreJ9fqO8pYj/GmDxb4yQH327CgXEK5HifIyozrb4X202XZE+mf08arvofVm0Xtmu
	 eFy2dcnak1zwQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90921C7115C
	for <ddprobe@lists.linux.dev>; Fri, 20 Jun 2025 21:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175045619358.14901.14908368461531179043.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bea4224f6c8ce58e766b03efce87c92d3e4b10602040f5ef955bb2cfdbf5d5cb
Date: Fri, 20 Jun 2025 21:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750456193
