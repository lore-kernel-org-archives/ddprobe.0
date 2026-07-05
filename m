Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 384CC3815CC
	for <ddprobe@lists.linux.dev>; Sun,  5 Jul 2026 14:08:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783260514; cv=none; b=dBj+Q6ly7p8OKm88m11vV3XfNpvPYSJEUmfqKg+fLvDnW/gPqJn2WQHIrg3jmq0Oc7qDcO7KHplBsZp3APWjNY6B9TA9BopqefTj5VzRM3AJQap0BYTko2SRWQCtuI9CtCNUW8ZbIGnrFkjmsJu5wimBS0mw8vBeb5GwzwvWeyY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783260514; c=relaxed/simple;
	bh=FmSc+r0N2hpY9UZeY0g/W/Qq5fEpst9uIYU3fMK8QVU=;
	h=To:Subject:From:Message-Id:Date; b=FgB1+05oJ4B4zfWQs6NKAn4S9tnZpUw66E0SKFOOGYJPC7a1hSQOU/lEmHe5U1n3/6E8ZS2K+qyO9HDsFiR3Q6dmqCUyrYQPv4hDcfBr2y83MNA49bRBg7p+ejoLmH1VmTXLRgoF8GLhULyE3/bPqyMDX8wvmbFzXUDx9hSGOBI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=W2TOrTeZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="W2TOrTeZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF479C2BCB8
	for <ddprobe@lists.linux.dev>; Sun,  5 Jul 2026 14:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783260513;
	bh=FmSc+r0N2hpY9UZeY0g/W/Qq5fEpst9uIYU3fMK8QVU=;
	h=To:Subject:From:Date:From;
	b=W2TOrTeZQBC5GCke/nZEyABVEswCo+ZW010UuTL7BFseuv/DPpZupXAzPJa2DfPbs
	 fOQTZ7v6kteuiUwXsb3WuyYBKdwBsF0qrF/oMlef6GjliOovdPTEqmlbrURD/iq2z4
	 BojK2n3vCDkCdG6JBlA4anaOJ+lW4mf/UAOdijVGTJQbrfaKB4lW4R53Ss/N19bsx7
	 wjLXrz75rk0LlRX+YDF7q2u3ByVwULGhNY2nh4Oz6ctT6vm0kktdQ4pIWwWmz9tifL
	 qusdh+DKASUhP9A2nS7HYEGiI/cTEbdMA6KNqwtGYQlAlsRErQ2WEUKKKwEVSyDBcO
	 TjJF/2IgmbWmA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB352C43458
	for <ddprobe@lists.linux.dev>; Sun,  5 Jul 2026 14:08:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178326051368.30347.9442926438695630360.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e4cd0e8867830091b823fe5eaeaab8721a9f3b0130bd8b5ba25d8959a894145b
Date: Sun, 05 Jul 2026 14:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783260513
