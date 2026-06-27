Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D1D9253B42
	for <ddprobe@lists.linux.dev>; Sat, 27 Jun 2026 18:58:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782586714; cv=none; b=DGUDn9pp58dfuOSw2zTIoLRzdiK6fYpDFMqjBm2jC4XLtA1qAl8SM7WRAvQP0LOncbIoyeySpk4XCuNbawMK26GjUlVbpeR7k2BsTSF6eC7STwTsOkdDNKbkCxNVmD575TygVqtIlUojlAayGrv9ehfhi3h1wl2r9jkkJ5CgNL4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782586714; c=relaxed/simple;
	bh=P92YDTPWbPgzYF+itRxBWM55wvt65CkqbJsfGaTugOY=;
	h=To:Subject:From:Message-Id:Date; b=V0M333ypoN9QmTt+tJdLg76kyOfyLKo7e1GBAoa5CZ9Sq6m8RbY6yL0YVHLPPaxZxvRsyc3bo3SP1KPaLNiuRbZ6eUyFnIkVWqvJHF/JGFdd/ZE/Ty4lZFhJ7eYJZx8lqh8zTHxqbLVmKgxCmge3l88P+z70zFcO83qH3EOdh1I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nZFDbwDx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nZFDbwDx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3240C2BCB3
	for <ddprobe@lists.linux.dev>; Sat, 27 Jun 2026 18:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782586713;
	bh=P92YDTPWbPgzYF+itRxBWM55wvt65CkqbJsfGaTugOY=;
	h=To:Subject:From:Date:From;
	b=nZFDbwDxymdhyeEizE9ick7HgJiJSNYm8tuN863fROnvLdlAnVaBtgUgX+ylH5tFU
	 lCKrqN5WKjo58v/0hor3dRDRw8bBGRsn4wx4NJJR9VTb4lSTFkcAsBJm8sFfrItu8V
	 29JCI+oc0j8jweYMdvD+wLXBuZRi8RzzbYJCBtXLiHyhd+09sL4L3QeN+c9PBF+ALi
	 Zr0ghYnnMIhvnHH1lqU1UlUZs9NN3qYq4zlV/Q0/SCAvJgpxp/vrdxU0Bm+za/Hzcw
	 DPvRSRfoE/6dPZLQSChQzWZb1dJFZZlpyxgMBWK0jLqVfnVJif9748g+Pp3sghsJtt
	 zC1+RvK1eU42w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B9B81C43458
	for <ddprobe@lists.linux.dev>; Sat, 27 Jun 2026 18:58:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178258671372.25743.13118175771939094211.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 868f51a6d292058108d2ce8c122205eba793e64a9a006e96fa37f6f910aa0994
Date: Sat, 27 Jun 2026 18:58:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782586713
