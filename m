Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0399F19DFAB
	for <ddprobe@lists.linux.dev>; Sun,  1 Feb 2026 07:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769930634; cv=none; b=T4niRCnMbob08cERs4T5TPjcwTOVyvhl73oDOvSTI24d7dEof06H1IKD0VzV20iL5pKfabxmp8eDm58H9C/BqBgIlxYi88HtbSeV63QOchJMUlDE7I7uaZOkIyj74NmkI1gX0gYScRXCb3bizMc7Wq4iMu9ZwACZNDP0pe/ksNk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769930634; c=relaxed/simple;
	bh=EtXhZf4v7f5iG0wKX02JWyETYmPujC7LY+aIMAtmuYU=;
	h=To:Subject:From:Message-Id:Date; b=u8JX1jTLYmik1K7AQQWeyYsa5ldNtk6UQwNYlPgO0qg7jqV10km0NYdpTGBpu0zjzjFcVam9SEgJiV9iZSvyRDX3WFi8tjK1l6MZMX0e50Vh+aEAiVC0n5bJPjB2MAX6ctiBPeXCc8O2fV6WnPI5jINGAxTJ2RsoZrMIwKvdw9Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=skWB85WF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="skWB85WF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1CACC4CEF7
	for <ddprobe@lists.linux.dev>; Sun,  1 Feb 2026 07:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769930633;
	bh=EtXhZf4v7f5iG0wKX02JWyETYmPujC7LY+aIMAtmuYU=;
	h=To:Subject:From:Date:From;
	b=skWB85WFZatxxTHH6rk18bnkOyBvILd7vyfyiLWrO8lkGY4xy4bGa8czB+MRXovsE
	 mKVHyhCynxdZN8JJdjqutSZqakNrnzx1cs3mnLqMKVtUlZ4Fem5SmxfVsURVkQ9IPG
	 r0jJ+0JQVMMEphAEcoJJDWZgl8s7B8hFls4Knia1DG33djjJQmqcUUn4CLaTb7vfqF
	 MwXKGX1uRxiDyqBFFzi/q+xu6FjgMrPOPXkjnmzsEvHMdEPA2qbnFxn4bpSnibUq/z
	 J50a6+rir7EUgzbYUsZ8B1nh6WqRmGhy/JPn/HhIAGZ3FCUb/u/IHROitDlPd1banp
	 2u4kvg8S7mMBQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F112E7C70D
	for <ddprobe@lists.linux.dev>; Sun,  1 Feb 2026 07:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176993063357.24244.14691670214853106393.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f47d0364b48d1a031660973bd88ba6a8e0895dcb0c09c500a1c2d0645a690a7e
Date: Sun, 01 Feb 2026 07:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769930633
