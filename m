Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A11853112C1
	for <ddprobe@lists.linux.dev>; Fri, 21 Nov 2025 23:21:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763767314; cv=none; b=VvBJIJdPFe3SyaatXVSOMvJK3eGMHvsBedrCGzFkf9l6MWiddQS4AuljlrRr8pCGFywU3DxJ7hAMGPc5FrjSOZF67rDtniIM4FaHjMZMUxHuNgmNIC7XCZ24zKL3IoVwuTnpOphvWp84wq6n39/zbbtH5rFJ5dgYpZYYNUmeIYc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763767314; c=relaxed/simple;
	bh=EabWnSrEWsNSd3tHhxhm+M4gnnmTo2tPKQPD40VfcGQ=;
	h=To:Subject:From:Message-Id:Date; b=L7VcODz9hbDXvEqo5RJ5y6+n/9il/80Juen1b3gpwcPooaSQqmxa9PqbzIk4g/mmoN25DlnBU5ZQZ8Ntii3qw5kTbnUROKSnw9Y6McqfEITX/XHBuV5LWDJvaPn/chvus2DZmw19h1KrrV9daHKSLfu5rPtYQGfqo99YqISs+XY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TQIFoZ4v; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TQIFoZ4v"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2470C4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 21 Nov 2025 23:21:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763767313;
	bh=EabWnSrEWsNSd3tHhxhm+M4gnnmTo2tPKQPD40VfcGQ=;
	h=To:Subject:From:Date:From;
	b=TQIFoZ4vc2OWxRaBc5auA6WFFT2wSF8m9dvgWiWTheyKF7I8jX6tIOWZBkSV80WJY
	 rm8YWEEyyEAFf02OnBc1uk7dhuOYudlLgzyaBcivINxWY5I54T+VzDx2h3aVvaxydM
	 CFvQ2jTput6ugvFCUgqPDx+7IMaMAX9+XDmEVZWiIve8naBsM2bAQUKMA3P6ae73WJ
	 EvrUadNnR8ytB/sAKNByC79A0YTnuuBVQMHEztt/Z1hNCUi7VcJlEoYB6wETR8nGK8
	 rfMdVa/jcOy9wxtNWSIeidUlp/Cxs5tl1fxGwsGL62GOmQd9uEFY8wCB+jQpE2byNe
	 sERU0vqwiEjiQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90D5FCFC512
	for <ddprobe@lists.linux.dev>; Fri, 21 Nov 2025 23:21:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176376731358.2529.5124359134135933594.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e473c2c548babfaa91acd1a5d44fee13436623e0c46454dca1f2d1175675d757
Date: Fri, 21 Nov 2025 23:21:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763767313
