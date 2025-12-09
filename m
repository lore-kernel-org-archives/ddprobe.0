Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 363E2269811
	for <ddprobe@lists.linux.dev>; Tue,  9 Dec 2025 15:52:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765295574; cv=none; b=dFkd6+uyRuOJmu7/QwXCtiU9J8ztn5LqPYxgMoxbav/aAbdNJTAtXHHFKm43Av2cEH5u+zr8UAkxtZJQGTgPZ/tWOxWIjACmPm2mRXkhclBL4EN1U6o06FhzckYT3+PajQxZ5evhXRv3JLBpEqcXXuBYUMb+oU0sQ0VhyZRoHCs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765295574; c=relaxed/simple;
	bh=t67XaQZmXSSn2MdX1IAX+PRxnohwmJ0XKlp4eNgxEkw=;
	h=To:Subject:From:Message-Id:Date; b=YxzQzXI/Vm3OjVvAzGWBOA3S12Ft+QPArMPosurNITBE77IaUbrVWuquGuJ+eOJ5NXnLF+iyeJsyP8ZM7LC+PWLJgAdWmlGYR/XX+e2DinN46sL1W3BdTqcksleLbeWruZ0Z1d7Pd7OQ/krRil+sb2BG0oL9+5q0Isz7p3zHFi0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GDfEU4yg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GDfEU4yg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A59FFC4CEF5
	for <ddprobe@lists.linux.dev>; Tue,  9 Dec 2025 15:52:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765295573;
	bh=t67XaQZmXSSn2MdX1IAX+PRxnohwmJ0XKlp4eNgxEkw=;
	h=To:Subject:From:Date:From;
	b=GDfEU4ygQgk5jcyIv9V1ULwjeDgvOpxGbLY2HnnzhyGXaRb8fFQT1r98d4/1VbA3l
	 4PuqmawZ/YNugKl/uBaJRrA/v2FXf427TjOnruj3SYgvgHuDA+50QkoIccoFchfn4s
	 1QYXNOivhBshDTHtnTEhZ60OGS3q2uxNKMovROtlyVWT97PW9dRowZd/w4WnmEwd8f
	 QjH197KpVFUzPdvGIEI75+T/rGr+8Vq+35AHtx04i+5cfefUw2prlFfHvpNDsjO4no
	 P8iIKRPr0tLiZbZgOCYvGrgFMMSBpJ9oHR14xNI9mYuVyy7b1p9ri8/gqNiCIblEeU
	 d7MPa2UjYC/VA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 917F1D3B7EA
	for <ddprobe@lists.linux.dev>; Tue,  9 Dec 2025 15:52:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176529557358.15551.15384446797606063961.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 079f35a1b60b93da56d573e9bb463ac2b086b9f317906b73f7ae174b6c0b2e37
Date: Tue, 09 Dec 2025 15:52:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765295573
