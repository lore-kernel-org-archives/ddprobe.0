Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23E23153598
	for <ddprobe@lists.linux.dev>; Mon, 15 Sep 2025 00:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757895594; cv=none; b=k7+4u7GrFV+3yUoGcFV0nxVFt7K5O6zl6xD2VxD8gBCnjpltcxUSYhkLPy4G3E3ePvN+RdNqlK4aS13525LV1wwPR7QJ3/N5yHS59DOxmS0qe5IiJWoKGKzKBc1mwWbyEhf65jTncLlUcuE0rOLstVIyZ6eglRg0NAZP6ZDh++s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757895594; c=relaxed/simple;
	bh=ptZ1LnwXhhQjwZsh+VrEYqv1BtvS5ZZjZ3TjUDU6mU4=;
	h=To:Subject:From:Message-Id:Date; b=UIUg/3wqIMOLS5G7FZYWM3D86q2w+LmsWnoamzvyBA8o744OSvGq3MFytbijgVlr4iNoUDr1iRACvsnCfg7mYwS6nNEvhwje9tUbZeHmBHLI+5CRKRmucRmtyJN5b9qU8FUQJ9WbSNunTJ2pHqXsKlhcpmK3udtiv/fIbDXQR9o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QyaVXR6y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QyaVXR6y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A35D4C4CEF0
	for <ddprobe@lists.linux.dev>; Mon, 15 Sep 2025 00:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757895593;
	bh=ptZ1LnwXhhQjwZsh+VrEYqv1BtvS5ZZjZ3TjUDU6mU4=;
	h=To:Subject:From:Date:From;
	b=QyaVXR6yJwsCRkD6dL/A0/u7zAG37fNAWjZq2ku7wwY/Cm9GEzB4p6yQpX8zgGYuU
	 3yamDFq3xB0Zdc+0To6HIU0q8auyTtzcDipVWDcmY9GMw8LGaKwbyhpbDpaF41mJz0
	 +eErBU/wWZJGr00aqn0TSXw1pDwuNNjYEwPjys/E1citWX9DFeOGuxWh17v4MIPvxI
	 L+gcZBkQMbyKv7I8WK9bY/dQ1aSawFELSCyBF/IbhrJv1TlxwxOOCLN6mCw5j25S/e
	 jP14XcW+f1oZVXwDLfZXAlSdP18Blg6va1DUQcD4k3zLNM6OHXqi2o5wz00j4TSCTy
	 hxXJgJypSkz5Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9176FCA0EE8
	for <ddprobe@lists.linux.dev>; Mon, 15 Sep 2025 00:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175789559357.15577.11824356800443021724.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9498789a5e53b0c8c5b237e75f7410fb08e27612916c9debecc8ae62a010aa54
Date: Mon, 15 Sep 2025 00:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757895593
