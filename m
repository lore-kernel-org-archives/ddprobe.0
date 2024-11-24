Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 202A1154C05
	for <ddprobe@lists.linux.dev>; Sun, 24 Nov 2024 10:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732445754; cv=none; b=NJKXwIVcGZw5DGL1eLZ4cwXyF311Flr2HwUTlHie/A6zPbv8AofxDD5odZCWN0HvPbdN+ld0tLiJLY+rg+/VJxZ/QJXVpuxlmF63DbZBEGGQ+PBsAWRy1B26KpCjH2OkNCljgPtVdBlN0FO6Z9CssJdzZ1FAzGDyp1drYKsMnvY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732445754; c=relaxed/simple;
	bh=h9/tK1o63YZijpV6QRP+grexMvNOIzDMJkmPWrK46zs=;
	h=To:Subject:From:Message-Id:Date; b=BKLtS83Z5eUu5vP/MkYHApYwIDNUMMdkcxcBAoBo4SOJGmA+y2nLaGKZBssqi7appBq55uM8u3/H0/UNuKg0de/3xfWbwOHvNcQssh3UBqBjQai9vcFYoek0XgcmKDmcGYbKTPhJCuwV9Gs8meaNB+1uB1uSsp7rhis/ooAtjUY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EeJ/Go9X; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EeJ/Go9X"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A71BDC4CED1
	for <ddprobe@lists.linux.dev>; Sun, 24 Nov 2024 10:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732445753;
	bh=h9/tK1o63YZijpV6QRP+grexMvNOIzDMJkmPWrK46zs=;
	h=To:Subject:From:Date:From;
	b=EeJ/Go9XigC8j2IqVuaK5nmDE8yh/peRCOpLd0C3HjFcFk6X76rkXrY+e+o9ZA0ZX
	 VqDrXn5u0vHZuyvjCbhvdM9Jg+8WlfxaKruU4hBHd/vaSmDrqOQlPZi14MwBnneP7r
	 XZ3Xu0BHMMdAiX3HUnoD0CqwdIjmuHC++4L0BnZ9uvAUHJOojJbvtf+QBsZEvAmLQi
	 tpk+kbP9KijweIyPwXeeijEM9RzS9y6Dn1yBtH41dSDz1Xgve6KHIaYgElFR0wx6ma
	 QClVlsPhUXrek71E8aXPHEXvx+eBshIEkKpxhB6KBiAyaJdXVDdI1OGIzmYz7E106x
	 xFoM9qbJMWarQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 950A6E66894
	for <ddprobe@lists.linux.dev>; Sun, 24 Nov 2024 10:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173244575360.14807.7092179009018195841.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2767e2b7c53e847731d65ad448c9c655ecd09d8505ce06e0849d9d1c80fe0ec1
Date: Sun, 24 Nov 2024 10:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732445753
