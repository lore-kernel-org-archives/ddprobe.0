Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D2A372629D
	for <ddprobe@lists.linux.dev>; Wed, 26 Mar 2025 08:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742976593; cv=none; b=PnUk+PE+vUrMZBjOQ/Zbdi6bRcMUU0sT35OK5xK3x8HI+0bTwGzOL6+q9NUMscmalcvQuUJx1jFNuTBQNz6UfAuvpTQZD+tPC1be0jKtASkdbnY9J8QhJsTgOD3F0zDYGH3W7Y4QvPjif3dQGzRiEVsenlK2jvBGvkIrwCxUbeo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742976593; c=relaxed/simple;
	bh=UWfW9CKE0N9IoerNtt58XHtjRZ9xWcZ823FqxEt9Igs=;
	h=To:Subject:From:Message-Id:Date; b=WEJ+W4DpI6ax4U9zL1Nc+8GJoVA9MqouTioMZAiRBhuWM6i13XG8K1VKVC39VRx22abn/oTGPtg5VwqG9jKo+MzxGskrKox7uZLgAB/qZqNNEUK0XfuZ1yCf8yhuaR85HVUDEh5/3pbVvAdYudKlKKIh5vfKjRzBgEsjwb2hVEs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=J1cJ2cPF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="J1cJ2cPF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADFE0C4CEE2
	for <ddprobe@lists.linux.dev>; Wed, 26 Mar 2025 08:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742976593;
	bh=UWfW9CKE0N9IoerNtt58XHtjRZ9xWcZ823FqxEt9Igs=;
	h=To:Subject:From:Date:From;
	b=J1cJ2cPFc521mRL2baSyFBZwLZwEWTyuQYG7PikxE0sUXLvvCPPT8glp/rKgkARhS
	 FA1RJIeMa+A5SrpAg9aghBhYXOzFY7SpaK/PlAESGRE/qy7Ps6nTFK+uH8WJ1sHMbm
	 IPLjMPa6LfUYFe4EjEzDP7pt03AwMImTMZtJEJlfhM2SQh0vmQ515t9vBaF7fPwcUe
	 wmOqtQICzEo+OmUKhzrdkqoyMtUeUkS769bjPGibBxfSU/pMMl1kOLwTgTFlXRI2Lx
	 Dv5TtKrrAo6mzoizmyN5ojSXLuPav4TzbYhR4JqPcPUCyfS1rH6npLLDOXniaH8UC4
	 qDByF1DLIbJfQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A30FC36008
	for <ddprobe@lists.linux.dev>; Wed, 26 Mar 2025 08:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174297659362.2510.390885367090419423.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: abc4aef7f1e7b183f5a1b7c70fede838a5be0ed601c4f3dd70ba47752dac79c3
Date: Wed, 26 Mar 2025 08:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742976593
