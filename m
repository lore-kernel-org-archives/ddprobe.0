Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5945F28F5
	for <ddprobe@lists.linux.dev>; Sun, 30 Aug 2026 03:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788060034; cv=none; b=dTb7FNwQnD9Nci5Im2bQoxTxRcghgFeeIH7jgU5kCevMwZ9POyv/bpWvurecAukJE0/XwO3o7SmIbtLkK2zvnIshfkvlnGKcKg+/JgtwIw6TKw/Cz2vAlj2vNazcP5r1wFxjtCEAxt2FaZqpkh+jrMbdzNgdXA6u0eXxDGql+Ek=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788060034; c=relaxed/simple;
	bh=ykE6wbmFapYI21uoLtnFFQwr8T+KXYAFa94bI6+fSNw=;
	h=To:Subject:From:Message-Id:Date; b=RN4B7JWkOlMhpKS3X/8RgnF/sqEvVc6BJqIoSSYWBGIpXgqAOaFJzD/J97zgS888kA/10bDWFr5AT6GPzcozRa2eDXtO0oWiHb+3kbm9BqZVwS7SH3ljy7DEjHESLdCp7Ylkt2JPuZ9ZrtWBvsScoG0f1OSyD6A1ZURepF04TUw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rc41UKyo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rc41UKyo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D60B2C2BCF7
	for <ddprobe@lists.linux.dev>; Sun, 30 Aug 2026 03:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788060033;
	bh=ykE6wbmFapYI21uoLtnFFQwr8T+KXYAFa94bI6+fSNw=;
	h=To:Subject:From:Date:From;
	b=rc41UKyo0DldI3zDeovq/tK9ZE72piKyy4S4/Z1kSZ/OU9tWfkJqLPfq6KjclxP0/
	 YdcS8l9bGmHeKlF8r4DHyLoDXBPwHGokxt1AXxwfLKatnJdK93Wd7rkQZXuKddV6TA
	 7g+IYrZbdgCRQKIrYhMxvD3GoJgp2pK6YJ0XTMv/xBHEc4sqWnU63jjh6BH2M7t1um
	 9rtQO3DdRsPh9ED3p2zNGm7IMJd9yZs+RvmrcH1k/rnAfAET1YomSKL1hpvhj3I912
	 plLqdEj1rVRL01O2hr/CMl00wY/3afCpzSNFQLK0mWix2iubsLsAhaIozf2XaJJLE0
	 Fow1QO2yXJ+Cg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE3A0C61DD9
	for <ddprobe@lists.linux.dev>; Sun, 30 Aug 2026 03:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178806003368.32473.11970524552968006346.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 00819fbe38fa86f62fc56cfa7aa5da0cc513ff7e9e7dab1326c8b6634e798a12
Date: Sun, 30 Aug 2026 03:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788060033
