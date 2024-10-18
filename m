Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E1C520E307
	for <ddprobe@lists.linux.dev>; Fri, 18 Oct 2024 00:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729211154; cv=none; b=rxZjdESkN6oe+0aUwrKRAucRh8EHTVKN+yYBt75h2Y4xlEB8kI8Z0mvXc4fo8MKrG10CZtiWZosdoLOObFkpuQTmcuDtb/R95mpW47OsOdcI9zqm65cjnXfG3oex/WsIumJksFVDobvz/7L73jvIXHd6UZac1lbGls79u5pSCZY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729211154; c=relaxed/simple;
	bh=Qjsot/4cEANR67sR28lT4K6EX0v6jxuKogV8ZKeldJg=;
	h=To:Subject:From:Message-Id:Date; b=YxuDzb1recXvEuuBZaLoNO9mojQLmBECuOWex+GEWf47EDq0qP8ADhGZqjSQ+qwepe1FOuNefUvYacDp+qyevIAXqEljd++ovK4PJtwgVT/1AD/mdGC/X9KEvhBbi/WFY+G6RqmiwmXEvrheoVmnaumduFvrx8041F7GfB1jc6A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BMm7rHQK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BMm7rHQK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0C51C4CEC3
	for <ddprobe@lists.linux.dev>; Fri, 18 Oct 2024 00:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729211153;
	bh=Qjsot/4cEANR67sR28lT4K6EX0v6jxuKogV8ZKeldJg=;
	h=To:Subject:From:Date:From;
	b=BMm7rHQK+Mv+prBddblT5FMM8YWsyhbnJykPLI+kjtEZTBV6B3vJDxBlQ3sG2Xx1N
	 tyAHUmFC0v1napdxj//Qngx/kPBc3GwDogV2ODMkXhz+rHXANHUNJ8KQW5vniLwmOb
	 juzJ4a53E/fbNg7LxBFEGpJC2+q6drCNuiCgGN3K34nnuAKpUaI0u0a+GGU5AeljrL
	 XLdGKYqF+0x9QfR8ycEsBeiAgK6/VJCK8m+FF3DS6psrv1h/5Wq7LD6EOqXEm+0MCM
	 VN/WH6nSsn519g8btbbn/65wgW6MRyMqiE/kDHCCuV/6HQWaIlSAuQHfsSJ6Hydubn
	 swf77vsTHE7PQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92C12D3C538
	for <ddprobe@lists.linux.dev>; Fri, 18 Oct 2024 00:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172921115358.12432.9197351061233761348.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4ec719ab188dbcbcb9116cb83e58aa953907606477c5a683d2d87143deeefad4
Date: Fri, 18 Oct 2024 00:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1729211153
