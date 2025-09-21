Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 269C4282EB
	for <ddprobe@lists.linux.dev>; Sun, 21 Sep 2025 14:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758466794; cv=none; b=F3oEe1Hai63xnwWUmXeuUKDFGvTGiYJvRLLJPzvOMwaejxz8yb37zuzn5f1x8ajcGpceQmnj1F9H9X9UQxQNrsrMoDOnj0L/S5prf58jPsvzUB1KELT+AuyRjC28lNmH0+4jJfhpTkSQCVnl88xulGjrl8QwJH+nJKOfKNmaIjg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758466794; c=relaxed/simple;
	bh=RAgrCrRRDmNWHCjdUCI/sJaEvgupt2FjlkpGJ7qK7Oc=;
	h=To:Subject:From:Message-Id:Date; b=nhSANokaNpUH1wyaG9+/A4xk5sJogR1ACnWxIHQ469UXg871L+fdkLQLThid0FofBEaMHGJGs18AvKR+N5XIcI2Y8sQH14VdXac9D7tRb2OTqkbNcsIZQcSS66nIkd/qJq+sOPIhAVZ1N7hNXHWmSNZm3kIVQri51wYhn2gN7G8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PExgwIeK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PExgwIeK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A788EC4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 21 Sep 2025 14:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758466793;
	bh=RAgrCrRRDmNWHCjdUCI/sJaEvgupt2FjlkpGJ7qK7Oc=;
	h=To:Subject:From:Date:From;
	b=PExgwIeKmKs4PgE5cmhgJwHXe4eflTTn9LXH6WeXXQ7wuxZIjVb9KYUxObU38F7yV
	 Ccshg3A00oB1pq9G4RvbxXASBa11+epWZVcOKAxr0tm2drr9giuzqaTYl+a8pOolf8
	 BiCClQI7edP/f5P3hf+aQuxb2oENR2J2So+NVuNdNQbGmdTijGrUenLCo7OEV9BSwJ
	 DYzZ+gZPTGeDwE2eZ8K7awAohiP0nBAgCdjqOpZRT6VgF/45xDK7jsmUdJ3zocBrGa
	 DwoGGC0ZcA2+Ntleiz1mq3KWVz59hwtbXp53STJM0B8QKz0io7m7KpDcdKxUyCif5+
	 v8ENO3GWyAwNA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 948F0CAC5A7
	for <ddprobe@lists.linux.dev>; Sun, 21 Sep 2025 14:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175846679357.27691.15716754532523219321.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 50d7c89f1b051770ce0ad8bd15ddd8f7cfe4542d74b56d799d96b50f301452b9
Date: Sun, 21 Sep 2025 14:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758466793
