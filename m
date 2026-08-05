Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42D4C437868
	for <ddprobe@lists.linux.dev>; Wed,  5 Aug 2026 11:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785930634; cv=none; b=p2fJW0MiFgEP2/CKH+aL8SVfDhkEf8ArNO3rwsW5yEDDUu6Ct8+HKuMEQMTRV8w3rwNaxxol9/P2AG+DdPdUoM3fe8G1jSLpIyooifUh0Bcu/yy265AJSJ3EDxDsLUKMSD+PaEpN0nP+09TuRkEKDN9BJXKSwpQJpNh3dzEdAsc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785930634; c=relaxed/simple;
	bh=QFn/dO0cSgxmMJXaf3uaZ29F9eXfIvmU9Z5yJXN+7AE=;
	h=To:Subject:From:Message-Id:Date; b=AdARJrG7612ja1TMKSyaBNpCpy4C0dJf2xJ1oKIhfH7hZCPxgFRyfB0LlseAehHsiYDhUTlHhvCNcYIvAfPYi9lnH77lj3yOL4y3WN844MfkoIRUpzWvdukTNZOPARw+iIMe5z47cPm0UQ23a2J3l+Q1pumeSR4maNxmsUqbXXU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=chKvcnqE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="chKvcnqE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6909C2BCB9
	for <ddprobe@lists.linux.dev>; Wed,  5 Aug 2026 11:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785930633;
	bh=QFn/dO0cSgxmMJXaf3uaZ29F9eXfIvmU9Z5yJXN+7AE=;
	h=To:Subject:From:Date:From;
	b=chKvcnqEYhR0Haa9wNpSTckNkLVtAJTbErPmthH8SB7Qvu4BWiMar//gWg85Q4KjY
	 1UN3F/oqMtaMjAR2pylFsoYRIxbad89YtsuoI082hdHBjqjOGBkqS4Op5Ia5oGTRPy
	 uIEWbYq9lTMyYtC79rXfoFbqouAHLVWuTOtJ5jRxF29LQAqjho0ffOldfrG7U39+sy
	 wnjfmXXExpA0w5wB9d2JHyjVyvJ7fgMTGtSoVjSDDNgix+I37F7y+BO9Rp3qqFjR4k
	 lekXT0z9OJzKdNMQ8kreiHKP/iKcqTyXU4eBilOc5GKKRs0Zxlez7Nc5OvLws36lne
	 nPmy8m963UHdA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1B8AC55174
	for <ddprobe@lists.linux.dev>; Wed,  5 Aug 2026 11:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178593063371.32490.17457117188325479297.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4069c0f4be8f50f3ff987229e1eadb654a0b9dd8a75d46019d6f4fe08d7b3b47
Date: Wed, 05 Aug 2026 11:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785930633
