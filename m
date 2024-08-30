Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C490EEB7
	for <ddprobe@lists.linux.dev>; Fri, 30 Aug 2024 03:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724990154; cv=none; b=VgqNn6qtIBjn6BSofG90kSYeooEsncXJjOhTiwoyhC3z8De0T2Ld+a1kffJ1LZjqJJDGeGLCEzm2yOnqnL3O1MfFBMDsaGKL6bgtFlR415VnAoVBcA0cCA8/z3TXZtC4LlH0thBOpDbQTLXGoJKeC8ye1Ug1NL2HVy6cRrqPC8E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724990154; c=relaxed/simple;
	bh=xIRctSGDr78138RbOPJmE3j9eQWPAizT0Lw9S1DX12c=;
	h=To:Subject:From:Message-Id:Date; b=Cot2mXNclYEpxvZIwUUySUSSwD914nd6BJ9AfOsJb7W5NffIfcWOmPnt/cNiQEvngqz2EGbTWJKMNLqiC4TGJwitY9jhofwhL+QPz8/aF6xzWofxcoRyJBGg4GgmxVtU9iozg30ffc4YqL6A916BiicsUug9PFmz+3UZqxgfvC8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CC8o+Ppx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CC8o+Ppx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF848C4CEC4
	for <ddprobe@lists.linux.dev>; Fri, 30 Aug 2024 03:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724990153;
	bh=xIRctSGDr78138RbOPJmE3j9eQWPAizT0Lw9S1DX12c=;
	h=To:Subject:From:Date:From;
	b=CC8o+PpxqUEdtnu8mN0qtRE0XIpag5dYLhrIcH8tp2uoScU49+UNOjNyGg0CmeUz0
	 EXmbH7hxV7wi5Y7bhxSQcnDJ0mkL1QJuChqPAjvhtRvVta1qjbOFlgWa7hdpXvqzD4
	 Sy70UySCkC4Yi0Eo/P/nLs8Iv2bdBjRrMTxY1JYZesZgbt9KfbRTejj4FFEbIdco7y
	 rl9hrH2CoZJaDw2qzRs2JVfBv4/chBEqzcqQVTUTI7mh4JRE+4UCG3jZYbKFxBn7kF
	 Zaw9mXQUCxculs2T1VANxdGdHcZtZ9Q+K5YNa03rLsTHZ+LPJnoJmlosFRsRZV0Uto
	 PFjmJJvdr0bvQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9FF48CA0ED4
	for <ddprobe@lists.linux.dev>; Fri, 30 Aug 2024 03:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172499015364.15757.14627336055688843024.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e1bb74e9e571b6243b8a8b8a5fc24ba6e843da90c7d3ba8b23b4b5ade078c8e8
Date: Fri, 30 Aug 2024 03:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724990153
