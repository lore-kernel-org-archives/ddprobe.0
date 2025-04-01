Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4CBD09461
	for <ddprobe@lists.linux.dev>; Tue,  1 Apr 2025 17:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743529194; cv=none; b=I3mvIT7JL20928z6aY09b3KzIAIWgjUW4zd2v+BXfA8XTMJManwZUf0lVnUNSSqCVF26Tsa8NoNnjKiKTgVJXMDvg2OwI1fVGk4wmd56tbDnBK6BiNGTa1yeaQt5nl/Lha+6AobI/1Jbce6pqPIC0J26gGEs7crHs4bkqXWFKNs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743529194; c=relaxed/simple;
	bh=EguXR+YwsDbFVw3Zjv9PEp9yvw4wY8QYJCIURaIGp48=;
	h=To:Subject:From:Message-Id:Date; b=OAb8etAaywSRux/PRIQQloLR/Y3EelBb9s9ND5fsXggZoP7vwtDz9/OmVK0KgU+Iq5dISvJvdg7RwBgw1y7qD30lrzz7/aZ/WdDVm2aQh/z8R9rErCBD1IMpZkwF84Ti/phvJsxo/IVPJMYfwx1oDj8XH77HeSGkFV+FT20JOYc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Tb7+UVeS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Tb7+UVeS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AFD41C4CEE4
	for <ddprobe@lists.linux.dev>; Tue,  1 Apr 2025 17:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743529193;
	bh=EguXR+YwsDbFVw3Zjv9PEp9yvw4wY8QYJCIURaIGp48=;
	h=To:Subject:From:Date:From;
	b=Tb7+UVeS864mQkQESGcp24/ceBKvifcTwnO1KwuyiD6mmvglXKYNaCpZ81nB7qNr4
	 glPzhkR2/vwuXDpupbAp9Q1ML0UEsqR1ijAx38FhkCzd6vTA4wfdeqcRCLI4EQaBiH
	 HkzJHSOmP1r61c2Da5xN7M0ryVeni2UDeVmBHglMyUJhIUsHCItRw9WzgFHtXzyRTV
	 ZX+COx56w1j8T33BDLP9nbK25PIOlwaBxwxMcjo9VonZXtYJa32QKVbZjgNZIL9h+D
	 8c3ivsH0HqizkK7WNkU7X18AQ43sxTpYiKSt9o5quJ1Z/Se1uQMr6vY5WNk/KqHmBA
	 oYe0Olu3JIz3w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B2CFC36010
	for <ddprobe@lists.linux.dev>; Tue,  1 Apr 2025 17:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174352919362.10253.5636427530866659607.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5e2efe6e92a197170f2ea441cdf9af21e47878e2b635d5ccb08927a58666cfcc
Date: Tue, 01 Apr 2025 17:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743529193
