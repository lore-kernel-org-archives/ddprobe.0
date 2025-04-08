Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32FD221ADC2
	for <ddprobe@lists.linux.dev>; Tue,  8 Apr 2025 23:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744154394; cv=none; b=KIDJ5/o84eoDUUq485uyaSaEhVTuARFxWINsvGtewnKKJpZzGZ1+swq++K/LLbxTf9rw09FV4HozKDp4RGWpK7q7DXpRGUtZapk1diiKVVHIYBW0VWdsnWiSathdN5ZtGivn/eS0aiLT4ozYgvYLeVYIg2BWH6w10xghk/XKUBc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744154394; c=relaxed/simple;
	bh=ViQzsbTehvAIwqXOE5DP8bigMieyb3ixakoGOewnGts=;
	h=To:Subject:From:Message-Id:Date; b=S4ueZp9OGZgQlsAkeEf0djbJ7HWGZktlZRysWZ5Q7lylOGViDEW4aV5EccLC7/EBhi1ijIX4ir+BihVztVz6EBX9TJbzJyWlta33U+9jnfQWNoS+5KTZ3RS6t5jCou0+NXqrBSMbAdLPJnh1gYS6UrNxCXvZzFdUtpvfcguaHbI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=btYsCByd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="btYsCByd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9CB8C4CEE5
	for <ddprobe@lists.linux.dev>; Tue,  8 Apr 2025 23:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744154393;
	bh=ViQzsbTehvAIwqXOE5DP8bigMieyb3ixakoGOewnGts=;
	h=To:Subject:From:Date:From;
	b=btYsCByduzBCeDusJipCtKjXSt0Aqwx9S2ychH1j2tfMPjSWQheyvJy1lg3s6waJS
	 y7iy+k2Hqm/RuWBg4O7PjdNgbtbI+/xfJWaDAz+5iEJNogsdBSKTqF0blethKsiiK0
	 Lp0sHimvwu1YWCruU1+tiWfW1fASsjnoJDpf+1imAXFugv0Z4kMpJtRB/TR+LLc9GF
	 7UE0xsOrlbdazbpX/7T/yP3D/mQzudlNMvwED+TIdK7iJkU6lgqwAVtkvC4k8aBSNH
	 oVAhhaJX10vVsmXjfadjQpuBNMI4BdXicgKZSa8Nvrcerj/T3eZ16LgrSDv/lF7Wd5
	 9aPjGjypqvqOA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97664C36010
	for <ddprobe@lists.linux.dev>; Tue,  8 Apr 2025 23:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174415439361.25667.10559369089147556631.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f9ae4b221fd1c6f0bf048086489306f683a9502a7b90db8964a1e95866fc314b
Date: Tue, 08 Apr 2025 23:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744154393
