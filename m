Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C541224D6
	for <ddprobe@lists.linux.dev>; Mon,  1 Sep 2025 02:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756694394; cv=none; b=QUZE/3g3pZYQsnDDr7LFAJe6ho+v1Gvm+f0moVXk24NEiPtNBiEyborQyd09kls5eVFdMyUUUyr+LLWk03Ld/RmhJixpqPJJbZSjjT58GfweY18mqjKZFBe6h0OpKHzyWLd2aEcF+1MVplOakM17qCtE5whyk5Pgy1OlolDlNWI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756694394; c=relaxed/simple;
	bh=E1gbvSDobD0jV7mMmaOxTy6uxvrzQ9ig4I5XVDBnBYM=;
	h=To:Subject:From:Message-Id:Date; b=Frje26EOaOvYR3vN8gBIoYldd0chPnZx5GaVpYt21ZNqVvayLyBUaf5ac3siPbxRz8+Z3WbdNA0CYbkaDuNr3cK6nb+crR0HbvGDZco4vnrFahLqMtGkOfnKSKlIUbZ57tBAH5mfzCgtwMgoi6Q6iQ42amQHUsuohtTFvfJSvys=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=THXl8pch; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="THXl8pch"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A55D4C4CEED
	for <ddprobe@lists.linux.dev>; Mon,  1 Sep 2025 02:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756694393;
	bh=E1gbvSDobD0jV7mMmaOxTy6uxvrzQ9ig4I5XVDBnBYM=;
	h=To:Subject:From:Date:From;
	b=THXl8pchZBzbkC9mIVOND5hpTBvI4/qQXwVHQVGfs13tJLYlj5hgUFOM89B1a2Gt+
	 Va9pI8ZS/ew71wgfX9JC0wDQ4yk88Mam1QnVj35iV7hjQPlCzokMxkj7wxFW8uswj4
	 FT9i00VBJ7vJdaGaxZ+hYnmoBL7vjSiKbuq47B5/DNGPHidN6C5Hrkch3iNYnhy9on
	 WW2jJOQwHz0Z8roiEKg3OKJhTj+aAKRHk5IW6awtRtBEe3jQ0q0u0ismcxqq+6vMDA
	 kZbMas1k3fqWUWAwQem8tELa95qwXx9/p/J3lwFGlN+vneojUcMJL9B7bQ2MetHcdZ
	 4Ga+2nI4icNww==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90B5ECA0FF2
	for <ddprobe@lists.linux.dev>; Mon,  1 Sep 2025 02:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175669439357.29250.11683402718591990451.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 47a680f9ad5089ceaff1b9f4aa183789ee1ac1e67b37821845fcc99111444b6c
Date: Mon, 01 Sep 2025 02:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756694393
