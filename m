Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 256A933B95A
	for <ddprobe@lists.linux.dev>; Sat, 28 Mar 2026 22:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774736094; cv=none; b=KndZni6gbsQZEu9esrPY3Ylx5CmQNqCuc3343ToP4rNzVJ6uKrTMpRdXQCjoKJS9fiW1OsdHWzqJgTO4WWYIr5vOZKeiQMuGFfXC4VDXaHSmMq+o+hOQNmePX0HfTqykA+4QPi+jAYPT61pgOgRR9Stnxkogyj92cu3hdn4L4gc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774736094; c=relaxed/simple;
	bh=9sgmz28z/1HDRRYth84qSl2qe9A6bh/Ju6K65WvwS8g=;
	h=To:Subject:From:Message-Id:Date; b=nfDx6rr1FWJoC4lYnVREw+enk8hWOvTMeBMm6Tza3PSPx5azhWI04Tmsck/Udl2NZjkg3jpHgIth9dmvCnJNRjts2vsaOyxvVmlaypymilhFOextr/t2xaL/xzb6EVrvT19LIehMNWakmLiWzJFSOF4gKPfmJx+kl0Gw9lidUJ4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IrxcqK+s; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IrxcqK+s"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A87B1C4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 28 Mar 2026 22:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774736093;
	bh=9sgmz28z/1HDRRYth84qSl2qe9A6bh/Ju6K65WvwS8g=;
	h=To:Subject:From:Date:From;
	b=IrxcqK+sSoTfl79V9FEBCvPX7Q87NZYQayOhnFd2AP5xaZoCAhcv7ITIlDlhu+Ao3
	 BDuINs+dXjBJ/a86/ftmodBWzqtTyOQZhoK+nbq6qcYMaEv4vUlsLyCGvBVTCenjGS
	 Xvk72xRGM6jih5yF/D348Wa2Sve3HR/yuUNNE2eqSXheMQlLPJFqcT/LoClvgks9h+
	 QgO3CqLy5Uj9ji+wrAZ/TS4NCuzmvit8i10gupEjqIGSSbaW5vJ3vNKV2K6t6bTEVf
	 E5s6jrLTeUcYb7QSoqs3uPg0fAAlPbL7OZau5o/J1mOvQ0c7ele1xvH5YLxm+TCAzU
	 SjPTFigD66JWA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9493A10D1487
	for <ddprobe@lists.linux.dev>; Sat, 28 Mar 2026 22:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177473609358.7179.16245307378537871004.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: db5e13c2a65ee11ce9a16c8f0f3322ad3ca0df44661817ca6f4d7a14bd77e711
Date: Sat, 28 Mar 2026 22:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774736093
