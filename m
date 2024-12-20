Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F367199E8D
	for <ddprobe@lists.linux.dev>; Fri, 20 Dec 2024 19:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734721554; cv=none; b=pgEHi6EzFnTO4S3WwvJxzZhcdBZ5PU68QQwIkQ24oqWgO6n8IVUpqzcJDvyuKybNKcBn0jGNR105t3mJaDU23bT6dehctCd31nTe73T2uVAAQMi8E8hKQchEnbcBzR0KMrlmYqiIRHM8E33e9Qmjokl9qnB7xYyZ3h3/fPYfhCg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734721554; c=relaxed/simple;
	bh=Iq9T79mzhrNbBSJIfhEW1ULldYgf8vPKHjWN0EsOf2s=;
	h=To:Subject:From:Message-Id:Date; b=smDOs+vdn56vQTH73n96yXCKjEwmpB1L0adiWZvezVJ9fzD51abn5Sh++WLGFVeHcOHW8mKTUdoiljhw3D3yfQX/dV6ktD1h5toLlmBgh9QtrMDLEnn5TOBdvLTkgzKH8jRZ6ZGsyGR6kMOpydgDzIGKcDrq57g+umeUl5gF1b4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=T0fNsn/e; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="T0fNsn/e"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0408C4CECD
	for <ddprobe@lists.linux.dev>; Fri, 20 Dec 2024 19:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734721553;
	bh=Iq9T79mzhrNbBSJIfhEW1ULldYgf8vPKHjWN0EsOf2s=;
	h=To:Subject:From:Date:From;
	b=T0fNsn/ebHOy0G4H7R1CVkXw2lql1ld5xA9VWc0e7WwHHT2ZOkiKyJqaYpawmpZI7
	 ZhuDMUsrlSlSm1KMPL59DWaD9kRyghmof6UL3t9SQi6hFnrAn6MTxZ37jQ/nfPQzh8
	 vIll6EF09KWe54unjWs+Sxmo7dGFYYytpn2wEvD9gpMPycNUFF3x6zkgMd1XzZU2OL
	 4F4fkVZyMY+GgkHYyh5lUVsZ1Sxry7Rn8huEFBLKv89o4nB2CSp+/PVLUcohpOVtup
	 9lC3qp5jQghyXlCj9AqGV1utO0y2HRFqvpS3hpX8Hjc22OJdswbWQOitEOvlktizbz
	 ZaTyxH/fF2qhA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A46B5E77188
	for <ddprobe@lists.linux.dev>; Fri, 20 Dec 2024 19:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173472155365.10893.16771843336262957727.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a0cb9daff39a47e0babaa8a561640d973faba8151b7167b5c9d993d30da5a001
Date: Fri, 20 Dec 2024 19:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734721553
