Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30C6E288C0A
	for <ddprobe@lists.linux.dev>; Thu, 10 Jul 2025 08:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752136794; cv=none; b=DCNvWnTa405pgroNrHjLZgfssaRaT2K4x046H8JgAuPlOFur5v8ZWk5XoPKkoOV6o8hQBQbGJkrobXX+pjx1tqEd4agQRG6crtuoBCOwrlAkVwy1Tvah01X63cmPgjWnfsp7RSI4TQzmK4jseCwbYIOcu650fnpOCbINYwbQCIU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752136794; c=relaxed/simple;
	bh=jUYS8CCviB9oDSBDHhUC9IbBWwZ9h+egw8r1vm/1dW4=;
	h=To:Subject:From:Message-Id:Date; b=BhjkyV5t6+MNloJmC1Y609XRISoEnunWeyxyZI5I6c+sbtLp7KK4hl0i0Tyxi7qhrW1kCSUw9rSCTk/RFuwELFr1wurrI7XbgEU79+k0BAHI2iW/UTGEWTXlQxerXDgc0QcLmoI94lp9AeUWTPgSgDzXYXlkMmf2dVsJ+/lBOiw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FSN8EUol; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FSN8EUol"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A33FBC4CEF1
	for <ddprobe@lists.linux.dev>; Thu, 10 Jul 2025 08:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752136793;
	bh=jUYS8CCviB9oDSBDHhUC9IbBWwZ9h+egw8r1vm/1dW4=;
	h=To:Subject:From:Date:From;
	b=FSN8EUol1sdv5HZhQIe2VztAWTLForEjHM8KGjU5l1BeS/1MYgrK4ofLQc2Me8jYH
	 m96NwUExabLxK7hZ3nKr0A/rs5svb2AZ5GFIO/hb0zawovyIutiJuG825NyCVNWKql
	 60QWgChNwvrLhWauikClxIxVtlBNVjXMOsfP03OAib68OOn8fYY/2s6LbVatV0lGqZ
	 nIECxjNB3OT9GBndCzmn7tzi4xL8lzyUO9VQb+eV0QGS9OSSjKXDL59EHY8hago9DN
	 bsKJZGNBfawfOBNkrbburAy7q6vE1R4NtvKJtFX0qgKUB+f4lI5WUKLaWO6VWnFK4r
	 ENpbUEZ44Klyw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91FF6C83F1D
	for <ddprobe@lists.linux.dev>; Thu, 10 Jul 2025 08:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175213679359.20223.5432735743264701816.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 615c34fdb51f65d9605aacfcc910c201798b86c61c450d8b6c5091fe673907c5
Date: Thu, 10 Jul 2025 08:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752136793
