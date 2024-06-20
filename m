Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 494882C694
	for <ddprobe@lists.linux.dev>; Thu, 20 Jun 2024 05:29:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718861363; cv=none; b=DiyTh/QS1uwkCkw2cslZoMtJ0Mg4Qife/Q4NcIz11iF6hbAw/4RXkH2yQqh4E9R3z3Q2xtcoWUcQxUh2ZNhbxruWXVB+x/aNOpbbIrUODk5AJRGVNdM66y0s4JovYN4Zpbbs0MUFnYeP9xui5jjEuVNjy0gkCfb+Wp+HkesXIJI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718861363; c=relaxed/simple;
	bh=A/vYJF9IAvojy8tjMqK08rmMZSQAuwU/zP19TJh8Jm0=;
	h=To:Subject:From:Message-Id:Date; b=jyNqmGk9K2LqWrpT3zA+UY6/xDzTekmxPFVZtWsrAn3Q9x3GxhpThIcNjEsEEW/aAgD2QkgHhvv+STYsUBwlvDalRu8/rYXRE5GkPWFEXuPuIgBFq79l4FT1HtL9OPbGoxHYuGObXwhwQsa4VH6layQOFWrpNyoNxQVUFCWY3hw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IM1kqyug; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IM1kqyug"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2EC4C4AF07
	for <ddprobe@lists.linux.dev>; Thu, 20 Jun 2024 05:29:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718861362;
	bh=A/vYJF9IAvojy8tjMqK08rmMZSQAuwU/zP19TJh8Jm0=;
	h=To:Subject:From:Date:From;
	b=IM1kqyugxZZ3tQvF5HOAkI8OdrPllGV2NBhuqftFZhATFK+QUJocuwFeRV2nWq5NO
	 rEXqyv9SW04EwtSIBSD6lD1k/Wxr2FnKg/Ne7OVrDxK+Fb7gmkaEsJWF5o+7pTKdlL
	 EjkKis51ztyX22DMNDPi29dROfdygH2U6vJSZBFOxjG+TjU6Wbwe9QIPGP4ByyhmH5
	 hO0MmM1jzLvg3ak4Qc4ozKJSwf2D5ez66VdWpj1cbFK0O2H0+3Bym39KnGdH0pORnf
	 HolHLH1B57UVrzgvSdSeZQoetm3UrRDTOiu7aTe5/uHGJx0TXARa5znKD2Sk8c4SB0
	 4UL9f7/ELk/uw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BCD4DC27C79
	for <ddprobe@lists.linux.dev>; Thu, 20 Jun 2024 05:29:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171886136276.3406.9635194514519384801.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 12a028b02f0d4cfcef8f1b89268e8e698792c75808b44863a6ba801dfb0c993d
Date: Thu, 20 Jun 2024 05:29:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718861362
