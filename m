Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2EF971F2C56
	for <ddprobe@lists.linux.dev>; Tue,  7 Jan 2025 14:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736259354; cv=none; b=FKsGNMfkDNBS7Lv0uJaoXVZwdPGV18hulYcf1x+mB/Eln2/BOgp5pkVEUieay3IGIWnYwodo/B8r7QKp1nrlfRXLVXhlOD9WmoZLTT5CaYwF17pcy3ILdPzVTonb6ehe2rrP6VaS/CEQyNLXhayk8/wpzC4SEbjVjO53098nKfk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736259354; c=relaxed/simple;
	bh=bLAd2NFdivY852jcrMujzlXlqS5FQrNEQe/Rmt9ExRY=;
	h=To:Subject:From:Message-Id:Date; b=rx02owklJ0KPgQPGEsbIuTAhiKb2eog+gQ5IRxZ4Gn8pGNmwrcdffwwZ5kjExbRlK+hWHgpPkJUAWMfJdi4A4C8HtZHqLCyijtkrOCzjEgfWlySZhWYHYG7BgrYH8bhVgf5YuL8E/RbtrYsh3WwxVq3ThUSXFXJdzEdIJcYNIMI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RP0yzuGw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RP0yzuGw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9CC1C4CEDF
	for <ddprobe@lists.linux.dev>; Tue,  7 Jan 2025 14:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736259353;
	bh=bLAd2NFdivY852jcrMujzlXlqS5FQrNEQe/Rmt9ExRY=;
	h=To:Subject:From:Date:From;
	b=RP0yzuGwhsCqVGbqSPGVK33FRcyi2FyZ3fVBixgi6hxoD4XgMM9wuhppdNyx6pK2R
	 UPQoDXN+cSkaz67L3sPBMRw4T4cJvGCn0O+F4qipMUIaZBLuLU+t3rps7u1glbK1cM
	 iniO0iiZYxRaWY1438npFXo4r/sAytHdr+7UFIC9iMLqFZO1vR4Sh+nuoyyxUT6fXs
	 Ng42176Yr/xzv1SjOYjRMpBBP8Xz9ZQ6uB4UjouCbNZscDPbD5CsKsAPazQCPx+3Wk
	 UoP6S7HSFyQvN7HiOQfwmFjiC+Wqsx/SvSquJbrMm8MNk5bVcviRccMXjf2L10br0x
	 O4ZVv3xBZqHzA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 990B6E77197
	for <ddprobe@lists.linux.dev>; Tue,  7 Jan 2025 14:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173625935361.4735.11245369767970802821.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 12cd553eb19269ad09e4e8fd7aba4df23b68868f8520e35f3c04f20f39bbaf89
Date: Tue, 07 Jan 2025 14:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736259353
