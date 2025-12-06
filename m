Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 14CF726FA5A
	for <ddprobe@lists.linux.dev>; Sat,  6 Dec 2025 18:32:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765045974; cv=none; b=Vj5ni6X/frAGqdjFip6ca+yAelqCqbEVxaLa+nXGKJrpXzj4TT8D3ltzrKF5vuOiZPWfVtEjhYii4K2dz1lUCMtzHLxfezv75z/9ioBdwGBI3uFyfryT+f/JFgfUxyJycHg1jYLWziivO4Sc7xicQhKItJ4UaRwuKkftw9KdKWA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765045974; c=relaxed/simple;
	bh=0oIBGJ0H8HvguWI3JyvH/CZMGexAgPOw8A6z5Jgfykw=;
	h=To:Subject:From:Message-Id:Date; b=l+1W2WkG8hXXEXv9717eNAVwcb6xeQYFgqwrojvLBSO3JWLFBqimpZAugv/5anjhpQFsWV+3V+AGC80ca9CC9S4Z19ooQRr2YLvygMgHiO4/GJ8EULPLKaMhfvFG211J9lRsT1VszN2pSC7rwn9sPoM2k39fKctoGrsbg+uJDdc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QL5i4+05; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QL5i4+05"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A603BC4CEF5
	for <ddprobe@lists.linux.dev>; Sat,  6 Dec 2025 18:32:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765045973;
	bh=0oIBGJ0H8HvguWI3JyvH/CZMGexAgPOw8A6z5Jgfykw=;
	h=To:Subject:From:Date:From;
	b=QL5i4+05Q9FwriwfNV73WJGn9Lcbx8WJLqiNkcnjewElkzdD1ZbsP+BenFiHL9nxa
	 jLt0f3MgzGx5JvgWf3obRuD8ImC/HKQsYt1/vvUe/DB8uJ6OFA/Zz24Bd5J6sbX/eg
	 dvdzcCT4dBL89Q3+nOf2Ac8Mwe43AfXZOD2bKqcIHWVjsQtDopg41h9alg8etbLei9
	 LDaRt5FW0Z9sJDYZlbL4NIpyHNn/92mVe2u1OcIVzlzasxmzibxtvBip31pc7Gwopb
	 ue192vLkO7TvYvjI9M9YIJI0ZTcQcDMIChpyh43qE0IzqjP9es7Z2I+UK0gXrwQLK0
	 ovzWUIonaykxQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 914F4D3B7DB
	for <ddprobe@lists.linux.dev>; Sat,  6 Dec 2025 18:32:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176504597358.22177.2495917801147360132.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fc3de6f0d6dd702f73a17719c82bf25130ba4918b118a1b147be04146bdd2e9f
Date: Sat, 06 Dec 2025 18:32:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765045973
