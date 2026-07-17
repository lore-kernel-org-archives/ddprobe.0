Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3963D39B960
	for <ddprobe@lists.linux.dev>; Fri, 17 Jul 2026 09:28:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784280514; cv=none; b=IUIwESWg3ChDMVHc1fJaFNnIO+bxJMUmNmeIsvHpVRgrKydG0EjUaRsJS+97kScgRdmCUxQtBNfr1s6K0plKm5WHbmCrWtSSLzShG/iu1v3mgjPuTtttLrw8Ks4NYXJWSblAp2whP/gVXNT7bM5e/xjt6u5+YUdDLW4vkyeNwy0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784280514; c=relaxed/simple;
	bh=lJ5OHdnTTCSToG6lkkqWiGCqPjZOaMzH9OILulMEe1s=;
	h=To:Subject:From:Message-Id:Date; b=JxljWJpyNuwp2SWSpW/i9hMu++Q9LnZrlEKtrghINuMBc/NaWOeXvSNoMTGHR837NsOjwrPauko3pWkGQKNXLKOpHaDGV+FcGRCh4fdsHnTCgLBN5jrauCICf2TXN54w/sEEFwde2tIwH3zaKCYvIWoBReA3GUDwKsXG4jxvNuE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lpjsSzL1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lpjsSzL1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CBD85C2BCB8
	for <ddprobe@lists.linux.dev>; Fri, 17 Jul 2026 09:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784280513;
	bh=lJ5OHdnTTCSToG6lkkqWiGCqPjZOaMzH9OILulMEe1s=;
	h=To:Subject:From:Date:From;
	b=lpjsSzL14ZTF25lGvR4wH6tnvHIp1Xy5pCPYuj7Nimrfkt6ULVwNtONI48fqCzT6y
	 NMGvIZfG2c+JE10pw9OM+BRc4jCwMAoaylZjr1I4V4YBAIGEbLpG5IHjK6490ZKKpI
	 ClTkEzr0FljlJrP33ewwJYt6AFnDS+a52+nSvI49htW2M6leD9ynjXye6jVCcWBH/C
	 cYiofiYDk/z9zqS9G5z9xBuu7lxE4JsqD1LVZWHjOUZom00nKQAB24UxC7hSBEiNf7
	 q5e3VAX0Qrs6k1NU/V5NeydZl1xr1lLAqP7og8A27Sre3MRD27xo6KAA5Ru78OaBQU
	 TPAUCQ4ueHvkw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9712C44507
	for <ddprobe@lists.linux.dev>; Fri, 17 Jul 2026 09:28:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178428051368.8863.1255986518782880955.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 08890dc9389ba29ba3885fa4f36a13716d9cfd3d7181b5fc595595da9257a7aa
Date: Fri, 17 Jul 2026 09:28:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784280513
