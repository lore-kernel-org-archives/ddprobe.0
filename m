Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3FE7F2C026F
	for <ddprobe@lists.linux.dev>; Sat, 25 Oct 2025 18:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761416994; cv=none; b=lwPPDLLXef19lRP8LA39Umsrd1OOz5ypJUNy1MQkl3BzdgYf6ilJJ4Zy7sBUsiXw05GYPfuTnEkVhLMcYJYeT7vowxPzUiUqkfoeFzycoV0aft3IA+qLqsXWnmwFdaBg2rU9BcuMH3+/kcep/joS8AJSvnYLHQojd5Du9jIGB6Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761416994; c=relaxed/simple;
	bh=slcFN2J979Em71jvs4nwqFn5MT75Ju/MrNPaNzNAfxU=;
	h=To:Subject:From:Message-Id:Date; b=WUDoYAddMR/TKgjcMDwq2hgPQa3lDD5EWXgn701XnOqemMvOxyRrSWGMEDnsCAqo/ylGS45CTFn1iyeDozmYEKb3X/1hGNLvW0UFuzG9FEXIoh4yuyNM3b+aauhLf98PRV/ucAn2O9VUwJ0NNg3c7sF2scVl6Kr81cRQAnmlrgc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DaAAy7kC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DaAAy7kC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A810BC4CEF5
	for <ddprobe@lists.linux.dev>; Sat, 25 Oct 2025 18:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761416993;
	bh=slcFN2J979Em71jvs4nwqFn5MT75Ju/MrNPaNzNAfxU=;
	h=To:Subject:From:Date:From;
	b=DaAAy7kCORokn/cKpy3i1DT2Bb/peUXgj47to/8MAoVg8tWWm3DWXfH8iBV5LuqDD
	 oCXlQMh7XMJv6rx4RdejoP4VwAVQCkUaYGJqKsBOcj9mh3q7GIXsqyEOd2qpIJUDBD
	 BJ/FUSULpFx5Dj531koEUJIFUeld4Jw2QfVIrR0wLaI3/QNDGVsauGkvDsq9akCI9W
	 x2YZiyNLT9IHHOH8oJpwP0rW2TJcW7p/VOafESZQ10zXu4pXzdlDvSKIJn8+q6nHwY
	 xO3vzXXJO+ru6DJXds0KPj6EFthjudmRSdRJ96gMrD6L3l1GU9fZOrJzpL2hRcUpEN
	 6NQLV2ZLxmIRA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93648CCD1BF
	for <ddprobe@lists.linux.dev>; Sat, 25 Oct 2025 18:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176141699358.10813.6188251727536708231.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ed5bc2570feb0cba02bc207b92de40a848b69fbaeeb9931e2acf7146fdffb020
Date: Sat, 25 Oct 2025 18:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761416993
