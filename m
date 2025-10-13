Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22E242153E7
	for <ddprobe@lists.linux.dev>; Mon, 13 Oct 2025 01:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760318394; cv=none; b=J1UQzjcDZh6YLiafeNEnwjW30Up5rN68gmI17dyXykBfRoaOJIVgYyZPsxzzlBrr5l8RWn8AxfzCsVxi3K5GN98L+o828WcGTf48fmEtCEBlVHCi7CaBR12DzdkHYPxdcv+TyS7WbOt7aghWWz36QRMMajHFgPwmgex+Bc6Yg4A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760318394; c=relaxed/simple;
	bh=PC8bzAryy862yCHwCvSrsSb7gYfbdRLyd5SYNbc0jcQ=;
	h=To:Subject:From:Message-Id:Date; b=Za27MQ9j+JcvljuWCasjMrOdRpon1Re3m6aVUW6NaUl6K6tTFQxPjnRYVsOoIwjOUdKA1NUlgq1oixYCdkvOFDcms76TG+u/Ewsc2k+iaAQdjdReiaEd9rg0iyLviVncjqhMO/+GdE6Ombf5dcRCI5IlIDtzGeRe4giusAHeeYE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KzG5CrNV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KzG5CrNV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A71E0C4CEF8
	for <ddprobe@lists.linux.dev>; Mon, 13 Oct 2025 01:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760318393;
	bh=PC8bzAryy862yCHwCvSrsSb7gYfbdRLyd5SYNbc0jcQ=;
	h=To:Subject:From:Date:From;
	b=KzG5CrNViv6o8/kRpe4vx47uDjS4/6wRAilB0wFnYCNcsyU8wpkPR2dpFdHDrNZzg
	 yO774POqKRZ4/U+oay4+XfQPUbEPsKaxUQ4ZXNrrF1FI0JCGp4EgByDI5gompNce7h
	 ZxfolM39bwRWNjsxwCn2KBDJ3eQrQqWB/Tn0nJgVkA9QshvQYti4+ozMGqZ6zRNbyV
	 IyN8dARDR5aQQao7warDxAkKO0FfmAt38ikbfPpyHZRFhBCKa60SMWzoVNxSmeNtcd
	 NsdsXJTccW3kHbcizEI3BKhpUI4xGj28PB44JSIe9GEJ4h4GG0byeMWkYZeDkwf9pL
	 6ESTWNFO+wDSw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95711CCD184
	for <ddprobe@lists.linux.dev>; Mon, 13 Oct 2025 01:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176031839357.18818.17170980612064576703.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 43664d6bec67fb0be4fc8dc740e3610e4726e76026cfea24a3420e5571666630
Date: Mon, 13 Oct 2025 01:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760318393
