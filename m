Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F9E21C3F28
	for <ddprobe@lists.linux.dev>; Mon, 21 Oct 2024 20:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729543554; cv=none; b=uGnI69rD2ZLIc7n+xguZbH8KqX5WVMGOTt3ozocxjwJFxXcuBE9TscRJLkO3r+oHWGtkW8mpdRiWaX2qR1Dkc1CpZPI2IdA6l+8O+PNRrEBObTyf39HiXMXAa4A5/1x1ZOa4tglodLTWBqVGgbr0ylQOK7iPwhKsvg42XdCFZQQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729543554; c=relaxed/simple;
	bh=Hb6z0CF+sFG7/qNMvjCQ50ngRAVOdAfh3insmCVJEZ4=;
	h=To:Subject:From:Message-Id:Date; b=GksOPLdby28+Ezc5UnR15UVZN+PujRLgpcEg8M9Ijlkf8gk477S0I4j2p9+5QofiH8rzDvOD9FRkjeQunprt73sRp3ESXr2V3doEhoYatxAvCbkEGO0DjJl/mj6Wb4zN/44M8dWmnYrd3gJDqz3peP22jAFWRO27AQ7ODRyRzAs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=p433w+4U; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="p433w+4U"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8E02C4CEC3
	for <ddprobe@lists.linux.dev>; Mon, 21 Oct 2024 20:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729543553;
	bh=Hb6z0CF+sFG7/qNMvjCQ50ngRAVOdAfh3insmCVJEZ4=;
	h=To:Subject:From:Date:From;
	b=p433w+4UMnZioJH8E/Oj+ZxgfK2/i4pWpxEOU9s5e6g/Hp2nJvVHyRXV/xRJFQhKK
	 M16diGDj5VbM0ujbMu85QU27TjIIsacZ9uYR712tuYSbYSErhlLmyRCe06z4+JoOl7
	 8g8DTLnkdsVLidU8bkR8oDGevcARsVEBxn401rcNTf1ZnGmAbtqWx+bA6ayDE8ElKq
	 wd2EbjWDnIt5esG8qAyoToWWkDl60ZVY8IzqbNVuo9ZPQ8lHuhMflfB3Z4khlj46W+
	 hClF7TpLNQBB1xcopSjj5DpA3MA/VcAP/bX8A+t+OhiLzlMv3Yng4tNEE75tgdKzfH
	 TxqHe174/axHg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99C12D1713B
	for <ddprobe@lists.linux.dev>; Mon, 21 Oct 2024 20:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172954355359.21527.12900225146933519888.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 38cfaa3684d3c16dd80e1e73d5c8281fd6a9dbc73c3c2e1e71292bed2c3c2965
Date: Mon, 21 Oct 2024 20:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1729543553
