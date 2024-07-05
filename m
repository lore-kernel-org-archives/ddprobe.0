Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5AD2B7E9
	for <ddprobe@lists.linux.dev>; Fri,  5 Jul 2024 00:15:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720138523; cv=none; b=aYA8klHAPRQoHUmnZId1LMXtvjF/zAqwXpfGqDQ8iRZfAFQvi4I2HPjajWiIk+08kUEQ58/+BGNCyJ+x2WC80fAhOtU17vjqehVQpzw6RcDAelLg31gh9SKRUcmxKyras3FP1y7ljMNXaFv6qjJfk1A7zeU3B8PJZ7W/z9vHJJ4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720138523; c=relaxed/simple;
	bh=IYSxlIdc41WCrbTpvcgQkoarOwyv6lHhIXsu/xlOmHA=;
	h=To:Subject:From:Message-Id:Date; b=XB4/05rGZeTlDrOMzvC5lIAp5eVUdq4yV4Fx5/eHnp6ZkQfBZTJtxVHashN+q2u456WLmxwO25Iv3WNe3wrNH8A9xmV0ZzBaANyDQreUX4Q6Y7YFnx8RKtSZ7mIR9+tQMCeklriR9gJc2epAJZ8q5hQf5m9bgOrA/5+obJMjglI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UiEi86JJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UiEi86JJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF2C3C3277B
	for <ddprobe@lists.linux.dev>; Fri,  5 Jul 2024 00:15:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720138522;
	bh=IYSxlIdc41WCrbTpvcgQkoarOwyv6lHhIXsu/xlOmHA=;
	h=To:Subject:From:Date:From;
	b=UiEi86JJ03YQ9fs/ogDOLXzQ6uFnH+iusQEXdfcqAc+3hFqYQ0a2PUqmTRadlji6a
	 9mmPZwEvKOXjiBkNDNiaShZywzpOTD/u+Lal4h0UiDbZ27g2RsscZ0xO2JIP3R1zHS
	 71VpZMOtVKdzKovcKnRGmw79Mp+wtrroiTIyIZdQfenXcQG+5k2azMo4amYB2FQluh
	 fseVn5G4xab5VtRG7RbE9RZnSdtZvdQPKStqHMb6hE/WMlEc4/avn4U7rto5PhRuLk
	 L5LOYjakRZNc8a8C17iZsOhX1LvAoOHmbN5K3Ndu1j48M2Pt2ywZ1k5QKGEl5Uw+on
	 9QgUi6uMz8fRA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BADE4C30653
	for <ddprobe@lists.linux.dev>; Fri,  5 Jul 2024 00:15:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172013852275.27062.9011173802611904158.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8f0ec87dc3914c937680e2fece30ef60c97977f80bce56973f44b98182048d1a
Date: Fri, 05 Jul 2024 00:15:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720138522
