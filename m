Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 57BFFA927
	for <ddprobe@lists.linux.dev>; Sun, 13 Apr 2025 02:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744510794; cv=none; b=CWk/7ll2ZsPq5no9wAaqheukt/ZxwevObBpf7WAZerD91kxeHYrf04YODaKfvQNuamCXomv+Uem6Tm9GIj29vlm3C/zQkkfiREPPsi9fvPy/06pYNr013Xof23UX0zKxYT8lNmfeX8ke6ujH1DtbQJ6DNwU9miNPxDJ8HgQlJ40=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744510794; c=relaxed/simple;
	bh=GjB2xsLL+fhuakwHgP/ut5Etm89utg1ikTFGa4ZwYjw=;
	h=To:Subject:From:Message-Id:Date; b=VeP6VI+9I7cGGcCzAxYbyuNbyhTmXPUvVbCLXcFyDuNLT/egSCOPbrsft1IChIX68L+ixqxuP985p5vZlmw1yAEx9yA/DqmYhoNC1T804XnG8EQyfml7iqZV3jyky2GN8QHt3Yii5XjBhs61n+WyutYhMI0yNw4EkiMnW2xb2WA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=K96vSjjC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="K96vSjjC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B5E5AC4CEE3
	for <ddprobe@lists.linux.dev>; Sun, 13 Apr 2025 02:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744510793;
	bh=GjB2xsLL+fhuakwHgP/ut5Etm89utg1ikTFGa4ZwYjw=;
	h=To:Subject:From:Date:From;
	b=K96vSjjC7f6jN28GUgoGQheNq88rCG21qM6b+T8DM1rm2EwQeC5VUZf4qThIj1BB9
	 dkHLOSBLbJTtH4fGleZnFlJcJUuNwWR+JWq/79ifwtvlJA036w2IDzKlOKLwVmVJkv
	 3Z5M/QlEA0Cnl3jFCxGIayMua2HLnQxhTknlcHAE7xCSg92pvXS8vTd3xymIO3yg3N
	 4E3/GtWURKkgN3HBIT5Zaz1hcPfsdHQDc2yo9oTZf7aXk4iQ0UMQQJap4O8eqK6DVn
	 85kr1f5SS/cXb+upZx8TSX0gmkRMXgqNyVHvvUs8d7XKqpITamqRlJ8wH29tw7QA+J
	 XW6Ng0WJu0Eog==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A0368C369AB
	for <ddprobe@lists.linux.dev>; Sun, 13 Apr 2025 02:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174451079362.31075.13788910357434366349.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 89a2c244ea72e73e170c03c13bfa00d60d76d822ebfecc63d4544b69922569a5
Date: Sun, 13 Apr 2025 02:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744510793
