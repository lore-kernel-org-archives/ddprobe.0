Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DA562D3ED3
	for <ddprobe@lists.linux.dev>; Wed, 20 Aug 2025 20:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755722394; cv=none; b=bzTGdI42dhGhl9GzRibbq8JaWEs3bNEB3xyAosD05YmBv+/f2oXtffd8PhjkNdy62cmtfXTfolyxE8VNy8w0inerLz8jtJI1zUCAFDG06+4vrnng9REPx42iqsD7/VoZYiQDnGgjYwIEXLZK1y8VNLqFx3PAb/v+dqNZwcR0biU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755722394; c=relaxed/simple;
	bh=FpHbw54oRfIgIgcGacXGrxDbpuxuxxxqoxb93R6tJrs=;
	h=To:Subject:From:Message-Id:Date; b=MVjdm+6+hU/c2UN24RdG85OKbvClHBTsdRXQSl8MozSHql9YLrI3EiBfPe5GSfA7Z0Cqb7lJ2S0Uk9bWYtNSTd6QkHIOg/1Mc2wcpOf2AaWh1Ld6pdYMKvADCinDDj/Y26VFfnURmvYZFMVVVl2Ed649yujZXTirqaNxKTQbXxY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YsV5luFg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YsV5luFg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2668C4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 20 Aug 2025 20:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755722393;
	bh=FpHbw54oRfIgIgcGacXGrxDbpuxuxxxqoxb93R6tJrs=;
	h=To:Subject:From:Date:From;
	b=YsV5luFgPUtWpNsu3+o77knxHfY7foVnhgQSGTT4CKPAcdvPJP7JH4/6Jjta3l5mN
	 Qbs6NFjlkU+QvqGYK4W0Lyw9kji1UL4GTGANSMwALrsYJBJC9qpgfVtz0tBuPZCBfZ
	 8Gm5GxwZQJjDDPemTn26pk0IyxOsYz0ubXa/cEmc1PJ0KBUmxS+zwwZrh9hLQkjJEu
	 fwDUAMjq4lpD4I1b4r105E6EwxuxfDMJEh1/yPlnI50o7QhsAtXyy8OAEWciIoabdS
	 tgQIRBenctSsmGIYL8NbiVGJjBNi5VdZY6PR4jBtlrcyKrokM4mnIY1R9oBDw+vg/A
	 rXtxPAIO+0dWQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92AF1CA0EE4
	for <ddprobe@lists.linux.dev>; Wed, 20 Aug 2025 20:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175572239357.26016.12331997483103969718.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: be170ec21a1120b4f6e661234355417ad0f7cdb178736f16903b5854d6d2a0b6
Date: Wed, 20 Aug 2025 20:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755722393
