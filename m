Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 17DC623C8D5
	for <ddprobe@lists.linux.dev>; Fri, 12 Sep 2025 16:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757693394; cv=none; b=lyHLXcbhaMhQJOXutg2rmTMqwd7xX1AZry0jXakX+10RhWMHiNKdOJFR4fedCWA+LQdizEM0LL2uLdxYftipSEr4tALGmZopOIUR7Un48k/h9lr1o2xKPw4hjnt+YIMImhDqVY7Q+crrRaTVQIrWA4v2vN4HIJDa44fz4dyetwM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757693394; c=relaxed/simple;
	bh=emnxohIeGpl1xzrUz/WpUiIg2V41SKHeT1V+dMiua6w=;
	h=To:Subject:From:Message-Id:Date; b=CF0A5lV+rNbX1RV83OKRfi9Yc89b9UB9ysOWnNi6Bhhpcf1f6JmZjytH7xsFy1eK8gUEXvEmNjXZzmq7EfzvXUcMY4oF78YSsBfqsSYHhrXG16K/Mu5YEXjynT1v/+tUVVRpwbCm6Jy3ufBFYxq003lCS8qZO6VXGf47pRya0Qw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FUfevlll; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FUfevlll"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A28D2C4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 12 Sep 2025 16:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757693393;
	bh=emnxohIeGpl1xzrUz/WpUiIg2V41SKHeT1V+dMiua6w=;
	h=To:Subject:From:Date:From;
	b=FUfevlllJOYyajZ/dgpl257B4uJx3QqHNUcwTHIxkCv5dhmCP/ivv1ICujUXFN3KN
	 p+04kNny5240bNMhwv0/IlO21LPWPcpJIj/LtMiDcfSNDCmaLA4EFy7HVyAEYF8viL
	 H++7geWouymySKMu0CZHsb1Lbbgg7s109VX4q9pUSkS8bcuOD0dJWUgy4Fw2frVgEZ
	 AFKwyAsVTErZ9VKznZ2tt5KWMLmTpCpnhGinsrSZ9aGrIBgBJRIs4Sal3QpeInvuxf
	 LVrQ9gH91D4CO69zVjGiEf3bSQ2BcGr47w6tkdzXYv0DIOUVkPKp08n4nnhyV+vIhS
	 QuhJTctj6raqQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92441CAC582
	for <ddprobe@lists.linux.dev>; Fri, 12 Sep 2025 16:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175769339357.30363.15873672943412318509.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 76dd567d9b389c6d1ab52bc0dd1bfef7ba2de09389699847017c5b8ba039bc80
Date: Fri, 12 Sep 2025 16:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757693393
