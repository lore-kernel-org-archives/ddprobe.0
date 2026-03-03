Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28B8F3CF66D
	for <ddprobe@lists.linux.dev>; Tue,  3 Mar 2026 17:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772559894; cv=none; b=jUV5jRIC/20FiSGLlQWHW3NbHSZ5yHyQmZbKl8uHU9cPodPWa6qL1Go6qpJxpTsLJmLMBf3g29ptYaiKVJnbDzVVUsURdxXmEH3PQdkDQ2nNS1lgRzY6UTzqd/AHECIyYcJhmCw+UrM3uSowiLgzj1wRn8z5iauXG4WZWSKjeks=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772559894; c=relaxed/simple;
	bh=XWr1PyXJhJeDLzphtBu2SbPpHEnRYzIWGpostOL/QDo=;
	h=To:Subject:From:Message-Id:Date; b=naCo3IVKawU52UTWdSjXF+k+MZoeCTricggIPIB++ZO4t6lV9jOm5FIj1NfQXaWm/RE8P+ZckU+J8K8NeC4L4/YoOvCE+bnAvAo39SyZx5KxYx+FTWaIRl8NT6U7C5Q2hXhxHpUPbNW48Wnstp01PUQUu7kGmTN3D3Lb874IW4k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UlFDZCzJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UlFDZCzJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B933DC116C6
	for <ddprobe@lists.linux.dev>; Tue,  3 Mar 2026 17:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772559893;
	bh=XWr1PyXJhJeDLzphtBu2SbPpHEnRYzIWGpostOL/QDo=;
	h=To:Subject:From:Date:From;
	b=UlFDZCzJi/wVRyUq7nLHofHEU6aO2IkEQyNj0qJH2KRGPsGDXsv/Eh0OYKeMOb9SZ
	 1iycpBz/jLE9Zc2tsi7AqIhtH438qTeuPYG4gl41XC9XXevzTRZ6wkG8e1vYRCwA8f
	 L5kciDjWy5YqUF1BSNLUvz2+3GC48i8ggKEsDKUJs53EIDlqj3t427JWMKuR1QooK9
	 3dRzDYyTKxQVLmrg6pAE/54R0uwJr+CjCKls//JPZX6UkjZA89tIFnn92SpNh0jsLx
	 AmQ6uCF6+Z7c6TlDCItglSHZFF6aO4+00CbrGe9vfRMFIuVMK/rkW7I3W5Krg60zk+
	 RqyF3RBXc9vSg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 955DDEB362F
	for <ddprobe@lists.linux.dev>; Tue,  3 Mar 2026 17:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177255989359.25145.2920560280399209257.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 67b004c1b5388cc7ecbb7f7b43c6fd3834aac1d5927198ed28fc9e5d9d7cd0c0
Date: Tue, 03 Mar 2026 17:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772559893
