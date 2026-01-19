Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E373C2DEA6B
	for <ddprobe@lists.linux.dev>; Mon, 19 Jan 2026 21:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768857834; cv=none; b=KRISGp1Xzzj9FiXeV6L0T4+XzXjyyOPe8pWkvqr7n8vF6vBIIQfa27Ms0C9InmQ26aPMLVb+/QEVroFuDApVswlshSBLEbVjeOxDpeAwCk/I/ZWYmtMh6CLbKPCoUzexQwQka7aA4SqWDO7QQx4TkTPnKo0O3bEYqEc6Tiv7ihs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768857834; c=relaxed/simple;
	bh=gv+EC+KArAY2MH0KbrUPQPUf+ZjYnvYsKTFUbqeMUks=;
	h=To:Subject:From:Message-Id:Date; b=ekPZQq0HEVnyu8hkLkYptRzjPG2v1MawMX1ZctSfYY5dBTTUl51TClAibyiFevogMhqrG51S0gP8Fp2AigkGr3UgHwGAMekdFfwKtD77dk8XHRY2tpp10UoLszi5OcbyfbbTgg0Qy5Ihln7h6UcwLqsxb2y1S2jKaYDAuTEFKus=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=B9f1Jf53; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="B9f1Jf53"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A12B5C116C6
	for <ddprobe@lists.linux.dev>; Mon, 19 Jan 2026 21:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768857833;
	bh=gv+EC+KArAY2MH0KbrUPQPUf+ZjYnvYsKTFUbqeMUks=;
	h=To:Subject:From:Date:From;
	b=B9f1Jf53Xpl+XHaxiNVfDOqVEfZSQHGjvdBbh4DI9f+Sw/rp4l8rSHGC+6UNTd6EI
	 d8T7jl4JXBZNCtTkMHQjIG/apzeAiU+sPIFqKNoIcL++8bDLA+ORq6tbxnxKqm7BMK
	 wm267XSPwb26dVxKeSpxvCnjpg7ESuqi34yjvtRsasPUiW3Mgd+sVQyJR5K9hoALDq
	 xK1sVrWei1k51cbt4zTiJI4hKmDLioTJfJbl0ljp3ehF4Kq+/XEjpv8J+SPvoKuldT
	 uSc90IAMCvi8YojKF6tMT1X1prbr3zDfHCPmeoQ5AQGz+geCDjVf3JlV+WmxoBieyL
	 edIhy1vvtAJLw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92C3AD2ECEC
	for <ddprobe@lists.linux.dev>; Mon, 19 Jan 2026 21:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176885783358.18647.17726689354397868867.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5a37f078f1b797ce1a92bab94d095666372ec6fb0d579c7a2a20e0540a061595
Date: Mon, 19 Jan 2026 21:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768857833
