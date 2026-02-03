Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22EC528750C
	for <ddprobe@lists.linux.dev>; Tue,  3 Feb 2026 17:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770140034; cv=none; b=myhQHjZKHq5CP3xM7L8D9/dqSKqwlprV3o31PCyJPyW0lakar4T56FvQ9RuDMepaRY5p5xm1hcj60WO8gD8wunzSSaBFG6AM/7a/zh/UxhqJk4YUmpwO7gz0m6M9Dyd2r9UwAOrcFcnJqoW5rD5CzZnv0GKiaP2c9b2rPreQSX4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770140034; c=relaxed/simple;
	bh=326bxomBRFrEZJBgwkNdhcqxcViYl3MzZL0TtPNcsJY=;
	h=To:Subject:From:Message-Id:Date; b=EwZXkAxHf/8BkPVlP4ozkhFXt0dmAGbeM5j+0yClkHnoVt6drx4avzboFmgFz8soApOECe3V8/yHjgFsr9vh3c4fCBkdYrhBoZTRIl9Wm5wM1iB9dQWN3A5h7aUxwp8B0zetdc/+SThMAxE4bTFEkMllQhreSwKg7M+9XQFL9+w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QxdsgetO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QxdsgetO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B062BC116D0
	for <ddprobe@lists.linux.dev>; Tue,  3 Feb 2026 17:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770140033;
	bh=326bxomBRFrEZJBgwkNdhcqxcViYl3MzZL0TtPNcsJY=;
	h=To:Subject:From:Date:From;
	b=QxdsgetOR3mFNzvRvrZ5mn2ZnGzCNxsphMpUuEa56XQftcs3ZHvNi5cq4a9HAUaBZ
	 0wq7FihhFItwGY712ZDNCxRKoOFlfmdEzBqjLDLZ1Yh0V79ChYXhIQxN2HHYjUngNA
	 Ebpyg+nzgIAbGGHwPWu8xUR6Os5ravCw+u2qlvSew4/P1RzC+ghDVo7Ye4P2BfSsIP
	 zvUGI8ugNaGBxl+iylaExt6j31HLoe0ona9ikpk+Q4+G+pXm+MmPjiJgAo8TBiJEiH
	 9zXYoTyW46NiSV2kf7gGaPgcmlYnVqAbmNQ2XjFlAnjeByRmX9JlLE+8TsB0pZk0UL
	 HKUdsI2cxb3aw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97B3BE8784C
	for <ddprobe@lists.linux.dev>; Tue,  3 Feb 2026 17:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177014003360.1272.4120006976281789611.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6b9a5111b2a4c411395fa3e56c828407c90b92954ea7c2ff679c9783d7dfb85d
Date: Tue, 03 Feb 2026 17:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770140033
