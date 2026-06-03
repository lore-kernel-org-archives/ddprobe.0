Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3FCF537C110
	for <ddprobe@lists.linux.dev>; Wed,  3 Jun 2026 09:14:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780478074; cv=none; b=DepMxxsImRB9C5PCI6I1YOnbufdE+vHTSTVuyhKNtBTe6q4P2KE67AauHnIsK+fC3ykxaZ/7j6uqD7EEFsTr5EqH7xAn0tvUyFhzokgLQgtPfvnLBzkfh4NQ6jlLUM8FLZmFi3v0GGhNjc7iUPGlvqAZrIu4Jtch8PnQ03MD8i8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780478074; c=relaxed/simple;
	bh=iPzESg7u1oeJPeCDhjw1vGcwwTjFlPiV54G/HAZnUu8=;
	h=To:Subject:From:Message-Id:Date; b=DuBdC1sFF1eOfo2R2c7g7pgnjE8lPIJBAFwThu0lyzysbweZIvb/t7i7UtCWZ7IdDVdTv7wzpIfBPhZoOMfKLUQtTlJayihf+h8MaXyNBKtqu/g4bV54hyp5HdfiJ+PqCuu9PLm5RlF70Y44yDR0jBInuQDTbVQVeQCOy38Df38=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VMigurMH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VMigurMH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C6ED4C2BCC4
	for <ddprobe@lists.linux.dev>; Wed,  3 Jun 2026 09:14:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780478073;
	bh=iPzESg7u1oeJPeCDhjw1vGcwwTjFlPiV54G/HAZnUu8=;
	h=To:Subject:From:Date:From;
	b=VMigurMHbakiP/g1GVxq0gMvFQZ8Gk4KqqdlUFE0Ev+ddDO7NIBYT+fMS8shXcmvg
	 7sdT5xB2C9Qg427baxEK1KGundXn6qdATaYtMfySGFzXdC70vqkLK4RBWUcZ0eXREO
	 ASe7APxrnC10ZOFNyVVB90RR1yq0fyQGnSMKFA4JrkHqhQFVBeyLoawSiTYT/rQkEf
	 yEU2J7c4L3iBCZ+lmbSDRsKXGgZNL1PvmghsZg/K9Brj6nkTJeXUaHgqBlj9j7YB9G
	 wM0biTbXWHiiV74FMIfuvpqsP+41gv+eGcYuXnTX78z+PbMw1ufPdx0v5tflxklocc
	 QN5+z+Iwqdgfw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFBB2CD6E64
	for <ddprobe@lists.linux.dev>; Wed,  3 Jun 2026 09:14:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178047807370.27696.5758830955673907581.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dea87b21f5b0f31bf6f1e96ac525fd87424fca71d7d072889c7745072cb0db20
Date: Wed, 03 Jun 2026 09:14:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780478073
