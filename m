Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28E931F875A
	for <ddprobe@lists.linux.dev>; Thu,  1 Jan 2026 21:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767301434; cv=none; b=EYzkUI4HdmylzbIwQWwplVze/qSF+238v1vmhBjWT5TZTxjHnJ1WLtEMeUzVQ3jhHGejFs2QslfSETaUFXh1Xz6cVGB+xH75HYkr9SWtjKDJZkTE5iRbX04ACgotIzZKCzNeKkYw9AHPWh9A6m3cDrzZROgoAIUsHXrN+R6LWCw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767301434; c=relaxed/simple;
	bh=ZB9rsHl0ABq4fxA/0DLgFdDshwGNZRGbq5WBqLLZLjQ=;
	h=To:Subject:From:Message-Id:Date; b=K/tIDVNXuiOub5tZSb0ZUz5qb1YlWSybqUjeGFPMyDGvX/9/of0woSSHmmxLiBYR9ooeQuP8wdnidMnHoi+Kwfb//43qfteUlvZUm3yqZJoLKsumhGvmWZ/aV3nRk5vnGkyOcBlo9UcnH33DRMfLr1gkKuP9qQoZpDUwppxpluk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VEOFZJ5B; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VEOFZJ5B"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A80F2C4CEF7
	for <ddprobe@lists.linux.dev>; Thu,  1 Jan 2026 21:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767301433;
	bh=ZB9rsHl0ABq4fxA/0DLgFdDshwGNZRGbq5WBqLLZLjQ=;
	h=To:Subject:From:Date:From;
	b=VEOFZJ5BGRtrFKbARP5AOicr4TFOm96NJLGYf4kKA62cGM3XDYdPVf3CLgTGk5JGl
	 +sV+hcnS53bdBRBVF5Ppo5TGEa0GmjY0/lTx2yWotNpENjia2myFGUGGyzxDRKYU+4
	 tknT8r1PO3hH4muyxaZO4/EMCy58CbDPZwhznr7mmEsA9/a9+O1Zm0R/Av9wU/Q2MZ
	 jCgr1RBfdAks9ATLbib4GxXOJSHEAZTr6b5AJ4GuxcoI8cnRNIGl7drFUnm6xVtqgt
	 7UOY4WX+jtXcEFe1rAS9T0OmP7tqxjhg0wrpYy1+HIzRfk3u+v8bsb8bo9Y3J3M2n6
	 TWQVrMg7Z1dgg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92C2EEEE25C
	for <ddprobe@lists.linux.dev>; Thu,  1 Jan 2026 21:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176730143358.13777.18437007241805053997.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 75dd8bd617a1b2599b678784b020df8e75af5c7db22e0185a46696d8caf7082e
Date: Thu, 01 Jan 2026 21:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767301433
