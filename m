Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1AC50189F27
	for <ddprobe@lists.linux.dev>; Mon, 29 Jul 2024 20:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722284754; cv=none; b=Zsmi8DlamBCO9jAkMNdA+6G6IX3+5gDlBrNl5hJTPHcHfgbHGOwS06DW5oP0JTXadvzQZAHS9eQjbXObP/aNdMpQrY1KmQ4zBlwgQncVhgLPQyCe8+8HyJzjujf8uBFbQ7DbYoqAYduCoyDcsWMn2ZWTE1usT44SW6osTBUSAq8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722284754; c=relaxed/simple;
	bh=rLDRcXbK6Sah9VRRPkjGLbr9pOx4WMcj5weLK8bJ8Nk=;
	h=To:Subject:From:Message-Id:Date; b=LJW3HFpPVq8flt1UKf1lb+/YuvzQtOxSngOzEsIoFZaaJfwsqwjTQNHAaZbJNpeU7jVDB053Mprt9bRHzhv3n0flG6hiyj6RxbREmpKHQHKWJIPVkFgWybwRppHoTetdteUzw/Yf/BXTY0gIHhiLjfrPT1dmQiiHHSy3Tiqzjf4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fesf57AR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fesf57AR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACAF6C32786
	for <ddprobe@lists.linux.dev>; Mon, 29 Jul 2024 20:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722284753;
	bh=rLDRcXbK6Sah9VRRPkjGLbr9pOx4WMcj5weLK8bJ8Nk=;
	h=To:Subject:From:Date:From;
	b=fesf57ARoJwcHWsJF96wWxbDdSGyiKbGWaOBXAE/f0CgS1M+KbkV04EOALEgwRtd/
	 im42OAcXoqptfD1wQkXkeD0CjkPgw3/M9gcIZHb8CNMJywUj6E1HQj4OBQQzCj++zS
	 7o09TyPw6n/zhojwZu8xlQ3zNMDvMXujPGZabHUekWEDcNA9I9hF6nRdhaHPb7o8pW
	 FicKJvsDlA/SCTHBMZwOWRvb0mc38SXgwMNi802XlOirnb9rzPWno1Z0A/R2sPklva
	 u54FEAzslAAH7mSnoRUmdDnoMzGi5WFFsvx5d9ZLGFOiWmMYMEO7A0dt7ebsDuFsdh
	 etehNUC5d1oug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9106EC3DA4A
	for <ddprobe@lists.linux.dev>; Mon, 29 Jul 2024 20:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172228475358.20667.2786915013268300112.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9cdcc7b897da40600b1c29cfe79547fe550b50ba37f34a0c62afdb3ada9d5ba5
Date: Mon, 29 Jul 2024 20:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722284753
