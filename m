Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 11A55284898
	for <ddprobe@lists.linux.dev>; Mon,  9 Feb 2026 15:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770652434; cv=none; b=YGS2SQ1aRigraa58FPe8I085JkMxnCi6XfHvTpdbTtAl0XWsnIXeB3v6XN6DhsOkSD/eAwOWS57Sbilp0C3ecj8pgPRSXjCgCXI73bNlEUSjd0Iul8pfR9dMKegAUTVcPsNkXBJIfvUwOIBCR+CR//4xmc/dNZsrlSBqRmoxkeU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770652434; c=relaxed/simple;
	bh=04tjkk72VPNC793+DNhn45tcs16uJNBayZkxhVQ/wZk=;
	h=To:Subject:From:Message-Id:Date; b=GTJs0elH2hLLugLtaWTDB2gPg/u60iD8Udmxa/qPptt3bgr5o9BhpDwANk/lVJ4imOust7Lx2fgutsLpAHauy5/y0U0UDk5rhWbJwKnKV45DltOGYG5YI9+bzsZmD+DXjzzDS9jeNMCixBlKQv9mQk0JpBw2TUhWUOImwSjGdIE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hsuRa9yJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hsuRa9yJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B12BCC116C6
	for <ddprobe@lists.linux.dev>; Mon,  9 Feb 2026 15:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770652433;
	bh=04tjkk72VPNC793+DNhn45tcs16uJNBayZkxhVQ/wZk=;
	h=To:Subject:From:Date:From;
	b=hsuRa9yJLk98q+t1y68qYHY8miBq+kuMsyFUWzcc1kWQvSs3Z41WyGfSXS6zwDdqp
	 FcuXVECbdT6zsekcvJLCi5vhk0Hr0uKuR1x0Vaqyys4oDrcjJN7Cu8RRQoVQgzxf67
	 5Q0+kSGyKiEqrQRqsXsPknOAr9drGJBGLj4vuzQtcRiRb0Dqf9jX27EQj49Qh5d2+i
	 zmnRchLhSZX0S9XstCdyxBtI0wruiPgVEwDxCQWJ7oN13wtdoC5MvF1AfXgv+6NeJt
	 opUTcsdbYLmBL6XHv/fGg38d36cG9pIQaX/a1lWMuKENjZIZRmBBevIQ9hf/6bBfFn
	 FWncyLdII9+ug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A0ACDE81BDC
	for <ddprobe@lists.linux.dev>; Mon,  9 Feb 2026 15:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177065243360.17690.13046612295447968413.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 942966d679289ce55bc18debc1e084f6ed7aa5473d4e7895a6951df820c38fd8
Date: Mon, 09 Feb 2026 15:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770652433
