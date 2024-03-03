Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 13E647F
	for <ddprobe@lists.linux.dev>; Sun,  3 Mar 2024 00:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709425697; cv=none; b=DV+giUAZ5vFJJBwBeiF6xDxa4UYs1SA3C080H05yhuZKk8ltVWccc6Q/MX/LYLqGbh0hMpuX3O5Dx5RJiYBvqJEuPvMPS52+BvWR6CFd6/6BjxDFRVHWyxvAPX3gJvOuYmSoxidgn+68iM7/dhkU3XHyXZX2bRafh74zA3IT/nc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709425697; c=relaxed/simple;
	bh=h+SSaUUZ86eDQ0fyET2ul1qDTAEHVCSAi7oGGA8z2+Y=;
	h=To:Subject:From:Message-Id:Date; b=K03P3ga8XlXVzItcmYHwQ3Sibmo3P/XTtil1cvW0wxT1clk3xX2Ek2ADy8jlspRtCn0UpU3Cx/YFF6olxfRSeJ9kC7GYFdwokKH0MFin0VCqQUFeVQ1jMo9vlBcQ1iwHW9Kvi1JbComrObOV4/TqDpu0Tx5Efl9fMGO380OAi1o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QuYuEslp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QuYuEslp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 776A9C433C7
	for <ddprobe@lists.linux.dev>; Sun,  3 Mar 2024 00:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1709425696;
	bh=h+SSaUUZ86eDQ0fyET2ul1qDTAEHVCSAi7oGGA8z2+Y=;
	h=To:Subject:From:Date:From;
	b=QuYuEslpD33pbHYsCb3kgX92Ojep9LUMvK4o2TOPVPebGinsuw4CGvpi3YCUCvsM4
	 g+22cggHd5NYs7Cb/WQnIL0MkrL3UoPQx7rMemIRIBeWI8USwIpxx8m0JMlMFKodBd
	 OMMfBc+rPf0zb+dDOIu5pquTtyJwgT1UsP+iP61/SMmK6bH1b6ZTpZyUBqKGrZZb/M
	 0ECCdo4H0dnIIEcAkb0kIvMDl5U3JAbBFi9v1X/GNv7vu0FILs1Ms/EW76QcM7HoPB
	 rxIwhMlCqxOWKvSarV7i6ABKj3J/VHTc/5CIWQnQ7DHDRe1qeFbm9lZBRk54C+6jOO
	 byZwRdjhua73Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5D671C54798
	for <ddprobe@lists.linux.dev>; Sun,  3 Mar 2024 00:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170942569636.2388.13314453449967076695.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4751c5c2958d95c0a195436aee9e865576ad8a636f6d1fb55ed0a605a59bd60b
Date: Sun, 03 Mar 2024 00:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1709425696
