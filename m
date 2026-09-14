Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 635CB14AD0D
	for <ddprobe@lists.linux.dev>; Mon, 14 Sep 2026 01:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789349434; cv=none; b=EG9Om2Tvh+B4Uh/856XWYtV7p6fXfSe+yHaUw2hQpOR4YIxVDBIv5X2F71bXko9wAFAe1ZxA3Y3CDFkJGFxpN+1gk6S1okrWkjf8w22ha2oMZbVAFk4E/jnN67KbPyXk4vUeos/REhBzxB7BAUB+Y7hNTJ5q6qbM+HKY0rQm9Zw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789349434; c=relaxed/simple;
	bh=5eARabRR6Btmhs0h5GnEiQhrJA1U8KdSQmdkmRrYeUU=;
	h=To:Subject:From:Message-Id:Date; b=famX+y3ETQTJz8qkMsi37+6ujDXlOc43FT3yZbUo3MUZvnAMs2oY8MccIMoXb2PUIqd/iSdCqcDfYy0lVanxYII/pfOZ6mM+TQdlZkWUebRUeFNhAb2TXUmok93L2p03O3WXVWzcxrs7SUsNwe0uCrAAH6+2j3XkllpaWwxrN80=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AWZdb1mU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AWZdb1mU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DBEA4C2BCC7
	for <ddprobe@lists.linux.dev>; Mon, 14 Sep 2026 01:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789349433;
	bh=5eARabRR6Btmhs0h5GnEiQhrJA1U8KdSQmdkmRrYeUU=;
	h=To:Subject:From:Date:From;
	b=AWZdb1mU6Jwg2ra8QLkIoKIUUcDon7vwU5B1+m7yocCu1KgOQaJkxxYbRJOGGq8Pj
	 QDV27OHe+3fguygCM6czZ/Y5waCROgwL0Sr0ssnX2yKj0OL+gc8pfU9a1aftXBjern
	 59I2ti3reD+olyqlobD4CeMLEmYE8izGxDYoQ5oq3ts7Pywe3dgSfT5mxqN73H1Nbs
	 lFo83Cm1MLX+naN63sU9D2YeuKUfmFD4JsEK25o921vCDjftcbdkLWgN50W43cnZf3
	 4TxVjKrozv4tSfs7yrpeO2+2Mr1+f75XsSoYsiu4tbsDuDw0JTP6BjEve/TDpv+nWx
	 tV6hnRmdR5IRg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC940C88E64
	for <ddprobe@lists.linux.dev>; Mon, 14 Sep 2026 01:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178934943368.31230.15405790912451353258.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c64c3dd7971f6e8322b7ae282610c73812d8ae7610675835711b52997b056ed2
Date: Mon, 14 Sep 2026 01:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789349433
