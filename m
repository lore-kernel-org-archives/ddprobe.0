Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 12629389101
	for <ddprobe@lists.linux.dev>; Fri, 10 Apr 2026 07:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775806654; cv=none; b=P/5kAz4FedRS0PBknu2LWyDXzsGxZlYZFd4aiezpETTf6GpowTJxlHvZqT/EoYF9z88eO5vviqmCz06pRxpxmhiyl+4th59mPbNZyjmdcnxSFNtxjxZPAA7YfIfH6ek+1jTWLZAZep2aN74ehp8mbOtMA37FqCrT5b/sgxTj/ts=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775806654; c=relaxed/simple;
	bh=vsrDBss9gDMMwMWgfVB6bqp0BH631imlyUFYcB1qNEE=;
	h=To:Subject:From:Message-Id:Date; b=t1/b6/5RE52M2yPYTkasR9nLzzmuWzaPRbH+qpjv+n17EGGI/ADLpzQJx7W7HLGEMuCCk0tPsHsctBmfvzKV8WijMuYNOnnNriL9POrVvdZGco9Hti6rQk5ruERK0HvNGEkycbZEl93Jh6wDS6c3nzDN7iJVs1LgDJEf2VBDf8E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=q80YejOw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="q80YejOw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B84FBC19421
	for <ddprobe@lists.linux.dev>; Fri, 10 Apr 2026 07:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775806653;
	bh=vsrDBss9gDMMwMWgfVB6bqp0BH631imlyUFYcB1qNEE=;
	h=To:Subject:From:Date:From;
	b=q80YejOwo4nKRDx7vTmr7oS/kRO/nz7vTiC/+50qi8XqEXjb1RAsc7G1znh8ZJxYs
	 dHPsS9MHC15q6XoP8UpwNOe6kAYsgD+Rya9/lgngdlBZmokR+vNQaB37QHQ4QOqRDZ
	 molNiOmtUSB3gggsy49/LH7GCnMs6S4wgmiRu8BJXNLD65iegFIWScisXlRQDsPo4J
	 EuzPCzecao0Mc/FCyXhS/dQ4zE+kzKq4S2TEAJAm3z7ImcmbevA0NRwpIQbNa5Hahl
	 OSaHtcMBWyd3nn3ZaKgH2YQqOrCazWq+zp2lqrg5IkLmn0ytACMC5IwVr4UugWmzTP
	 gD1B3EyLSxGAg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA309E99049
	for <ddprobe@lists.linux.dev>; Fri, 10 Apr 2026 07:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177580665368.8356.5751003048975652419.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c34765951150893bf51c9207f1e8b6e25813a34604139627d2ba3cafdbc35ca3
Date: Fri, 10 Apr 2026 07:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775806653
