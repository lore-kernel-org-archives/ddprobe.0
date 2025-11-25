Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 17E6D211706
	for <ddprobe@lists.linux.dev>; Tue, 25 Nov 2025 10:32:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764066774; cv=none; b=CAIdi7TsUY1oyUkjlFAsLkgSORTezCtlO1oavT/XUQDSpnDarJgIpFFZylZpN/P7QQL2gYV4TSOktBN8hmvEd4UIUgPqXtDBptKEvBr/ETThADzHDiXFU/bpwSOiH6eIEo/P7yxUHWucke/muXw3zpxVFTt6a6XJ8EQPHMFzYkM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764066774; c=relaxed/simple;
	bh=bAq3onr+AesEvrEXxqW1XIbYwgadYr9pJymaZr8SpT4=;
	h=To:Subject:From:Message-Id:Date; b=szoHbEVcYBMD79e7eEJPOjmrLsub3K3Y06652E2eQZuULDk7Ec6AptFisPkqiaTvpE+Ol/IwHC304y5oqy1FEJO8xCYEFUSaT765wCcTUsuOnHmFtMgnWXHdcY162TivZP/O1sSRY7Y5f0VVAQcLBhPI4EX8prVy6XMVkzh1vmA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Gw1U4BJV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Gw1U4BJV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A67A8C4CEF1
	for <ddprobe@lists.linux.dev>; Tue, 25 Nov 2025 10:32:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764066773;
	bh=bAq3onr+AesEvrEXxqW1XIbYwgadYr9pJymaZr8SpT4=;
	h=To:Subject:From:Date:From;
	b=Gw1U4BJVepogITmoB6L/prE6FUwwRnwPJUl3j42Gn8VR/7j3IYmFJlAJFECtUQ13o
	 hmKhVxGnGkaUDgmbD4EH159sqPBeHaWplcA0sseCw334MbqJThHx0XJk44/TZj1QyQ
	 HW237XDUffBHDdkVH4TEksYuDGA9ft3+n+dBKbU+Ih83nzuz6nRYfeSFdhWYQVifjg
	 ZyhSi4pptXKjVZ8M3k1GV6aF28NA9NOHD2e7CpxXcO9gRO2BznI9q8GFIQ8TWG4FeT
	 nVOWJUEKjmea/95LO9PwNZE3uVssnN+ZKvs+Z7kc8gSZO6jyvKKWkJWBj6R/AY7kgK
	 VlJiOVc2dva4w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90487D0E6C1
	for <ddprobe@lists.linux.dev>; Tue, 25 Nov 2025 10:32:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176406677358.14741.3884162746225842771.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 66ea8c60df11c087995f6dd96902874f99112657a13a2a3a97dae32f54090cc0
Date: Tue, 25 Nov 2025 10:32:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764066773
