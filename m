Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C81EB3BCD0A
	for <ddprobe@lists.linux.dev>; Thu,  3 Sep 2026 12:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788438034; cv=none; b=ovUnG2lpiPZGHNC8Q5i8qBuuC1cU4f2X3ANwCyhhuIqKxcjJ2tqT7/wV7lf9mSOJLLQNM199vGns9sQAi4T7v9UXJQyK6SBFA6xcPX3jdeCo3Vmsg0U5fnoGV1w5KHM5jJen+VotvjDUVwK5nZkNIXyNsFZeUmaKo8uBNGcU/Gc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788438034; c=relaxed/simple;
	bh=ixIS8X61eRjICmrOwMSI8P4/K+K8qdXItF5pnQNhX7E=;
	h=To:Subject:From:Message-Id:Date; b=QhICaNmLsVS7eEZN/HnOV2aszkv96CNc8d8rlCKayRdzz8eu1La6cLSFUlVuYAGugyVylFJS+cYlBiokM+zQgAoHVD6WxAr1Td47JAcF5HLM1UbpCwrdOfpZ9jAdHiWMxSCSCiySnzQUMnQCV/dpKR558f1EXffSSL2bQlV5OJQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nvQcadCS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nvQcadCS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6217C2BCF5
	for <ddprobe@lists.linux.dev>; Thu,  3 Sep 2026 12:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788438033;
	bh=ixIS8X61eRjICmrOwMSI8P4/K+K8qdXItF5pnQNhX7E=;
	h=To:Subject:From:Date:From;
	b=nvQcadCS8qOGLiAPa3zMZQE6doJ3O3EZLPyc10ZUjuTDQXpDmqOp32gvnR+dINZkR
	 nqtmlrmBqXnPHRjYbCBkjHZGNA0e3r80pQ5dW7rhXOS+SDeaE7/vQxtzZkpPSYNiCV
	 bgx8i/2LhTcaXEU0sERHYH2T+s14fHuy3j9fQ7Vf1MklgN2jEAL0fKrNN7C1htNs+d
	 +aHp/8W4ntQ/SKiXPWvQP+tdnpGVJvHDYGiZ+bIinPZlfoFkCib9Hyp4Mn7bofMNcy
	 ghcgLZm4/NUZd9itOWCFmhOU6YfMeDCRM3s+/L2pNp2jzciaSP2JrhpQ3Y1vshOzfL
	 6W3cQZokWea+w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AADEDC61DD3
	for <ddprobe@lists.linux.dev>; Thu,  3 Sep 2026 12:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178843803368.24727.7429143895861685155.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 546075d5b297fa993a05abb1226931bb97a99432809fee71e42b600b6f301fd6
Date: Thu, 03 Sep 2026 12:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788438033
