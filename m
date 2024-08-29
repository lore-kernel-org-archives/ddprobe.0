Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DE291BA28A
	for <ddprobe@lists.linux.dev>; Thu, 29 Aug 2024 21:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724967954; cv=none; b=U8XA7oYjsNQDnwiMCS0x5ch0JikoZTqQ+7aarzdGF8c7oZSWCp+tj4JguftLzKYDj9una065EmAso6cAryIFU+qn1yylDhZWfd7wbv9ZXLVj9B14tB8YsS9n3r6wTrQnREd3MMjGc9ZcEicCbJsgsMXUsa5Vt14Npz2q88cF0hQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724967954; c=relaxed/simple;
	bh=afvV8/ahIcrxchvgffrXm5rXgInU9dkg8oP4jJo0FFM=;
	h=To:Subject:From:Message-Id:Date; b=YhCCNcJCnQDo9mpZm24GziJ5rDPWn0tNwo4c3N7BPDSmyOEuyEu4m6g95r7I8EFB8XfU5JKjB/f1y6moRexYEyV+NviloZFAsawmT5COjjqP0rEN7jE7DOExhoQ9jnBbDRq0cYkP0MkyI8To4bN4XSEejVsMhRVasXgPIIoPjTo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=INso/fd0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="INso/fd0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0CCEC4CEC1
	for <ddprobe@lists.linux.dev>; Thu, 29 Aug 2024 21:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724967953;
	bh=afvV8/ahIcrxchvgffrXm5rXgInU9dkg8oP4jJo0FFM=;
	h=To:Subject:From:Date:From;
	b=INso/fd0zZWzt9IcM0+PqBOJWurnKuSVAXpyfrT18LNab2K7quPd58BlkkbvpANul
	 BCg8mE11B9dGSeA8kgghV6gfEFeNP/8oNGvw4jYGhRVNGdWtxqF5AXU3eKp7V0Xc8d
	 Yv1XcyvxPMIwphby/wax6hcajfLANtFU3quoyZOxtgxJbktXLHAxT/P7TvYz7ooo8J
	 cxbgZ7lixJq5yS1VVuSA+a3Z+oCyNFFXp+RPWgtMtP8TKI9qXAVXv5M6Ls8MXI4UIf
	 GBpXG/bKKeqOToDD5QmUUeDxpwsb6JShSrYIDGy6tS4TR17WtkXwvynNvA/FGQVFyX
	 Z2Ihh45VVHNWw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 964A2CA0EC0
	for <ddprobe@lists.linux.dev>; Thu, 29 Aug 2024 21:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172496795360.5718.9280736496624618782.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9400c192f1bd19e035d30fa6c8e50d5c3f9aea49a1cf1ea3d91a76f7808a8497
Date: Thu, 29 Aug 2024 21:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724967953
