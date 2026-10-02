Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4BA5334388E
	for <ddprobe@lists.linux.dev>; Fri,  2 Oct 2026 23:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790982034; cv=none; b=DPtakP8IiC7ovs2XzG/Kdlag1V/CeWZEibtZCZ/xlweGjJprgiMCwV/btltYnmOQrSCOvuo+6BzCaxUSCIHzgtBRk8/XlSKWdEgTkZ3lCmbvhrY20Q11PaOL5oPMfLetzCczYyzmFKEKgKcm2wcA2rII9bpvtlMWvWv3JJj0wts=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790982034; c=relaxed/simple;
	bh=qIvZ3B2D/4/x0Ksd6tW3J1TXQWm4bXl6kEcjAL10bqA=;
	h=To:Subject:From:Message-Id:Date; b=EXpz0moHLWSseeSTgGhvfyFkAZ7dTpURun2QU1ZbQ6ZCMGx0pZQBWqlvTzHkzVZU/Jgj59SV+oybb9wLa/Q22/edelDg2C3hCjFlz19H7SgC1qj7PdrumHkf+Z5GacndFFmCXX4idMuv+V3LEZtsSx3AbAZ1pzovFN0xZB6rgvc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oa9506yW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oa9506yW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E90E6C2BCF4
	for <ddprobe@lists.linux.dev>; Fri,  2 Oct 2026 23:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790982033;
	bh=qIvZ3B2D/4/x0Ksd6tW3J1TXQWm4bXl6kEcjAL10bqA=;
	h=To:Subject:From:Date:From;
	b=oa9506yWToL9OtTYPX5LOlZtlej70j2N4ymyciaUQtETUVIe1o46YJkXTaFGiiO5v
	 OwOyFQe5w214k5D1Hx5B+BcWjoOI18jgIxoz6t40Z+P5O6DysTfwhsmDkedfEpwpY7
	 G0GIlXN14tzKPqMcUJWXu3WOgIvidXpsF520tj7NFwoQmvr1Zcap0ttKTVmj4T5EWm
	 U+xdxQf25wYS3LAhgb5cbAJRQ16BArzvtt1QGLUpaJ4VEkjEzvbWsv8K0V1QlxO66C
	 oRP+m9o6rDsK43jtdkZ9Q7RfZbeYvJL04GXRWLfdQpOGDYEH6JoTAyWg+9L+yvmy50
	 wdKENFsiqp5NQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A952FCA5FE3
	for <ddprobe@lists.linux.dev>; Fri,  2 Oct 2026 23:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179098203368.17051.6690866968159806820.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ef6a3f9a02c76b1bb5d2000d47e91c525ee92b31192bc005e2f62c435b29d963
Date: Fri, 02 Oct 2026 23:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790982033
