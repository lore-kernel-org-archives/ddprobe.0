Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 69C8327453
	for <ddprobe@lists.linux.dev>; Sun, 23 Jun 2024 07:12:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719126743; cv=none; b=T7EDO0qVQfyGJ2PBbkDsBHutvSy3F53RXt3UExlDgN7CHweuGdQRhaS9WNGsDbpRYwbGrbmW2KD9jxlkkrtcuiWw9IBoFBgvgd9X9TuMOUE/bxvjHOoWRrXo3YQqo1Fns19kgRzstKqIqqvmMX5i2/cWUr6uYOliOG2kMxPJeNo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719126743; c=relaxed/simple;
	bh=rImgb7145qm9J7u8J9Oe5xh4aAL3T3jdghu/IzSERio=;
	h=To:Subject:From:Message-Id:Date; b=pRXycvSafTDg9E2gpuXd7cceTCNs6dapji9Quq3aW7eGuhO1j+kTiJ4QSE0MWnGVB7DKNIQ1XeYpab4Y2fIOyYL2GLpEzNHRDIZkgaZAK8QHYmpG+mP1mHyQT7CH/6h3JbHup2LMwskhqEoUrA3F3aN5XfOL1bxZAtw2AKKryMo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tkyEgiCc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tkyEgiCc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E0429C32786
	for <ddprobe@lists.linux.dev>; Sun, 23 Jun 2024 07:12:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719126742;
	bh=rImgb7145qm9J7u8J9Oe5xh4aAL3T3jdghu/IzSERio=;
	h=To:Subject:From:Date:From;
	b=tkyEgiCcDGpQ2RVrMHCkRlCFeWfDjkXGEVY816YchN/4iidYu5zzBlbvEnqgZtW/F
	 aYecZESZ5wf14SlOb16HQqxbr2LyhVV8+EuOqTHIRVjGlmZXGndMIOpjPYdGocT1CQ
	 ceTA9vUPfEx3sms9DPSrtOBZmmcuJvA6RlCY9Olk2XHegTV8n1IYO6EJBBjMQOG65a
	 W+KlG3d1KqExx4GlzUIXYK7stl8yJCIsenoKWnAJsTAJ034lkzAjdhGJNGk0ovRVGB
	 Kli9DFxYR/tJGwTvqhVfoqgT9keXUzTqDAx8jNmugrQ8h/SsGfe6HmmHlUGMovoA9e
	 /IQjMkYnShSTw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CA0DEC27C4F
	for <ddprobe@lists.linux.dev>; Sun, 23 Jun 2024 07:12:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171912674278.29800.4112715388249430623.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 34b0e57e4a435b6e19f5ce9b2d9efd794bd873a081ea0bac3d6fe32aa1a9a905
Date: Sun, 23 Jun 2024 07:12:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719126742
