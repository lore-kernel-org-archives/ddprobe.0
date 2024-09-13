Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27F7113BC35
	for <ddprobe@lists.linux.dev>; Fri, 13 Sep 2024 22:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726266954; cv=none; b=OrTEHzQsn8MHKE8zh6fnIsurryJkPRqvp8TIC3ao0amz8/0SsekUJGwv9VLrpuaOchvy8TuWHSyo9mbueMy9mPVgAJh10J77JJVt+qmyeQkh7WTFfqGU8NgM9lvUTa1A/LUGid1SG4nPsRBHqhfiB/kBMH5QfHutBIVlNk9SHqQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726266954; c=relaxed/simple;
	bh=C+R3ffbHZdjCdyD5IYoH7SQaabXVo5B8Xo0tPaT8xjQ=;
	h=To:Subject:From:Message-Id:Date; b=l1LgR/CBWCvAazqERGOIu/k2Tsgv1vEL4FIEiVk2utSU7reXI0OfE9Df1zBrjUQ6bfIJa/TK61NZEy6jaHp54yHxLJj9Q9qmgZh/zLzzf9w8qVBpHy2d4eK4X97ZniDPBeF8Z3ZJaoa/UUGmYloYmRCgQVYoTEsq7SV36kMQvuw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rrj1kqG9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rrj1kqG9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A80B1C4CEC6
	for <ddprobe@lists.linux.dev>; Fri, 13 Sep 2024 22:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726266953;
	bh=C+R3ffbHZdjCdyD5IYoH7SQaabXVo5B8Xo0tPaT8xjQ=;
	h=To:Subject:From:Date:From;
	b=rrj1kqG9F0j8slB1bvfprWkfDRXM0a8mbwlOlu/squAUJ9TOaOYhSnoUOcYlD7nJC
	 yWAQRIBZ7Hup3v8gN1zcvxWO+EHruHtEFHROyDxc0YwE1vNAmJl9pLtKNspuA+qIvi
	 LMezge4Uw+uhoFjcSVe9mQDizS26a2HmuomRVeLIrZGIQmG0zm76iFPHTBl6O59xK5
	 1FfSTK51OFa28twOe5+th49UoSutKisBlpbaZCDAuwDnSOB9RGbwVMTKYjsm949spe
	 d6OaWug1XQJIDCudYpBXZh2Z0Kf2HiBJaNIHQzuHHiDD/ztHLVM0yT/nKPMr0NRoI6
	 RkBRtUBztznxw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 935A9FC6172
	for <ddprobe@lists.linux.dev>; Fri, 13 Sep 2024 22:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172626695358.13301.11307278812179403537.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f25f44b3d9891e291036dab600ffcbaf1579fe4e3f4c411c7f0008447ff209ac
Date: Fri, 13 Sep 2024 22:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726266953
