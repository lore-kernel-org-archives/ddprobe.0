Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9A1BB32AAB7
	for <ddprobe@lists.linux.dev>; Fri, 23 Jan 2026 03:03:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769137435; cv=none; b=bYYQ24SbAc/X5DzIofLQi/yOJzSXbGlQqKc4TFbJnxrVQNS+NJmsCtde7KatWkOYNjjnbaQXa/9lnsvwQqXfYLG7bfobXdR52Hq3IQfW17YxMxCcJZRRZdeJCylLP1zmpHcks/kK4epCAuiir+XlLW4tyTyksOVyBoTHWVw8/rY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769137435; c=relaxed/simple;
	bh=BDgTen71jj/QmZMGIJz5+11oKlkgD3c2eVMU6UEK2qY=;
	h=To:Subject:From:Message-Id:Date; b=b2cV2brEdeg+BLyqL0FM+JzuWYqUbBps2pbc+i84qAxh2D/pCmVKE3DoPgsPFxvdg8yYu0GtEA8mFghdffaAIY0WMzMKofMlqg4oLxJkOWkHhjnk8RmoWWMoVmpn2DCYk3AuSJF3MMtRkjkaIsuYIGsMdolr+cEAjc3aowAHoyY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=u2t6xglQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="u2t6xglQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A213EC116C6
	for <ddprobe@lists.linux.dev>; Fri, 23 Jan 2026 03:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769137433;
	bh=BDgTen71jj/QmZMGIJz5+11oKlkgD3c2eVMU6UEK2qY=;
	h=To:Subject:From:Date:From;
	b=u2t6xglQ97zdFCZpXzaz1f/IQfx2vQ9a2rCbLzn/uYvsJ9fkqeUIMYepqitUXAliq
	 d4952NSZsPqrwZuPllSLgZ2JS27RQ1guq1Nnpndhc/rtQkCK+UlJmZ/5Yz/BH6FhAu
	 H6F53tpa0OoMrmnK2nrWhmrEsQW6KQeGGJ0LmFfc7u6J1z/L5urAFywWNTG6WiLwOF
	 +kxP1ZDDMLbXnpVQexI0yr3JcRLhB1rMqbh6sQMC8+oXlJyW0b7qG+f2LvhDUmnSgk
	 6ymDxUOMUJ8CP6HNAF3kxXKWkwy/7x7TCkXZxEYAt8iZVnPpgLuXZZrBT11ebwptay
	 6p1mHZRHZGkvg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90BACD6CFB0
	for <ddprobe@lists.linux.dev>; Fri, 23 Jan 2026 03:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176913743358.6155.9495976649977650032.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b16383feba087e55de80b80031af05fdd559426d43d55188997e7f6da5c65341
Date: Fri, 23 Jan 2026 03:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769137433
