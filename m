Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2EC0A279327
	for <ddprobe@lists.linux.dev>; Mon, 15 Sep 2025 07:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757920194; cv=none; b=s7QdoJTUGV4n18v/R4lMgugx2TkBO4arkF1wAPUogF+UEmf2NnRMMqMvHHXdjXoWW3da4gnAdBYc9UEPcuH/tutVIAIleMtwDeJbwh/4c/snBCJaulok9KeLr+4NHcXfrgSHWX7FU3mhwzoIfMCVyNht0TFceZ+0L7GyC7B8blc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757920194; c=relaxed/simple;
	bh=j4pZqF6S/qDrNvvIHu+u1pmNDko6xsb+s4mfIPsrWRk=;
	h=To:Subject:From:Message-Id:Date; b=t4usg8YRzNd2RM50nHr1nzcsoxAd2dJ8bcNo1FhaswOk5HunVQW+liUEJLBvDv/IKOUbxamardWg3Nf5FNAj8UlXC5XE3ES4rmHeXZMl3+HlJ3GDE0jNjgo3bJzrM9xvg617u+3XOA7NpaziIWsq9NCjgeUwVairsMG0Nxm8Od0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jLO0qR4D; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jLO0qR4D"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5A98C4CEF1
	for <ddprobe@lists.linux.dev>; Mon, 15 Sep 2025 07:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757920193;
	bh=j4pZqF6S/qDrNvvIHu+u1pmNDko6xsb+s4mfIPsrWRk=;
	h=To:Subject:From:Date:From;
	b=jLO0qR4DLCCaoRUL65QppWdzk8OdoOkcWFrmJnwAWkzsOINsK2F2fPVziX4t8zTs5
	 sfvKrM7xKI37UDxZjruFn8l4w501++XUw2tjQFKUPQtxNwuIxf5SR7RsdpZFSkLX3+
	 3aZise5a2bAoF7g3XU4FehpaZlaFX+OImgnIggj7GodF9kcald6bw96OvYyQNacO41
	 gTLGCcrVlTlZxwp2eBa9V+TCKxNxYc+B6oIpAlHggxGERUMYp94PQNMqXuepk9xh9l
	 BUZR3RWz32kabF1ShzM+V791lHXJCCw7EqQnLiBnJDBhGxjEMJAJcVD2cO0zLOcL2l
	 KBUywX0Ia6ylw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91582CA101F
	for <ddprobe@lists.linux.dev>; Mon, 15 Sep 2025 07:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175792019357.9962.33914718866383660.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 54d96ae4b783c6d7895776c0702cd1ad545d795a640e7a86f6d933152ae7adfc
Date: Mon, 15 Sep 2025 07:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757920193
