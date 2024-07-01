Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 58DBB18EAF
	for <ddprobe@lists.linux.dev>; Mon,  1 Jul 2024 22:05:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719871523; cv=none; b=gfa0vY05b0pPN3lYyaE0QI/rGwGUtPYkrDfByMeChNdz9nApYDm44IMZv6dyA5Eadras2A4YUpr93hZdf9LqZ8BqJ3lF1V19Px+pGhLOp+Uk78zRelJbq1TjSQy1RXfljd33HVgoVGDE1FmAIQlovHlYcL2iFn0CDbmk1rmFlBI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719871523; c=relaxed/simple;
	bh=l85dXNa2I2cLXSThYtY58a5D0lVV47164Fi0lxqTLsM=;
	h=To:Subject:From:Message-Id:Date; b=W15ls2/4oQ2/PPJpQtsSGR17Gh7d0iZkNMWcEAjlzZixKFdX6UFOdJrTnAw5UFQ/Zrx+sPLKqZMz0M7yD3BbnWRrWYgW7QRUJXeJjoLuvudgMXpQCUrMvBZvc7QwTCYrvVDpS5WNI+KqJWMV/i6CSxjLcNbIudBQbjRi9jjW6SM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kcLeeJqO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kcLeeJqO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EA332C116B1
	for <ddprobe@lists.linux.dev>; Mon,  1 Jul 2024 22:05:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719871522;
	bh=l85dXNa2I2cLXSThYtY58a5D0lVV47164Fi0lxqTLsM=;
	h=To:Subject:From:Date:From;
	b=kcLeeJqO+6IpIxIaBelPvKFmFWEjlOD1XhQVRaQLECyKHyK68wpi+B/ul6kPJYJYT
	 GqJDeZcN/1EW65aToG1kDM+IdQlqnF9xg0jRIhX8YrB2RzIsjSzW9phzgGEMe081RF
	 Z4yHvYkDF7GBlvAeWgD4wGii667xLc6g2keefUpBQ4kLcKpihwTkJPAp5WZfkvGGxm
	 rPCuo9Kmk8EtdAhzG3uJLuWFhbzHiJpfmSfry8991AB15ugmPWsqyWpIR6HhtuFG9P
	 LqhFCwgUMGpIGVQzI8Tzilz4EbCSmpFNY+toe9ZXeMgFguXIk1Ieq/fcbLL6mqDgkZ
	 PXGo8l97MolJQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D17F8C2BD09
	for <ddprobe@lists.linux.dev>; Mon,  1 Jul 2024 22:05:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171987152284.25368.11708560126284157254.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 75b8f478183f59cc0f5127bbe814b627f408ff78ad930c931fb5101f45890475
Date: Mon, 01 Jul 2024 22:05:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719871522
