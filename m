Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 402B822A4EF
	for <ddprobe@lists.linux.dev>; Mon, 10 Mar 2025 14:58:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741618735; cv=none; b=aM9HP6mu9lJxEkagrljjJAp8qK5/xp6zvjcppr00uagpPj/u3AnHSPwTN0rXIfSNTYDkZDsH2+Te6s/yhEpAFrpNDxPRvdgisRHhOl+PabLzFtoi9tW+dm/CxD7/k7OHOuqLWLhOEaGbpBiRVu2l2nt0FB+z5UJmFCUHnbasF/s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741618735; c=relaxed/simple;
	bh=5ivYYQI0p+UmYWYPC52pA1dNRFfBgLii7UqWu+2HJPg=;
	h=To:Subject:From:Message-Id:Date; b=RAzwx03C8R2aPy2kbTQ92Q+x/76TwbtalOEuAvp564jRnMe+2b/W93otlRM7cFDXGiXODPRylITjt60PzaUCKqTdCJqeRAk/RgLddb86uC+MUAlA77l2IXj0ebrHI/YxIe3jMP/Hk9r5E6yHr4Ro/8L/N6tHoZXoS0U0ESZtmIU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qaXnUR69; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qaXnUR69"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADBEDC4CEE5
	for <ddprobe@lists.linux.dev>; Mon, 10 Mar 2025 14:58:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741618733;
	bh=5ivYYQI0p+UmYWYPC52pA1dNRFfBgLii7UqWu+2HJPg=;
	h=To:Subject:From:Date:From;
	b=qaXnUR69zG4V69OShZAFUgdV+p+tLwnaL01yEdpi+pde87OnX4pY0Ka90Gtz8PiRK
	 RwbyA7G5t2frzR7mYIRq12bUdfx/jYYv1Hn5nOLsKDNRvOAXa3MGEF0HpKMOP/5HOi
	 h6fs6WND+0Y/gqCBSbLUCbD/0WK9IdqIgQvQYdfFw7yU+ubE9t1QaQvjnlZwVluMar
	 mZgSmhM9nYcpdvgrgqoTlyT6tg8b63nmLY5DFHQ4rzeA0A0ea6+9uI1ztukE0RPec6
	 qZmvTThji8bsC1MdRl35iJVA+vsd7f3C3xTsT6PxbDKOthSH2j9PcQOgTrbY829ngm
	 ARmQe1ize267w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9ABBEC282DE
	for <ddprobe@lists.linux.dev>; Mon, 10 Mar 2025 14:58:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174161873362.21387.17083523098242074184.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cef3542d375968faf8f84e75bcc607db3efd78b36c2adb73cb615ac050e02c6b
Date: Mon, 10 Mar 2025 14:58:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741618733
