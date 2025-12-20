Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35C672F6183
	for <ddprobe@lists.linux.dev>; Sat, 20 Dec 2025 20:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766263434; cv=none; b=FmcXPUsmzprC4QtV2QBAqY8j997IApFcLp0r+bhAS4tGUPYKCCzH8Pqr62h7v87tgDe0qI0xlEUKqXI6A7uI+T5mHiQ00juJqNaPm81loRLQiB7ycIpBtcjoE/kvRHHEtHFSkshKs5NRdvYTTr6XH3PNIr6F0diyUmEaXesF1tQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766263434; c=relaxed/simple;
	bh=MUz1KG3LQ/wyra2uvuTtM0sH7z9aWdPO1Mun974ff64=;
	h=To:Subject:From:Message-Id:Date; b=SOVhzTobhCdoag4Qwksl/ABgImovqCDJ+v+5gife0jyFDlwl9q3bUlVFc++VyNMDiBUDIZG4vy+zW9KvzFtTYkDvJZq0xp/Z35cY8PNU5/Yk8qXy6yuWBlwn7srd0KTeUCxYw0lIzRC2LdTUHWoPc8ctVIfGwnElZ4b7LabyTOw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CGmkdsXE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CGmkdsXE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4C1BC4CEF5
	for <ddprobe@lists.linux.dev>; Sat, 20 Dec 2025 20:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766263433;
	bh=MUz1KG3LQ/wyra2uvuTtM0sH7z9aWdPO1Mun974ff64=;
	h=To:Subject:From:Date:From;
	b=CGmkdsXEcekdoVLUDVTvpGUMedhI08Sk+y1e3RbqGyLTu4FDi0y17sRrYsvjExt5u
	 0+3dmtodC8togSi++JAkw+VTapTmGTi60Hlh37b54JtBkebuPTFLsg9jgDqxPwrBY4
	 ltW7KYFu6n9xHaw+hx/w5nP9kmwh9AquwOLhtQWwS4+Tw78hEhckn06lXqowChPLtp
	 K/UOSfpzcCYsWrD4XB+1CLwDb5I89r2n2kmTNKAc4dJw6H7DIm5BVJd3EyNP+PjPY6
	 XohlE4b4d1bHB8PFVu+wIQ8layfGuorS97REIR0vf70xC4DnIFTmiXU95t7k3u0MD7
	 y/funZQBAtwFA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 954FAE668BC
	for <ddprobe@lists.linux.dev>; Sat, 20 Dec 2025 20:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176626343357.22581.17828583377981699939.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8595bfbd0760cb8fd84fdcd6e4a2fd6030f1db2cf304f6e5d8be660cf0411911
Date: Sat, 20 Dec 2025 20:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766263433
