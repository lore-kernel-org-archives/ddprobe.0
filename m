Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1BD45249EE
	for <ddprobe@lists.linux.dev>; Sun,  4 Feb 2024 17:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707068897; cv=none; b=Li5sO/oB871QxlmG7UihlpRgRDQfjN9fTyQuI9AA3KcRN5K+GgeVQcICzY9UXfnNXA333Lhnx6wbZyZdnAwbwROvG7tAieZs6MqcJAv86uMFjVegfpMPWvWqXDsakUhc/aevYTktgW9WDInN917gIo4VdEltCfepbLM3rv5dP6U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707068897; c=relaxed/simple;
	bh=9baLYyEutu8Y90TP0NBpk4cr5dwOOuKnogjAef6aVoM=;
	h=To:Subject:From:Message-Id:Date; b=NqIqyx6FeMtOgglC/lfh2KnRhkbFcEfpY/yr+JccgOP4ZZKpblUt3VeIqtZYd+6DfdmKT9rg50ir40JGtTHPXm8mqhv7/XOaV0wX7l9uU3Xfzf1cKVVr+1mAtDKILOrylLCk0pBplXR9WaHnTae8Fsm57ZQ6LbpXQxK6JK2lY3E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HSAcUoR/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HSAcUoR/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7D48CC433F1
	for <ddprobe@lists.linux.dev>; Sun,  4 Feb 2024 17:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1707068896;
	bh=9baLYyEutu8Y90TP0NBpk4cr5dwOOuKnogjAef6aVoM=;
	h=To:Subject:From:Date:From;
	b=HSAcUoR/c5Ub/ZW70RUwpNDWTrJ8wAM+9LgjxB1cfYudTclsJA0ppovj/5Ly1ieug
	 g6Ncg0l7JUxb1QsChsSEZ/bQEMqbo1WnsSBi13FH4m8JVl9BJLNyWg8qLyLqY6xj7V
	 AwOi3Bpw1zpgbMseoVuutIIhBmnwcTR3euhA9FRIYlxBudDbTbJqtduZnpvc2FjVU2
	 nv22hU97LFuvRPWchDizVkbI/EnETjZt1KkOaMgfUOyKCrCksKFZo3klY9aP/2EWa7
	 cW7PavCMfzrgRfSQhFfWFCAYhINlw+pDbZJDUOapWSVW2ZTigSWLyahBqI7rB3OxB3
	 DpiWlc24LmyKg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 61494C4828F
	for <ddprobe@lists.linux.dev>; Sun,  4 Feb 2024 17:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170706889637.32585.13103210342098159378.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f7cb840e282fe14b92859a7a347509aa3c4cbb973923ed53708a5a534bcc98de
Date: Sun, 04 Feb 2024 17:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1707068896
