Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DE9BB19CCEC
	for <ddprobe@lists.linux.dev>; Mon, 11 Aug 2025 05:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754890193; cv=none; b=DlYI0qyoBUBEeniQcs/QeP+bziUfEHDt/qaLPjlIInXssPx56a4JXkIS/72ZwolNo88GNEJ9VeCO47wbBmhWvI4moApjSyNm/JkAD/ft2z2m8bgnN9NjvtoItw3Y4R05C21XreI8HvO1AssRqzll0q+KHT54Pw+UY3Xs3H+p9Ik=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754890193; c=relaxed/simple;
	bh=TroFYwJZZlMSGcuFhlBvUCaGhzBM5UzA/sJIWJDzOeA=;
	h=To:Subject:From:Message-Id:Date; b=OpWr2JNcHrRccita5jsPo+K+yY0n3/R211QX8TfmV4y1UceXKjc0vTfi3yiGBnJH5wXr4EJStVDZW8GMZ1J829reLAqYOYkW67VtkWvArPRx4h0Qs4Uk4u9VSsf26Dd4E2gsfAWQc5uZMJ8dxB0kn3b/MXSKM5wEMFitMQB6MWQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=djJunsZt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="djJunsZt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0D8FC4CEED
	for <ddprobe@lists.linux.dev>; Mon, 11 Aug 2025 05:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754890193;
	bh=TroFYwJZZlMSGcuFhlBvUCaGhzBM5UzA/sJIWJDzOeA=;
	h=To:Subject:From:Date:From;
	b=djJunsZtvMq8ZiMFcKt5mnrO42vKNVA4UgdvjMUYweWdHziKkt8CCTSnaPCBEIWpb
	 4b1fbHGTjNRTXr96n24ZaGgaG4tin/i6MS2EjK0EjU693iJFvtxInc88W56B6USSUN
	 qbQmvw9X0bSPvastFr82nWLBq8wWv5y/OK7ghviB3ywx5drdx6GdZX7MXSv4Mh0VF2
	 amADk3Rs5VjFJ7G3whXq63HJoZCtV+K0wNgRKgUjA5J3y720f1GUnk6eWTV7oH/ybD
	 ZQkbXphU6+EHfnlM+yKAp+tOjNacel5Qkao4OGW7jrqgT3xBC+uyd2RAnmIJu9v/vA
	 IhjI7l2vj5q9A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 924EEC87FD2
	for <ddprobe@lists.linux.dev>; Mon, 11 Aug 2025 05:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175489019358.3088.13555864465970282786.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2d45215c33e348c4cd529d81ce469e976e5c3ac31216b2228719e0a7a74bf5ef
Date: Mon, 11 Aug 2025 05:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754890193
