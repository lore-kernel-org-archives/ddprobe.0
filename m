Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30EDF3218DA
	for <ddprobe@lists.linux.dev>; Mon, 18 Aug 2025 12:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755520794; cv=none; b=arfOFOfr2VkMdDT8h8uKG2Zt4UACtoMXKGN3wfjdz71B/FHjiyQwB5LQQGJOesSUT5bZ81RjOltmmro1nfgdtiLvNcj9C8zPT3919Y2bwESbakopZUTmeEaEWVnzeXo4XG/k62WaRYa+ICKblKrwKDKaGC0im1mGrqUGTvtsV9s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755520794; c=relaxed/simple;
	bh=bGqXydUIiBpORBKHZOoVk5jTDyWXwWK6LtrZC6z0sSQ=;
	h=To:Subject:From:Message-Id:Date; b=tegXA7x0vKd39m/50SscTKikEYzOTqYiyOK7/NANo2Q4mXXSnCZy5fyKEPd5ZlxFQmIbET56l4UYGjQqvIlPz5LFHFMVslQentjDNz1uLgh78fxRXz1ix9RTKO4Euarmh4Woy7G62cRmUcG/XEMDQ8qOTAWfE2COaXBBMXk8yR4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eBKM1EH3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eBKM1EH3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A05DCC4CEEB
	for <ddprobe@lists.linux.dev>; Mon, 18 Aug 2025 12:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755520793;
	bh=bGqXydUIiBpORBKHZOoVk5jTDyWXwWK6LtrZC6z0sSQ=;
	h=To:Subject:From:Date:From;
	b=eBKM1EH3rYPm5jTcGmuPP4HL7naYilhJ0vKTFKW6M4AG5Wemy5IljKEKDnM06gMpK
	 SS0byMjLr90bJ3OW88teelqXg5lsY/Bc/NAEiG8KhyTkAqMXJtgCfLG/yF7Dd/uXlX
	 tAG/f9oyY7e0OR5wdHieBKFblKFdmK79lA6tFsWTMg0XrS4CT7lqaP51zgyn3Eg4oN
	 iuP7kQwOs4ZV5BpqVFHP1SpB5/5l5Xe7z7apiFIKIXEnW8Dj5PBt7raLzI7hq2VUKL
	 gM3J5qSigv8mRMDvDNVqgksCssRmF3Zpl657NNSImZAQIhizj0pNBIcx/ndL1udKaT
	 ZDGtYHfCFGRnw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EE97CA0ED1
	for <ddprobe@lists.linux.dev>; Mon, 18 Aug 2025 12:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175552079357.13201.18001348070460123641.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5271a93a9d19b77539d50c8309ba71d9c03285e05dc24b50f8bebff6a0ad195c
Date: Mon, 18 Aug 2025 12:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755520793
