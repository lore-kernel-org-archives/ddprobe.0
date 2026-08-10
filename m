Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 552123B0AE6
	for <ddprobe@lists.linux.dev>; Mon, 10 Aug 2026 23:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786405834; cv=none; b=GnN5DtZK8k9+mrIE2TKzEL/wOueXtJYKjuD0hjK09sDNDyQFKTECxclb68IRniuS6smeqFi7X/8e4lPpE7G5N+XbLl5HQL2LQQpIpy8M5oSxiAzIwJS+3ISL6GEmxFbTGTvb85g40Hlq2JzcrnHDozFy/zovrIaBf0AlvtO5wsU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786405834; c=relaxed/simple;
	bh=q6hxSc8ZDlslKigwkjOnfafRbxpWbY7/TGmDKAve9IA=;
	h=To:Subject:From:Message-Id:Date; b=Yoimg83WRN6HLWiXHbUTBV9Q+TuVVta/Xyfv+M1EFIBeNvh6CQ7Zy4PsJcU70Ot75T185YdFH+Y63bnhct7WisQkGWs165FS0WRlAQN2xU2Z/5hNzklWT2HMZ9ZtSyY89yl1v640GkGZKjcEqyCorHziVwhQKlhYNhZ9MHakX9o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ouXRcHyk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ouXRcHyk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2082C19425
	for <ddprobe@lists.linux.dev>; Mon, 10 Aug 2026 23:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786405833;
	bh=q6hxSc8ZDlslKigwkjOnfafRbxpWbY7/TGmDKAve9IA=;
	h=To:Subject:From:Date:From;
	b=ouXRcHykmOL8vWtp0ZWAborOT2oG8Dz0QLg5rsK71mP+C7zt+dSnT6ElgGQNanobo
	 AFc4LVAeSyIWxbZsgq57v2NddZm6Bi4MGDJNorAizQ4zaRHCTcu9IN8rJoN0pWTy4J
	 Lby8m/pYoQvwF9Ljp58wW4+augo/JSmCQpoRyO3ySukznTtQrE1XoC1evGMMRKQVaA
	 GMSIEP9RpkriAsVMIOHXti5+P2N5YD5gHOed1CaANy0R3mOMULgmsdjJrVuWR7jons
	 5tCO9LQTGJoQsh47cKhHB31dWVp1KejIeb2wyJvoJf7Q2hqWXk99b3SexgnyON5+qo
	 Tdr6znXv8CU8A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADC7CC5AD55
	for <ddprobe@lists.linux.dev>; Mon, 10 Aug 2026 23:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178640583368.29296.7694871118418472049.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8793dc77d01232cc57cea76e7f2d2b3440d342f6a916f89ed765a50530ba0e88
Date: Mon, 10 Aug 2026 23:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786405833
