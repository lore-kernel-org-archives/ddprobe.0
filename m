Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1076B4D991B
	for <ddprobe@lists.linux.dev>; Thu,  9 Jul 2026 17:38:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783618714; cv=none; b=elkvDEBU/gkryz0cj2GdpTVKEn3v9u/xJSsMkoUsZG+2+/LQzozw2xiwqKc1HYTmIa1QcALwyB1DxaevDZ89QPLhK51c8DwtMViJkORp2lcOW6b74xM3S9YBfueQkiuzsNVdkLYa+YbxIRyJGq5L8fOu9Jesaj1qHE0b7Q6lv/M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783618714; c=relaxed/simple;
	bh=oxBHYe0XIfT8CCNUpg56S/5GfbM1vNe5cWaGhM2Il7M=;
	h=To:Subject:From:Message-Id:Date; b=DLpHPDb6Q9+gFJDgn2q1pl5HmgOzeuRIoVBovUCgk9PqCnA8goxk4NUbgOoq2H5lD9broTBoTRj6ZMAXdOJGJGZVJS38Ju812UgVXvVbNfwAw8QlQI82OCyzlnDUvPD8HveHPwQVH8J0v33AK/25dYu3zuJUJRDEB3Sn/Ay7mcs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Xtgtt6Qb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Xtgtt6Qb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C75CEC2BCB7
	for <ddprobe@lists.linux.dev>; Thu,  9 Jul 2026 17:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783618713;
	bh=oxBHYe0XIfT8CCNUpg56S/5GfbM1vNe5cWaGhM2Il7M=;
	h=To:Subject:From:Date:From;
	b=Xtgtt6QbsIGepQNjajYTZxW4ZTWTfwc+lEku+XptIOwyQ/t0HKGgBT0KVkvzcDxH5
	 b5C3GFlsstwrswE2gjeYpS2hn9qXmyER6K8CGpqEcb3NLZIQFuWxAoFPvlTcPp4wKW
	 VnzEU2oSSewBNMJ8RPNEpJICf5CPNmJwZkbcOUuB5/7K0feZewnl7KBWjpnPRHxqzd
	 /O52hqK7EzurcWZYNl6CA2zYK1h3Ncj0TVvAY01koGd/bQe+QcqY+FHFON/RgOIGto
	 y3RgWC+l5TNjKn99hutFT8heAwUab3NAIslhS5O3MMysh1vkCS9UdQi6C65rP+w35E
	 01gpmVxPaIlkw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A7B06C43458
	for <ddprobe@lists.linux.dev>; Thu,  9 Jul 2026 17:38:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178361871368.1529.16637365696251463970.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 81be3df4940a62b0585b066abfeea07744eda3be8d8b4ee7142061abf4e39c4c
Date: Thu, 09 Jul 2026 17:38:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783618713
