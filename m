Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4141D41C64
	for <ddprobe@lists.linux.dev>; Wed,  7 May 2025 01:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746582594; cv=none; b=nvbhnmyqVF2OEKJ+zDqUnUcnaXnnbUHtu9H3ItXnuwdMzyTtBQlH/eDG+oti8Qr86ceRbwS/4gO0VQ0Aj7o6nIzCM5p7G5tE1wBzg8rI7+gtRn+N3VfMJZwz0OfRDp0MWjIPzlxsCVeKXKNta40Y4IDJ0knjxkP5TJv/K4rVthA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746582594; c=relaxed/simple;
	bh=Mj5mBK0kP7OvxZ/izLNOPjdkuosUcFEOghkmOUYfMzI=;
	h=To:Subject:From:Message-Id:Date; b=oMc6fRjuB6YfWlLztLDUiqN4u3snGaGFJX+jpdYi7zm5ZzZrlM2yBtIJ5iUJFB/IpdnR24tWiS8zo39sdg6s3gRaIyKM45zeAZO+NSb1rj9NSLQg16puHVDARcMrBhJlux1OBHU/DIdLfxKkAnwoKz3azLkwMuZxSp9jnViAMRQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gKmMgZTQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gKmMgZTQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E054C4CEE4
	for <ddprobe@lists.linux.dev>; Wed,  7 May 2025 01:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746582593;
	bh=Mj5mBK0kP7OvxZ/izLNOPjdkuosUcFEOghkmOUYfMzI=;
	h=To:Subject:From:Date:From;
	b=gKmMgZTQv1RbA+CNrYRrTm9e1fu1YZ+hWgoGKc5+W84Ia3RcQgaxVhlH/OeW7HI8o
	 Dvum5L15ny+KyQy7RDdwJOfqPSJ6U5CWc6bZvtQAPysqLdroFK6lGzhqtHQdJpa7lQ
	 nmKcAJNZloK9P1kuyxIy8UiermSi203IlIpwaBicQCrRvT1ShDaj8WWRxFepuwYids
	 XnafevN+CG/B4qFK19Rm9V31qb2FLLxVy6E8BACzlwU8MQJvCuqbIxNg/6WmfXvUJA
	 NWsc3WqxVxmb9T/9rJ105scIR1DpWsmmd1P79/ocHzdb+BI5RyJFqwd5kWoTxjuNv6
	 KXxSbCLN0Srag==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E7B4C3ABBE
	for <ddprobe@lists.linux.dev>; Wed,  7 May 2025 01:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174658259357.24141.4818067376893365093.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 061e17a78c34484e2a1646dd4200d0f0713e15783d5c20b0afc82cd4700c0074
Date: Wed, 07 May 2025 01:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746582593
