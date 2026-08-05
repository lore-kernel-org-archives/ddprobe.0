Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B71A3D565A
	for <ddprobe@lists.linux.dev>; Wed,  5 Aug 2026 21:10:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785964236; cv=none; b=TWJuOgEcSxFqoCRexwikpKS2ZkbpFVr0/Ey/03YCTIMThbuMKfW0oGTmh1EMJN6Kg7Zho1FVgwy1LZMJuCyBp+6lCnuzr0Vc8e7+XbiGyFG1EkT0UVK2GT2F8FTSfYBVR9jJT6ew87+SSb/0AoIQGZzpIGN5tJ8vEbuof23d5cM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785964236; c=relaxed/simple;
	bh=sHOhMi0jYcpb5OYz0Wvhrp4dWib6O6o/f65BenweakU=;
	h=To:Subject:From:Message-Id:Date; b=KlcofGdWwbXhEiJpFyLiJ6Twg9IoatbrNT6UoWviUsSKkVWO/FQLq41Hu4MUYDmcJG8uVeP/gDdwTv1uQKQVopTwgcXQGHTJBlHje38bFNGQAsAssEpG23PkNGqDrn/pzOsKAaM+9p3IB60bATfilfzSmJMzKXXsrq2OvZ2DjpM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FYzT1Gbr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FYzT1Gbr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D551DC19425
	for <ddprobe@lists.linux.dev>; Wed,  5 Aug 2026 21:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785964233;
	bh=sHOhMi0jYcpb5OYz0Wvhrp4dWib6O6o/f65BenweakU=;
	h=To:Subject:From:Date:From;
	b=FYzT1Gbr7hmrkH3RCtS5obXGOg250Mh2uWlu529A3zgSmA/3NPbUMLI10IXppZ6MQ
	 hnHiw2qWGHeAiOj6fK6ss8QJs329SE6rbdn1sfWO1bTvkMh5BLnrL0FmzlPoNFxQX6
	 JW43ZMMQLOls5HYVOlBnI/pnW6ptjAHUIYvIgI4JVun5cXIEQZQN4nXSfJMytfd/o4
	 kW/XEEtfzIPzz5lOgNbLRL9jld0A7qkE23yXA2FGC+0N1KbFr3eY8lvG6vXrj4SuRD
	 VK+8TUlRC3lauBY5f81USolagVxMSZrY+yFWd6MLNnIc1SmYtLZvLYqYNRlZ2LY9k4
	 7XzWZzx8H80XA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B13A2C55ABF
	for <ddprobe@lists.linux.dev>; Wed,  5 Aug 2026 21:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178596423369.22016.15162333020668695480.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f2f89f08e595071c25329ef6e97cbd022e4261a9b80e79ca9273a1908ddab399
Date: Wed, 05 Aug 2026 21:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785964233
