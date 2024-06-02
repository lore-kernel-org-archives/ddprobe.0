Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 536D72B9BE
	for <ddprobe@lists.linux.dev>; Sun,  2 Jun 2024 13:55:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717336523; cv=none; b=nEGWQkKUn8UATlWwwYlJn9g4WDVnZn9GxxFvGT8eC/gHXKcszMGijZSjWDVRPx6qW0j+SMgKBxwnKUIfMvv8AAuVJPvIUr/6DAXX+OcHmvNuItARA9Z6jxojTbgfQ2lHtM9/MGxye4zQJ8G9jGGta1rgpqZjnkdKfzjt0NQrB5A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717336523; c=relaxed/simple;
	bh=4rc/w5DfIy39tu6T8oxkaOfeR2foonnFV2D7kRHR1k4=;
	h=To:Subject:From:Message-Id:Date; b=fZERXbAd2l+PIuLl0fxY5bKlhT7U4gFyf32JVCw2kMmU0RbGdtC21ExZC4K+vJQexaEbCXp9mRg0x51kXB+9V3oNph0xa9JOV2WSH6U9hCMTY6Df6XTvBoZV3cpxtD96H2P8krk+1AxTb+CVVAxiEfoSwwK+1Z3xIfeYZlyOfyk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cxnQ221o; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cxnQ221o"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D748DC2BBFC
	for <ddprobe@lists.linux.dev>; Sun,  2 Jun 2024 13:55:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717336522;
	bh=4rc/w5DfIy39tu6T8oxkaOfeR2foonnFV2D7kRHR1k4=;
	h=To:Subject:From:Date:From;
	b=cxnQ221ovnEEROkh9rjh7gtnE1U88bdFnQYM5hpzZgwUOsTdEJpc3ZzKx7xMPhq0k
	 G80CXu6FnryHD77/5d2clABSAZotOfnd1bVzumcJXoSoYVd8pgzP+vTvqP6j5k5XcZ
	 cLbCAA6zaZg3gjU4ik89YE/vKCYiPfFkCKOuAEnQ2UyI1Ulmep8FpXoA+2kLdRJA44
	 M4csF+QEdII5nYl0zgn6xbVZvFM7R6IT8X5tGjJ/397nM/3eNfNb0SPY7ICkEct2fD
	 /QgfaFUwhURWINSaciWJiZ2r6cJLtQugYl//cedeLv8X+b56zOUCEW3APcWU5AmVKc
	 dnit6LC87Qpgw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C11F4C25B74
	for <ddprobe@lists.linux.dev>; Sun,  2 Jun 2024 13:55:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171733652276.24646.8170930389101020904.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a3b239be1890155b2ee5f562ebcc459f5e27e2d48e7ef771027653242de81db9
Date: Sun, 02 Jun 2024 13:55:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717336522
