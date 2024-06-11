Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4913C16F8FB
	for <ddprobe@lists.linux.dev>; Tue, 11 Jun 2024 03:28:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718076503; cv=none; b=RnY4TjAwHU6YZF7/Evxau+YGHGl8N5Zh7OEiX2tSF6HcOuA1idJVPUz58hcFk6HMY7MdSDYiGerCnR62mmOXRmIWYFb+JeO5lJdr/wxBQ9JdurVugHlApHtaTiSUdphzxMoEzWqCHmr6igTXnFPbMvrXp+aaYVVrE+nBjMjih/s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718076503; c=relaxed/simple;
	bh=ckrGzAANT4kYXcgNfeIcqNuZNSWw+CK89PsM16mAOqY=;
	h=To:Subject:From:Message-Id:Date; b=LdqNbwq+y6QFVzeaPqd2p/jlBnJZcwfFNVz6gL8ZrlUtwIUS9koE9C+eY03g9svgF5RcLcwPd1aHAKnwhm/xIRUnAKwLlOo/vX17bQxUiKvinHv1LQwnESdjMV4MMfNot2ZMzzJsWn2Y3QSutPSGKWcMDwId9jvW4hRFIThRrN4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EKX216KW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EKX216KW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DEEEEC2BBFC
	for <ddprobe@lists.linux.dev>; Tue, 11 Jun 2024 03:28:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718076502;
	bh=ckrGzAANT4kYXcgNfeIcqNuZNSWw+CK89PsM16mAOqY=;
	h=To:Subject:From:Date:From;
	b=EKX216KWrfLtDF8BYiIoazZf4MtXqEEaAnbYiIOzibmyq+r7tToXHeMjsQvIeP4z2
	 OTrhTZZV+XhVykGBLfdwHq8CTVnSRTg5ehtM16OvbFiDGIwqEX+nx7pxoerohqlcEr
	 h0Tb78xLn0UUNrPeKRyzW+bpndx+oq/f3sXNX52rvpmy/FCqcyiWI7K0TUJdbBWVZY
	 nQUocdo3z5aGx/MgTLl9R9Y8osWRe4P0NX1HT6xzamxKoLi4wju0Mu+20JvdPksKhS
	 oIwOTkoyTeUSVVNaJ/r9Cg7ZaH0KFxPQxzR3OSeOit95jY68GkLBGA0MaM4LMBuzqT
	 b/ZwJ5GgMHQyw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C9197C27C55
	for <ddprobe@lists.linux.dev>; Tue, 11 Jun 2024 03:28:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171807650281.25348.7412742103132777201.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4579393e401996ff97361a9be84b1018dfff57093d49942e772a402d503fa50c
Date: Tue, 11 Jun 2024 03:28:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718076502
