Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B6CC45038
	for <ddprobe@lists.linux.dev>; Mon, 28 Jul 2025 00:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753662594; cv=none; b=QwEG/3yhu/X/IGe7LyTcoK4iErtXE8nSTOSKX6qXZ+QDn3zEvYr4/0LYxnTx4dPYUvFw/ozWqQiBA3MJTIpRyXGY8FrxdOL+7I5leqso6Kp89pH74i0tzz4a+8lax6+xC4+fGzTJknezEcbRblLQyr8n6W1UbsgM/LsciQUnKgY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753662594; c=relaxed/simple;
	bh=f7D7WAdRZh17foVFLVPfOAUPWKoHohk1lXXDkYL76ic=;
	h=To:Subject:From:Message-Id:Date; b=GV/WQMlMFLjJbKnU+TCvOMH1bkXtvpX27Z47jBPUD6XerLGtB/+123rR3NlgJz5LjW2tTMcVNxtG0hFyi0EtOzUe71LagKDSnm2m6EeJKGU2K8hxj5OvlgPZYbCNiqq9ly8xrkVcy6mVodzPPKqng5j9SeP1QqAldxt6Y/JVv6A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GAwgu3Im; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GAwgu3Im"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A068DC4CEEB
	for <ddprobe@lists.linux.dev>; Mon, 28 Jul 2025 00:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753662593;
	bh=f7D7WAdRZh17foVFLVPfOAUPWKoHohk1lXXDkYL76ic=;
	h=To:Subject:From:Date:From;
	b=GAwgu3ImqEt8vjb5G0gqlYEtmRcVjYAu7NFKz82ACDJCQruu4Y5XfPf6JFPfJxY2M
	 MnFx0/DkiKXcIKbm4HkCCKo/3+iR+qWPeuMXdLOXuiDH6KB30Nqh3lz6I6ANqFyV1h
	 y6ocX3qVkuVzD+5fQ/KLWOdw+xISHmTtZsco+IInwRbbI++aVkOMTe8345VIlZ3uy1
	 p/MO2+DqYHUF0oauh3p5yigQp+kB7lf2iL5sq+5psQeRw2QMj+cgkKKWqz3xafTFKd
	 dftaQi1YH0A8kttqbhLLbTH87JHDJwwtNgikXvM5kKkT4/XkIEb0GFynP6B2lkk1+2
	 IjlJYdhI/XmxA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F4F6C87FCE
	for <ddprobe@lists.linux.dev>; Mon, 28 Jul 2025 00:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175366259357.3462.12112193793966627947.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 47670ab53350c23a58056b388bb570e3c0d2c9ebb0b085d7f0f6fdcc0327a18e
Date: Mon, 28 Jul 2025 00:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753662593
