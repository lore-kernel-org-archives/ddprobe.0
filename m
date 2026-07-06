Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2EB4E430306
	for <ddprobe@lists.linux.dev>; Mon,  6 Jul 2026 15:58:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783353514; cv=none; b=HKfIIuRsU3xplLQx4pmyN3W70DQg5Svl5Ew3ahOsiqnp9C+BzDNu9MmEQpJLdDFKeRWEhfBg7h4nmto/56vvVpRes47/bVhENExH1R4lRie2rjBQYq/vj/iSlew6WdlCOfABjd1gqhG6eJm2PFHWHqISJDLRrl2t6DTOIM195V4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783353514; c=relaxed/simple;
	bh=VC8luuf4nNhbhnWnzN78oTYlurJ2XD6jgsyUkTUf3t0=;
	h=To:Subject:From:Message-Id:Date; b=Mt2gv69VxuEwcdSASZqTpbyUUzy5I0Rb0XGBQJk8KvfFu7lLXb9jv0coF4bA6wTBoP+W/NFx8H7nRn6eUeLTGBnqAA1eVA+HTC8LZ4K1yhUt4s8NxtzTf0fVpE+MGhsxUfVAowlSJt1fS2KMf29zIgRz2UWUkAGtZJWJYwfCob4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jkpa9xaa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jkpa9xaa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C9C97C2BCB8
	for <ddprobe@lists.linux.dev>; Mon,  6 Jul 2026 15:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783353513;
	bh=VC8luuf4nNhbhnWnzN78oTYlurJ2XD6jgsyUkTUf3t0=;
	h=To:Subject:From:Date:From;
	b=jkpa9xaaLxJFLRFZZa5gV2Jia/2A8lKUFfr8/YXpiF5wbvbw0nT2wFNlDheKyr6j0
	 RDfzWcbqlODRLYcvWhMvXbUMmVNJA9ie8WE1SFz0s+cohr1wDAbFhF4PUuxG9xB0hp
	 uye/FU5aWlq0lZcTxhnkRbWQNZK5oAXXWvx+W5ctv589EJ7dnefgPSdS6vPsQYOdSt
	 CkWl1qW77ncoDzXmldFPPOWrrsTAD8A7uEAGENPyPz0VPLZtfYf1Ql5qwqyeY1M1M4
	 FNitAu8zpfEEyEHOIwUmrJombXp/FGXvLVPCNirAM2yeKDIqxFRDslGKEk6make4/c
	 djw0cD2hzEeYw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9398C43458
	for <ddprobe@lists.linux.dev>; Mon,  6 Jul 2026 15:58:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178335351368.15226.10380570409989100568.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 09a5060ef90de3945562bca270e034c3fb72dd823e732dd420af685270300579
Date: Mon, 06 Jul 2026 15:58:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783353513
