Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F159646542
	for <ddprobe@lists.linux.dev>; Fri, 21 Jun 2024 14:52:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718981543; cv=none; b=hwfToDl/13tHK9k3gkzETm1aeM7KFGOPvSTy7CdQJZlxJwmUZjkdjmL7SnVtwd3+nQR9yLhEkpHdSoKRz6Lu5fF5/WIYyriYDivPeJF3ek+aO0AbPc/tv8zXGQ9GnPSyuku/Dk/X46Dxg5+xR3tarqPRbSVNRgticdryPyVeuPA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718981543; c=relaxed/simple;
	bh=iIQ8ujtqMKsLSo5x48RghA5tuQit4J81j1sj3wwhUL8=;
	h=To:Subject:From:Message-Id:Date; b=hNbDnWHnH2p1Yv59knd1wPEQUbHS92CXjy7+XQ/3+kVmzaQIZhH5Kw54hWdWot27O80wopQ6esOqxI3PAYEKmrRjxDuosFFZZy4c88BOXQAHhTvH502xkVV0fEodNNAKvJIjpz0eBPIQb9RuFrU37Wk9VMJasIfsDH63zStbME0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nanKwg8a; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nanKwg8a"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0B91C2BBFC
	for <ddprobe@lists.linux.dev>; Fri, 21 Jun 2024 14:52:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718981542;
	bh=iIQ8ujtqMKsLSo5x48RghA5tuQit4J81j1sj3wwhUL8=;
	h=To:Subject:From:Date:From;
	b=nanKwg8axdT1vNqgE7uj4/DXjw6q2iz4PGqtwiLRfbnn/TvDLRv0Lg2BwF4XpZ5PN
	 wkDZ9N3TU7eBK5kVJY8pzVKSJT03HXD03IuJZT9g3P2KPUcRy3VCEqHhWKhfgZLn3S
	 9/LKBu5mqRJQISiYtiFHiEsE6uXzR0xotfmKHedjfvFhm18tqSlGVk2rsYzHvJgHiK
	 MJm0sr6nps+nBmDcdkCrZCnEV3Y5My+rg0jHcudDH8rkK1RCOsSIl5OzFXKp01AW83
	 XmeWdUaoxlKqXfXx+mIzsRX2ZEd2qSGpckDNsbRDxk9dTYEhFLieh3I7/17aZ6WOF4
	 +QvbaiORU1nSw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BF148C27C4F
	for <ddprobe@lists.linux.dev>; Fri, 21 Jun 2024 14:52:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171898154277.2971.15100813502119378237.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cc18f442808fd2b787e5b76ac823bae7e30ae6cc0be6adc2bcea0f3ba80bb220
Date: Fri, 21 Jun 2024 14:52:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718981542
