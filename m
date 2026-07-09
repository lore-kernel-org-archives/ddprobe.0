Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21C7D3E44EB
	for <ddprobe@lists.linux.dev>; Thu,  9 Jul 2026 08:08:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783584514; cv=none; b=ixRO+sCDvPZ16k29wa3a2+dYy7hzGwSdJAICsdsZP469IixYr1OSs/lQ2v2GINzPZNgkak+ty3C9vopHwALps208hKhT6oREZEckmhVnZ22wHtlhIvCPf79fkipRBNJjDHiM4UeUG+mzWHNCNsYebbjW94rSDdHOazhTosz7p1A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783584514; c=relaxed/simple;
	bh=emILhLyFw2WnB1tkkWyOXz7B36NZnqU2YidS4OlvDlE=;
	h=To:Subject:From:Message-Id:Date; b=HMdpFxO5PAOQOZrwM7epKg9SAW0zcht3kUXzzIw2pWS0xsT+sW7iJ64EY8C3B6KjoXyvj4GwtxaZRA4NB75uOVXtN6jRFUIqlHxQoNGvp6NbTqiwEcpfl/MImqGYbrl2rzCw0PZ/vhsLaLPblycrMsxT5eBU8Ut1n18kg2BWFW0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CD5HpaZV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CD5HpaZV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CBC25C2BCB7
	for <ddprobe@lists.linux.dev>; Thu,  9 Jul 2026 08:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783584513;
	bh=emILhLyFw2WnB1tkkWyOXz7B36NZnqU2YidS4OlvDlE=;
	h=To:Subject:From:Date:From;
	b=CD5HpaZV27mtC6Ke07agWjkh8f8I7iKCNf4/rirCjfsonwkb55rzlWFZvvWHudHj7
	 Qp/gY1cXehTl46tgwiMqmPU4DBQRXodj0oZJ0OAhF/LJa7vFJkeVwCfVhU0erW6iFg
	 bAtxxSZDKbHZ8jNm/lTt2V//ORxdoThvLqzvYtIp2yZ8zAN2I4g92IFCVIepu9+ylZ
	 j26VxnY5EXU+4uCJ1LEllT6tyDHnmuKip/BV+Iv87tJRAbEg2CuhetOZBq959LrDXk
	 58Qwc+Zsouy6/h6bVQCibyCGcLFDx+FfukSyGbNvDXhLXx+AnS26cPn0+sqtOx7y65
	 mw8WMIdCB2cLg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A7A03C43458
	for <ddprobe@lists.linux.dev>; Thu,  9 Jul 2026 08:08:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178358451367.24434.5715515580307819655.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 126cd82add31ff8ce2e447d321bbbd069f4c398007cf9b7df423eebd44ed7229
Date: Thu, 09 Jul 2026 08:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783584513
