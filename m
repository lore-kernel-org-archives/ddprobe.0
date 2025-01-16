Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3245C22C9E4
	for <ddprobe@lists.linux.dev>; Thu, 16 Jan 2025 16:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737044754; cv=none; b=YbEccem8Hn0S8OPyDplP3pGQTmggjvDOwV0bDL4l55IPzwMw4FGWyCZbn1dtGjI8cgoPWyRa1r+KBOw5/gQde0mpnKtAfbJCyviEABDe67CtXfqF1P2czq+2ysOZ5C91lL9e+8eQwA+s8eur5E4+y6VoSTqLFE1M2k45YV4yQpo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737044754; c=relaxed/simple;
	bh=6zDLXbVQ04B01ZYemB09Kh/uZQkJ+0iplUow036EG5Q=;
	h=To:Subject:From:Message-Id:Date; b=lrt1MgrPOWeIv8P7KwfxlHEa68EkDrfzfw7L8cNb9uRbAnAOf/33VsOeJeWEr1F//fDOco+Tp93xwfT0MwBCjSw8FiGnHPKsrc/lQ9tD7uCihfiTKiliC/KkR/Mf3RUWtwfh5nns9xF+WYybCBWRDdhPd2KpxxFtTWEF5FbD4BI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PhOJTN7D; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PhOJTN7D"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B89A1C4CED6
	for <ddprobe@lists.linux.dev>; Thu, 16 Jan 2025 16:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737044753;
	bh=6zDLXbVQ04B01ZYemB09Kh/uZQkJ+0iplUow036EG5Q=;
	h=To:Subject:From:Date:From;
	b=PhOJTN7D0GPEz/4NR0NQeI4JyE26eeg26fgyG5vn1q19mxuPAR3dPEDKaWrZrxVd6
	 HLDlbnokqIPos1nuVhh28YcDI7C9oC2mo1gvwoZUeYWAKHT+tNtMZ5s2yMLHabPURF
	 bI41d4IGIZgijZT4rTME6eLW9rGAsJfXYJlmGwSJMhKCEXCgEU9dNALtsySH0E2BFh
	 4khw6IruCPmXggAUxD1XR1DekoRmnuRcorDJkySArMFpQQsyIMaTyLEyN8eHIApasy
	 ygzKQzt6JzfIZBjy0AP1pp4o70p/H2YDmCCLhsqzAh9bjI1rtJqJ8kRjkbNO2osH0Q
	 aUH93w1UD3ACQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99423C02183
	for <ddprobe@lists.linux.dev>; Thu, 16 Jan 2025 16:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173704475361.28242.17265378633895037361.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0fcf9b36ca4ad7bb2c727e83b876e77aa819af80cb4c4fde025b562fffb54a9c
Date: Thu, 16 Jan 2025 16:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737044753
