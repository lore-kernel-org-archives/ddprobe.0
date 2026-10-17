Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7BEBE2E736A
	for <ddprobe@lists.linux.dev>; Sat, 17 Oct 2026 05:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792215034; cv=none; b=hHuPrL80h++LMsx+qAGi+4Ok1oSe1dLX4xSz9pGvrl7/2EvUNkAPGvQdgqsYgvXAm1dEVaQRDyTfPBowUr1KJUmCtk+yIC6dNsjH1CcJjGa1VZV9aGIlfEVrCn/ADkxwWMtyhPgrOHGy2pqgAoMWFEJvkl9JSjLgOy0OrRgZaXU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792215034; c=relaxed/simple;
	bh=xnu3jX2z9Q25/NrM3RoQqNR9mZB4CT6WBxiwwe5i9D8=;
	h=To:Subject:From:Message-Id:Date; b=Qe3hsGZpOKKqKiB4/Q3kklS2jMVjnPGFkz66Cgizhy+w+ESdG7+6N365i0ZGsYXJWyo8ZussUYk/+w+P4owc4wzioH6O+K07zMOJKJsTudQu2Gc9JPMA+fgYym/UPFnDfRFqpeLqYI2EjHnxaxuRwPVKSf9jAnGmcj7YcX1hJDI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rmZvAAmC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rmZvAAmC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DAF07C2BCF5
	for <ddprobe@lists.linux.dev>; Sat, 17 Oct 2026 05:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792215033;
	bh=xnu3jX2z9Q25/NrM3RoQqNR9mZB4CT6WBxiwwe5i9D8=;
	h=To:Subject:From:Date:From;
	b=rmZvAAmCuRWBHUvXHBjwTDt+tjggeIgS6Czx4EaLApn1nLiP5h2ubiHK48KlLXHiT
	 pXYuxVAl6PfDLxVnvjoGiHBn3nhBR0ofUPk+SK5GJHNSH5cl13V1kSN3HbA/T4lB9H
	 mM6D3UnlNuI5ZYAw95dP/88nti4WzG2UvH6L9BNTL4XMOkVFsMnnS6bBPddJcHcXGc
	 f+9nXFhBLPvirVEQ21CWe5Ng6Z8Twd0OSLnEtn7OvCzzxObaE1VeSIKKuVjxOavv69
	 mCqDkv1fBvIMoWvTwxDOq+W/rEXepK9UIS7yOIC9MrQd2v7sFf9d2FEv5bCNMH3qxt
	 4iGoODuUMhKYg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B8478CCA462
	for <ddprobe@lists.linux.dev>; Sat, 17 Oct 2026 05:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179221503371.20216.17666387561097359829.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 82d9d56597e25d3543ef08b7f46571110be1a9bee6c948e748aca90642112a6c
Date: Sat, 17 Oct 2026 05:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792215033
