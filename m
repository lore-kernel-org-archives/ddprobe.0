Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D1491F4285
	for <ddprobe@lists.linux.dev>; Tue,  1 Jul 2025 17:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751392194; cv=none; b=l9xPajUg0seDBSU6wLwuHY39e6SSUMfvijk2+VbglyfL9dv1XGfbzTlFy2gKT1Kx9ouj6mRIbr0afL6bz+YnTUtjm56zCypjuqV3w81HCC02whzwNJNta5TUBRPh/k/0bc8MbYBo4rkad8uHx4HsflHAoWXGfNO9oM7DdUCbEA8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751392194; c=relaxed/simple;
	bh=ihWcHRGwvq67jS0bNLFa9w7hPvhqAib7nnpI0Q7OM2w=;
	h=To:Subject:From:Message-Id:Date; b=XA9+q0nzBz1MS+yWHxnH34wKmLwPSuNHySfmP6t6MM7qjBJgdOVbfvYmZU/p62Rf+HdyvRx8sKY0I2zJVblgCdVY3MxwKKUS4Hnld1vWVvqg8g+SS51ht/Tx1FX4EMLPtSLvdY2Lr1+8XQuE6nDb09tKbLAWVi7vc+1aA873G5Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FFzBsEY2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FFzBsEY2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E5E8C4CEEB
	for <ddprobe@lists.linux.dev>; Tue,  1 Jul 2025 17:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751392193;
	bh=ihWcHRGwvq67jS0bNLFa9w7hPvhqAib7nnpI0Q7OM2w=;
	h=To:Subject:From:Date:From;
	b=FFzBsEY2QMiOl+XrkWs/n+VnBwyLY5hiMGWgbufMsORKHGwEdodDA/h3a7V5cE5ce
	 NVwBixfByBOPMZwzz80u/zDu3HnaLWcgfet5SS4ekmFpIrHDxmLN1fHFOwKNWzr9Q6
	 qhxG8dGRWOIL3JcHW/V/J3kZHRcJ9Iihwo3b3XK/B6kQGgpTSFpQNDeMVIt1NeJNOk
	 9Ptaj1dQRSj2427pQTwIJ1CgvHA+JkJaoRy/IG5h2k5jzgkcJP9Hr8gtYeCnVmAHI3
	 zk9UjOwlO3NEhAKnw5MegEIZ9NLImItZCLs2aXVSNOaL+hJE9D8nsW3BX3VJmNHNpo
	 rEVDLYu4V3pHA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F3CCC83038
	for <ddprobe@lists.linux.dev>; Tue,  1 Jul 2025 17:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175139219357.1131.11808114992580663098.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4b7509d986cef1c5a4b263e27c9e44587a94191871540b949be873a1d203256c
Date: Tue, 01 Jul 2025 17:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751392193
