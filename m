Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 157B81C84D0
	for <ddprobe@lists.linux.dev>; Mon,  6 Oct 2025 08:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759738194; cv=none; b=Pr+n+r88FG2XyTgI2NYvcNNR6HN1gS17qt/OVyz5Xlpp98ypWAP21w+o9F64CN6HpnR37/TYgjtKqHuMLC5soKO0UCsdV4MBg775FYYZPrq17z3gL5I7I9pESybikhCY2YwPmDjvRzyxoR1j8/HH46w18oZBUZAhpCRM3xH5ElU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759738194; c=relaxed/simple;
	bh=OHe/uDI8sfFx1Uo5HbWid/RNH3jvllFFX0ropPBoga0=;
	h=To:Subject:From:Message-Id:Date; b=LG20KB3wW3/3ICPpZXRbVTyHdFu0v7pXusVaMGYUcaVfPXDxiqwuPqbDaf6R0GbYMubKAWYLv9wLtZvsHPzDX7PqH8x8L4om8anbWz/pveTT38SkloSTpcqNlFKwGD3bD0W9JWRiUUcwAWR3iaVoSsO1Qet5OMX6QuC20zeVPXs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CcjrKq0D; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CcjrKq0D"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A40ABC4CEF5
	for <ddprobe@lists.linux.dev>; Mon,  6 Oct 2025 08:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759738193;
	bh=OHe/uDI8sfFx1Uo5HbWid/RNH3jvllFFX0ropPBoga0=;
	h=To:Subject:From:Date:From;
	b=CcjrKq0DEPaonalSzK0dnfM0LeVpBr5eO0EGDRcr1MqSg8/0n9+1C4w64LQAEmu22
	 8tV9w2kEb8imD2g8kxaM6KF68Adp6o8XqhGplxu0M0TgODBUKYBD8rNizZgDskrkFR
	 AbGv9sIIyPVW8BHP4qg+JKmz5J6UNCezh8tAbSnzP+QZN4sFrhNyWMiYy272Kr/bF6
	 FhcOoPfIkWVxXq3Wt1OmeZpeTBCwaXnMrNYFw5b5CFxFHVYq968t2FyDIfdRyg1nAt
	 BE5G97OokrAU0pXRcJApOHmOBNlYNuATPbgXyK6fZUZ4rHTB2JxejY+NQiT6A7DzDo
	 LPzFjk4P/fmug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90175CAC5B8
	for <ddprobe@lists.linux.dev>; Mon,  6 Oct 2025 08:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175973819358.10131.625419361208562314.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6f220a569c523e3e59a10c532271e733c43b16645882d96533969d8ac071d168
Date: Mon, 06 Oct 2025 08:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759738193
