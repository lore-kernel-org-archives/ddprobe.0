Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18796E56A
	for <ddprobe@lists.linux.dev>; Sun, 30 Nov 2025 16:52:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764521574; cv=none; b=jG6nDFMgQttrYUDUCqB3LSk1Rc0jU8VQEePuEMUMz93cScwnG5RpWdBbxaCYt9VacAfzATM+BFMwHVJ4IAf7KCsODpDWpalc/rY35hPvXSx9dM6fZtmEtUm14Xw987P0ByM4bvec5T3chVRkpapASu40yT5QY9aejMAoDcRoN0s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764521574; c=relaxed/simple;
	bh=kDNkmbPO8GoPtpOSc/qtxbITyMuWNpkVZsRYRHhIv0Y=;
	h=To:Subject:From:Message-Id:Date; b=j5W4wkT2losUM648UI7T+vP5zsKc5lBit58FUSm4T7KjKTmgkOUxiUcrTa64hFTqB8XjjiEf3pgj5ER/PdA1AzrqUiKOmrZn1m/AvAq1ez1vXgTZb+4lEjM3Vw0e6wJ71cS4g5Hr9hwz5ruxukYXNKswB2E0ArKXN8aIYigBJmY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nHV9dv35; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nHV9dv35"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD019C4CEF8
	for <ddprobe@lists.linux.dev>; Sun, 30 Nov 2025 16:52:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764521573;
	bh=kDNkmbPO8GoPtpOSc/qtxbITyMuWNpkVZsRYRHhIv0Y=;
	h=To:Subject:From:Date:From;
	b=nHV9dv35Qk0jVvwKqFL+95ko38lRPv7a4oMOGqkeZYERoqHQmKSuMT+Sxn409huvt
	 DzGScnLtRiFH/TVE0moUHzPhmqcn7tHcJPIMyAUZAib27H2DYhaMvW3KM2UDCaZtYL
	 p9jJ/YhLDDEIdOQMr7ahXYjO2M20l6DmVaipcjmCeI0VD82QolBaggN0lVDrW0RYDE
	 dzt6V3HQWkb/5ozOqCrEPX4d5WhYkLeXg19Ha704wz+ynoTOWBKMVQd6Cg4pygh0+Y
	 c4r9ZUjL1UTPGsR4pk7melw6IViBW18GHMqMfB4/+aTM/exp1liMDbw+lJYTv2AtQr
	 3hwHAfhbHftEw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 967FCD116F3
	for <ddprobe@lists.linux.dev>; Sun, 30 Nov 2025 16:52:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176452157358.6458.8573157025729779145.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 71c56f6796f9273df98f8f2c0fa07dbfd03e954d85c645861cd10062e5221cad
Date: Sun, 30 Nov 2025 16:52:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764521573
