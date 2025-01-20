Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 580C41531E9
	for <ddprobe@lists.linux.dev>; Mon, 20 Jan 2025 18:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737397554; cv=none; b=DNr+6Otc6mCUeT7dDvV4ErgEmorDdq3k/qndDTZo1gNvlUolr9UqPKnuqGz7+2Fj1EChkAeu27GxcrFzA2aVbTDclBwe9+St9ZsYMOcDNnqoyhEmDYv1WqTBtOkg1ohyEQhwYE6hB0/idFZnOgg5ASjkQubVm6Tn0X1fa3xCvh0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737397554; c=relaxed/simple;
	bh=QISKz+B12PJQoBkZqYRKaTcHR/iHdDB3KrZ7/5cvrGw=;
	h=To:Subject:From:Message-Id:Date; b=MV3iFitQsERgUuTKJGpZ6JeNsdGtHb/TjBsXtg5nVD2vlloNpUm9LbjdIXN/e6z0uUncj3OcgDdbvsUUFFuSbowPOXkoKx42AmWC0dzXqa2ivWd//IHPtKwa8o9iM6I6jsRRnFKD7MXOvPOJ2I4ii7IafIn2tp3EXX4cExFrfqc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oVGEwdEt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oVGEwdEt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B02B6C4CEDD
	for <ddprobe@lists.linux.dev>; Mon, 20 Jan 2025 18:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737397553;
	bh=QISKz+B12PJQoBkZqYRKaTcHR/iHdDB3KrZ7/5cvrGw=;
	h=To:Subject:From:Date:From;
	b=oVGEwdEt8shjmbZRwUUW4K+EzSUywGJp9/tnXWcxJnMaKv+jRvdoGxqE2NYt0Repr
	 owDBSRXlddGPGQ9+TRr4MNHGC2BcxDQW1ISE4Z150poGsZUKrbzN0mj7BSK5CX2wih
	 FaSB5ZWKeQ3aGrUm6Qc1N4wive17JPX0b5ijatP4GEOwt5aK4Ht2ESA5IPdslxaL+y
	 wQ2iaVvkBT/Nmi/nH7HK0/mk96YDYz1qZjDVvPaVjXLMec3tIS+5Zr6cjgZ5lUfS6v
	 tQQV+9X31JCUtKBymtIqT68beSllL1IE99nOVqJgtS2FZQjXJ7kv0cegg3oIJJBfr+
	 k6QYXNhrU58Ig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96B85C02181
	for <ddprobe@lists.linux.dev>; Mon, 20 Jan 2025 18:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173739755358.31072.3547086205751034806.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aa2dff0d97d95ed7af968bdc869a392be09bc1dbfbc0d59cc00c3f765994cc11
Date: Mon, 20 Jan 2025 18:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737397553
