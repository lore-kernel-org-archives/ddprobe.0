Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F26D139D05
	for <ddprobe@lists.linux.dev>; Wed, 18 Sep 2024 16:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726676754; cv=none; b=QZvKJRA7cXn8WijejZ51ZMQ4AY9xNNdNxX0fS7JFq7MXRCoxz+PmgJ7m3hk8PNfEPKyiClpjZ6ZxV/yAHrubpDpSTEz46eawvR0bvm/cpyZo1v08NoTF/ygSwWNFD1wh1MV9oi9aMSourWVS0ZxA5JCwveqZZQCjxwcRaxSlBMA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726676754; c=relaxed/simple;
	bh=9OqDC86d8CrEry9kYGsKRzIfQhpE60X0zc/wFOOOcl8=;
	h=To:Subject:From:Message-Id:Date; b=CqhkDRz1pf+mRAPriM70Ahih0b8uAw14ktjncM6EH4WeQuItjK2z7Iu4SD69A4jFfmi1toGoZDQaAnLGxaNNsX1iflssaUs9ypSr+Vm20Yb1wfxESeu7ABURbaEuqhvbmBdvaqGuXbXsDtsREgtTad1A3iTCSFlCXHZ039FPi74=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nSVaeVIx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nSVaeVIx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BF3A0C4CEC2
	for <ddprobe@lists.linux.dev>; Wed, 18 Sep 2024 16:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726676753;
	bh=9OqDC86d8CrEry9kYGsKRzIfQhpE60X0zc/wFOOOcl8=;
	h=To:Subject:From:Date:From;
	b=nSVaeVIxJoq8v9JqBEMG9+TJiXdrOJzai3RKEtG+Pr5FWaV18r+tzIRcLBwhADKRh
	 9j5zYg80oiNeQJle8ivEKmLTVvoFEIWSYBsLMg2Dqg/X22o+JsB7loV5u/a4cYP84g
	 ecIFJoZcpiu0WTZNIlGO5ydMZZ/4aWN5JNqDPJCFFtqkdiTfBuNeTlvX/Q3vnw51xG
	 TaAU+03R5tJV9kg7Nf1fI4W5QFBqkmBP6LqpjIAsJShljaQGlKCiebxB4jY7brdvlW
	 QkEQiNUxhO2nzthw+aJWifKh/8ZEU7rGPQelP0mfCg5k/q6AcNJ+moWgdZJzIsi+0R
	 aznZ+M+cbl26A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A7C03CDD543
	for <ddprobe@lists.linux.dev>; Wed, 18 Sep 2024 16:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172667675367.8036.17845669431378700071.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6927f0b016ae1452b77c0b621bd07ec2dfb2559dc60886be2f2b11188b6bf99f
Date: Wed, 18 Sep 2024 16:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726676753
