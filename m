Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 364E725B1D2
	for <ddprobe@lists.linux.dev>; Sun,  7 Sep 2025 10:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757242794; cv=none; b=NiPErb7ffDMXa0P5Femy4qV86KCVEWscDqoTD0KZBZ7CHaSaKjtiNANUlFVPMixW3i3KECBAtrJz9s2l2bPmN7jpuDl5fCCS1KYZfoHM97xCtwR20S52xDAD4cosOUJ6OEpzF86L18T4uvhEXP/8WIbPSgQierIooIESJGCAXo4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757242794; c=relaxed/simple;
	bh=YHGV5XSAExkP6nfWhR/PxjFMcJzvRLLMRpQjZ3LzCII=;
	h=To:Subject:From:Message-Id:Date; b=D28dRkKyv75jgbP6+B+3Z84aOHjtbDiFEjL+iZcFkxMk805T3fEd2vs5s8sJx79LaI/OUzJP1Qxd6ooMfX55guH4eAgkyUTqMWpQhfZzuVNirZPZ6S93EydmyuPfSUXvFgGTR+BQNUitS49eAbQoVV88jaAJyLxtm9pHz3j3P60=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=C4/QJLye; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="C4/QJLye"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F9ADC4CEF0
	for <ddprobe@lists.linux.dev>; Sun,  7 Sep 2025 10:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757242793;
	bh=YHGV5XSAExkP6nfWhR/PxjFMcJzvRLLMRpQjZ3LzCII=;
	h=To:Subject:From:Date:From;
	b=C4/QJLyeYUu9ELfnNulIz6ePOUxH80xcGwMTKoNqn3TO5FQbXPOs1lRrIYW0H9pAA
	 7pz6ljCY1aL9JlpauOmVkODwubHZtH9lnTSpBgkfgVYogfV8JBaWeUEopEN84JXdxh
	 Q/0QAtY7yTxnzMxQiIDGEsV1jYcvjP/PyqliFUdqRBpCs1faC1JU54RveykG30EsqJ
	 axyLufsiTt0N0oE82vGiBy9CpRsnSLv/duPnXKobLj4FrAhLE0+T9HUxvngVxj1FgS
	 x49E4ONuy+zinfX2vUn9MJ48MjjZsUQn/ApPisrwknt+EvSPqwe9Qqc+i8kiusjeV1
	 kYlSskbolJB+A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8ECF0CA1017
	for <ddprobe@lists.linux.dev>; Sun,  7 Sep 2025 10:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175724279357.3019.8707298466473697762.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a448cb85a94829dc905a48446b7ea3aa870237711a0c56a84c228c5ccc58f8be
Date: Sun, 07 Sep 2025 10:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757242793
