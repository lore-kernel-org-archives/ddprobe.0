Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 69242399015
	for <ddprobe@lists.linux.dev>; Thu, 13 Aug 2026 05:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786598434; cv=none; b=celG8JJHvD0oGYTrZHc85G6+li4eJTeVFZeiNIW4TMEij4mdMmxyVbM05KgNsHJ+SHs9sDJO3deIniY7EdH9s/mLrimWOh3ZoR/JSp7rtSMtB4KcbgxfkudwTcB74aSLl3a/eYwZeXqqeJup/AbTBQmxEHjMG7lSI1C00kHRC/s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786598434; c=relaxed/simple;
	bh=QkvfsckY/zxFwCUmDhaFcDH88I/1lCSLECxejzUImTA=;
	h=To:Subject:From:Message-Id:Date; b=F6N0vn/cDJLYvzyM+YZj1xqjzpiJpw3o9YttjbIGzBxFOcTIiJ3hSkfKKkomRicCXuQ76r2q9YLtjZGbBeFQxiFDvQzZSQ2ufwbu8A5Ntbiwtp18U5Qn34M+blxiz4YLzNy3B8CYXa5V2s9j3k8PXSUPjDRWio/0cC5fIbxrgRk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lka/RF/G; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lka/RF/G"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1BFEC19425
	for <ddprobe@lists.linux.dev>; Thu, 13 Aug 2026 05:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786598433;
	bh=QkvfsckY/zxFwCUmDhaFcDH88I/1lCSLECxejzUImTA=;
	h=To:Subject:From:Date:From;
	b=lka/RF/GRE299W9KX2vaRcI9DY0m89slhHBeQqmK98aDhVno6F9g+hLGijiWqIs7x
	 HdCO19S7gZxt5wtfaqYdeQJ+zcJXbVBZHQwLPz+euFyF5jzk1Jarda4yS0NAmVOTXC
	 U9ETti00W/p0EfDqBq9jqBvE/NWBrHOtOSiPyGvHYDGdB/n4lNhIuyfnXHKt5pNRbl
	 HT2AHfrrHlPLKz+CCTR49lzTMq40k62jyM4tt/UxrAalEbEbM5VHnnn3RPfaDuWxaW
	 SEASVBJ1dZwhJe/MMCva7zLKlukOA0GZ4Bbg7Nt3NDgwRwZOD0QT2Ms9uU1cNEnI1v
	 r35TeNa/Q28VA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE4C6C5AC67
	for <ddprobe@lists.linux.dev>; Thu, 13 Aug 2026 05:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178659843368.11394.3369648341005013960.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 802d61a79bd995e1932649a1a30725623b91bdad4d7fc5005f40dab993489626
Date: Thu, 13 Aug 2026 05:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786598433
