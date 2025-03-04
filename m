Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4AAC326AD9
	for <ddprobe@lists.linux.dev>; Tue,  4 Mar 2025 03:38:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741059534; cv=none; b=QpU24LESzzcjfcz/pVe/JqXTvGZVDg/WTPEAW9i5TTN8mhNA1kZE/nANBMHvSCwAyc/cs5grAmlz5AFwdG6zdopZ1AKPwIwCM0sncD2h0AiuMwVGvXEO6bfCqh7WalX7PpxTgiMRaq3wytcdunbW3dKKgoUZ6TJ6+fupdHSvCxo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741059534; c=relaxed/simple;
	bh=HeSUHsPMcHan4wT/1K4eZIwWW9wiFqcMVK1/qkpW59M=;
	h=To:Subject:From:Message-Id:Date; b=Fr8AjmPxZuNC9zRfPq3rRDfEU8dkYSaWVYD57Xyb8h1QaW67qT03Y4lE8P9t/izdhf4lnqBqxxi92mmbfsj0FbhzU8A3l6pgsolgTJxx4fkSW11SPjrBYWfK9Yq/Icm0vblD6HVolb5lHFrW6hDLDWXboYCuauZiBpPACl6NqN4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KDAbk2Gd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KDAbk2Gd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8E22C4CEE8
	for <ddprobe@lists.linux.dev>; Tue,  4 Mar 2025 03:38:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741059533;
	bh=HeSUHsPMcHan4wT/1K4eZIwWW9wiFqcMVK1/qkpW59M=;
	h=To:Subject:From:Date:From;
	b=KDAbk2GdMA94gcY5eyaE3zq6p4fH/gH1wqRjr+sKUFkKolxlZU0lByCdToOoxsfWm
	 jkb9U/AOuDnP7A273BNcJ1bADIVFNAhM0YVZsqpbZpQU4Hw7geZp/GVink6LcX0yhV
	 x9P/ywrG+l4rJmvhoJlsm3zu3wVtomJmeUL+ci4mFy4OlB8+cjdp61MeWJibihmZr+
	 kv5WDqjXoEUqlKFWFZpBFRSuAhG5WQeL6fyqCubGwn2hSSwZQxrY76/Lc7dJyafCLo
	 nhO5TQNHGf7E0AW2zJZDH9Z1stKmDGOqSHXi2wjSM6ONsloUOgT1PzHxTEf8l7V80B
	 wMYNEh/uS8oyQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A3E61C021B8
	for <ddprobe@lists.linux.dev>; Tue,  4 Mar 2025 03:38:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174105953365.29901.13037523371424356829.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 433e3f65bd1284e8f0ca3beaf0966ce8d792340d5cbc3bf84e4e0c5fbaab70b7
Date: Tue, 04 Mar 2025 03:38:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741059533
