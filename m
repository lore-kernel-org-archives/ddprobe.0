Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B1183438A6
	for <ddprobe@lists.linux.dev>; Thu, 16 Jul 2026 07:28:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784186914; cv=none; b=RKKUO8w7B6dNSdPpLoleCubyYkR4w+VDtwnx9Q+1OgL7tf4PEkdMFmKo268scmOWHmxlrWDzPbfK22YNp7fvlRqS9aYI61o6w8oHHzlDW6HXzH6t14vFlQWRVUkgsKAH175IqWS4uJ77neP/rhQtXBbEsD4TN36dnRw9QLiRDOU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784186914; c=relaxed/simple;
	bh=WR489N5MpNCU4U4Wg31uWU6Vn8vj2vrYNa6U1BGhr1o=;
	h=To:Subject:From:Message-Id:Date; b=f3CHKG/RSZBZ1hcJuq+VIq+oDBe6YlSAzU6K527zqyvDaITiDL/yzkAr0Nl9f7Nf31ci7NJ64QyzGsQmbw2Ln+n0nCCkgpFEbow1N9EkEclldNvfRd+M4/DoybGcb3UY81PjrwXgfoW7GX7KEMGTFPAsisBV/xiRdHPa5HuxQog=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=abq/myzR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="abq/myzR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2537C19425
	for <ddprobe@lists.linux.dev>; Thu, 16 Jul 2026 07:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784186913;
	bh=WR489N5MpNCU4U4Wg31uWU6Vn8vj2vrYNa6U1BGhr1o=;
	h=To:Subject:From:Date:From;
	b=abq/myzRyL1gG6zAICGil6WosNSKwWuzsi0u+hL/im8otWl9W8e0t0Ol92qBUfPY2
	 JQ75YkIXE9L84W4ls0vVTxUe9JOhRbh8yW3dJJKmYkkjqeuRJEAI1sVFSC+b64nVyU
	 mY2TJo9SSyBQDIg72tr8KXM0IOvY33WOfYa/jLtBIZAKpz9gVsXPzhc/zCLNK4KjgH
	 h4MY+m5qS0U6q/DhKjQ5lIhocOmgGCplnY2qkSCBc/+FDTrtOKNTiosiCeybtHTaII
	 ONqBNmcaQPc/YceOSq390AZZHxzctw8DRqkduaYcVlFKr9hfhy7wwhoRDpwy21Fi7M
	 z4oeQ7WJs/V5g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE80CC44501
	for <ddprobe@lists.linux.dev>; Thu, 16 Jul 2026 07:28:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178418691368.2227.2259571979404199490.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bf9526e2935183db9a2c25dd59fd56d263c0c8b72df37e58ad108ec5fd36d226
Date: Thu, 16 Jul 2026 07:28:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784186913
